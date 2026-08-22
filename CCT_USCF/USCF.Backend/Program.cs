using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<USCFDbContext>(options =>
    options.UseSqlServer(
        builder.Configuration.GetConnectionString("DefaultConnection"),
        sqlServerOptions => sqlServerOptions.EnableRetryOnFailure()));

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
app.UseAuthorization();

app.MapControllers();

app.Run();

