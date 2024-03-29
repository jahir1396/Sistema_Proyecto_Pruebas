using AutoMapper;
using Microsoft.EntityFrameworkCore;
using Sistema.Proyecto.EntityFramework.SistemaDbContext;
using Sistema.Proyecto.Web;
using Sistema.Proyecto.Web.Middleware;
using System.ComponentModel.DataAnnotations;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<SistemaDbContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("SistemaConexion")));
builder.Services.AddHttpContextAccessor();

var mapperConfig = new MapperConfiguration(m => m.AddProfile(new DtoMappings()));
IMapper mapper = mapperConfig.CreateMapper();
builder.Services.AddSingleton(mapper);
IoC.AddDependency(builder.Services);

var app = builder.Build();
app.UseCors();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
