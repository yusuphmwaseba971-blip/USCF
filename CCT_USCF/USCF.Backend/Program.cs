using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<USCFDbContext>(options =>
    options.UseSqlServer(
        builder.Configuration.GetConnectionString("DefaultConnection"),
        sqlServerOptions => sqlServerOptions.EnableRetryOnFailure()));

// register services
builder.Services.AddSingleton<USCF.Backend.Services.IPasswordHasher, USCF.Backend.Services.PasswordHasher>();
builder.Services.AddScoped<USCF.Backend.Services.IUserService, USCF.Backend.Services.UserService>();

// Authentication (JWT)
var jwtKey = builder.Configuration["Authentication:JwtSigningKey"];
if (string.IsNullOrEmpty(jwtKey))
{
    // For development only - require the env or appsettings to be configured in production
    builder.Configuration["Authentication:JwtSigningKey"] = "replace_this_dev_key_change_in_prod_please";
    jwtKey = builder.Configuration["Authentication:JwtSigningKey"];
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

