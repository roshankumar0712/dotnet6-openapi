
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /app
COPY dotnet6-openapi/api/ ./
RUN dotnet restore api.csproj
RUN dotnet build -c Release -o /app/build
EXPOSE 5000
ENTRYPOINT ["dotnet", "run", "--project", "api.csproj"]
