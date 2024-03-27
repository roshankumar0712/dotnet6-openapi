# Use the appropriate SDK image for building the .NET application
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the .NET application project files to the working directory
COPY dotnet6-openapi/*.csproj ./

# Restore dependencies
RUN dotnet restore

# Copy the remaining source code to the working directory
COPY dotnet6-openapi/ ./

# Build the application
RUN dotnet build

# Expose the port(s) your application listens on
EXPOSE 5000

# Define the entry point for running the application
ENTRYPOINT ["dotnet", "run"]

