echo "Build and publish"
dotnet publish AspNetCoreWebApplication001 -c Release -o published --disable-build-servers

echo "Create docker image"
docker build -t aspnetcore001:v3 -f "Dockerfile-FromPublished" .