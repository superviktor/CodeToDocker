#To run source code in container using volume using dotnet sdk
docker run -it -p 8080:5000 -v ${PWD}:/app -w "/app" mcr.microsoft.com/dotnet/sdk /bin/bash
dotnet watch run
#You can do the same using dev.dockerfile. See instructuction inside
#To generate production docker file 
Ctrl+Shift+P 
.net generate assets for build and debug
docker add docker file to workspave
and follow instructions
