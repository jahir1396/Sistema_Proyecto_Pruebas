
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000
#Puerto disponible 8181

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY Sistema.Proyecto.sln ./
COPY Sistema.Proyecto.Core/*.csproj ./Sistema.Proyecto.Core/
COPY Sistema.Proyecto.EntityFramework/*.csproj ./Sistema.Proyecto.EntityFramework/
COPY Sistema.Proyecto.Web/*.csproj ./Sistema.Proyecto.Web/

RUN dotnet restore
COPY . .
WORKDIR /src/Sistema.Proyecto.Core
RUN dotnet build -c Release -o /app

WORKDIR /src/Sistema.Proyecto.EntityFramework
RUN dotnet build -c Release -o /app

WORKDIR /src/Sistema.Proyecto.Web
RUN dotnet build -c Release -o /app

FROM build AS publish
RUN dotnet publish -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "Sistema.Proyecto.Web.dll"]

