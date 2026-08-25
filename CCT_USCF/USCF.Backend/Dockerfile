FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY ["CCT_USCF/USCF.Backend/USCF.Backend.csproj", "CCT_USCF/USCF.Backend/"]
RUN dotnet restore "CCT_USCF/USCF.Backend/USCF.Backend.csproj"

COPY . .

WORKDIR /src/CCT_USCF/USCF.Backend
RUN dotnet publish "USCF.Backend.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app

COPY --from=build /app/publish .

ENV ASPNETCORE_URLS=http://+:10000
EXPOSE 10000

ENTRYPOINT ["dotnet", "USCF.Backend.dll"]
