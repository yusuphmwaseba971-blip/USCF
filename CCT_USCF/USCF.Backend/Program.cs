using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.Options;
using USCF.Backend.Services;

var builder = WebApplication.CreateBuilder(args);

builder.Services.Configure<MediaOptions>(builder.Configuration.GetSection(MediaOptions.SectionName));
builder.Services.Configure<UserRetentionOptions>(builder.Configuration.GetSection(UserRetentionOptions.SectionName));

builder.Services.AddDbContext<USCFDbContext>(options =>
 options.UseNpgsql(
    builder.Configuration.GetConnectionString("DefaultConnection"),
    npgsqlOptions => npgsqlOptions.EnableRetryOnFailure()));
// register services
builder.Services.AddSingleton<USCF.Backend.Services.IPasswordHasher, USCF.Backend.Services.PasswordHasher>();
builder.Services.AddScoped<USCF.Backend.Services.IUserService, USCF.Backend.Services.UserService>();
builder.Services.AddScoped<LeaderMediaPolicyService>();
builder.Services.AddScoped<MediaStorageService>();
builder.Services.AddScoped<UserRetentionCleanupService>();
builder.Services.AddScoped<MediaCleanupService>();
builder.Services.AddHostedService<MediaCleanupHostedService>();
builder.Services.AddHostedService<UserRetentionHostedService>();

// Authentication (JWT)
var jwtKey = builder.Configuration["Authentication:JwtSigningKey"];
if (string.IsNullOrEmpty(jwtKey))
{
    if (builder.Environment.IsDevelopment())
    {
        // Allow a development fallback key so local dev users don't need env setup.
        builder.Configuration["Authentication:JwtSigningKey"] = "replace_this_dev_key_change_in_dev_only";
        jwtKey = builder.Configuration["Authentication:JwtSigningKey"];
        Console.WriteLine("[Startup] No JwtSigningKey configured; using development fallback key.");
    }
    else
    {
        // In production, fail fast and provide a clear log message.
        Console.WriteLine("[Startup][ERROR] Authentication:JwtSigningKey is not configured. Set the Authentication__JwtSigningKey environment variable in production.");
        throw new InvalidOperationException("Missing JWT signing key. Set Authentication__JwtSigningKey environment variable.");
    }
}

builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = Microsoft.AspNetCore.Authentication.JwtBearer.JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = Microsoft.AspNetCore.Authentication.JwtBearer.JwtBearerDefaults.AuthenticationScheme;
}).AddJwtBearer(options =>
{
    options.RequireHttpsMetadata = false;
    options.SaveToken = true;
    options.TokenValidationParameters = new Microsoft.IdentityModel.Tokens.TokenValidationParameters
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateLifetime = true,
        ValidateIssuerSigningKey = true,
        ValidIssuer = builder.Configuration["Authentication:Issuer"],
        ValidAudience = builder.Configuration["Authentication:Audience"],
        IssuerSigningKey = new Microsoft.IdentityModel.Tokens.SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(jwtKey))
    };

    options.Events = new Microsoft.AspNetCore.Authentication.JwtBearer.JwtBearerEvents
    {
        OnAuthenticationFailed = context =>
        {
            Console.WriteLine($"[JWT] Authentication failed: {context.Exception.GetType().Name}: {context.Exception.Message}");
            return Task.CompletedTask;
        },
        OnTokenValidated = context =>
        {
            try
            {
                var sub = context.Principal?.FindFirst(System.Security.Claims.ClaimTypes.NameIdentifier)?.Value;
                Console.WriteLine($"[JWT] Token validated for user id: {sub}");
            }
            catch { }
            return Task.CompletedTask;
        }
    };
});

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var developmentCorsOrigins = builder.Configuration
    .GetSection("Api:DevelopmentCorsOrigins")
    .Get<string[]>() ?? ["https://localhost"];

builder.Services.AddCors(options =>
{
    options.AddPolicy("DevelopmentCors", policy =>
    {
        policy.WithOrigins(developmentCorsOrigins)
            .AllowAnyHeader()
            .AllowAnyMethod();
    });
});

var app = builder.Build();

using (var scope = app.Services.CreateScope())
{
    var db = scope.ServiceProvider.GetRequiredService<USCF.Backend.Data.USCFDbContext>();
    try
    {
        db.Database.Migrate();
        Console.WriteLine("[Startup] Database migrations applied successfully.");
    }
    catch (Exception ex)
    {
        Console.WriteLine($"[Startup][ERROR] Database migration failed: {ex.GetType().Name}: {ex.Message}");
        Console.WriteLine(ex.StackTrace);
        // rethrow so the host fails fast with a clear log message
        throw;
    }
}

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseRouting();
app.UseCors("DevelopmentCors");
app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();

app.Run();

