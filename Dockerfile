# Étape 1 : build
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src
COPY . .
RUN dotnet restore ModernSoftwareApp/ModernSoftwareApp.csproj
RUN dotnet publish ModernSoftwareApp/ModernSoftwareApp.csproj -c Release -o /app/publish

# Étape 2 : runtime
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "ModernSoftwareApp.dll"]
