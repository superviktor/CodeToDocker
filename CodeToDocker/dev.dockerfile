FROM    mcr.microsoft.com/dotnet/sdk
LABEL   author="Viktor"
ENV     ASPNETCORE_URLS=http://*:5000
ENV     DOTNET_USE_POLLING_FILE_WATHCER=1
ENV     ASPNETCORE_ENVIRONMENT=development
WORKDIR /app
ENTRYPOINT ["/bin/bash", "-c", "dotnet restore && dotnet watch run"]
#Build image
#docker build -f dev.dockerfile -t weather-api .
#Run image
#docker run -p 8080:5000 -v ${PWD}:/app weather-api