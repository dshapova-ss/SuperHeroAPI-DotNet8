# Stage 1: Build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy the project file(s) and restore dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the rest of the application files
COPY . ./

# Build the application
RUN dotnet publish -c Release -o /out

# Stage 2: Runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

# Copy the output from the build stage
COPY --from=build /out .

# Expose the port that the application will run on
EXPOSE 0.0.0.0:8080

# Set the entry point for the container
ENTRYPOINT ["Update-Database"]
CMD ["dotnet", "SuperHeroAPI-DotNet8.dll"]
