FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

# When the Docker build context is the project folder (CCT_USCF/USCF.Backend), copy the csproj and restore
COPY ["USCF.Backend.csproj", "./"]
RUN dotnet restore "./USCF.Backend.csproj"

# Copy the rest of the project and publish
COPY . .
RUN dotnet publish "USCF.Backend.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app

COPY --from=build /app/publish .

# Use the PORT environment variable provided by Render
ENV ASPNETCORE_URLS=http://+:${PORT}
# EXPOSE is informational; Render will use the PORT environment variable to route traffic
EXPOSE 10000

ENTRYPOINT ["dotnet", "USCF.Backend.dll"]
