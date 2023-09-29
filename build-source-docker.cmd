echo "Cleanup..."
rmdir "AspNetCoreWebApplication001\bin" /S /Q
rmdir "AspNetCoreWebApplication001\obj" /S /Q

echo "Build and Create docker image..."
docker build -t aspnetcore001:v3 -f "Dockerfile-BuildSource" .