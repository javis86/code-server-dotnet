FROM codercom/code-server:latest

USER root
RUN apt-get update && apt-get -y install wget gpg

## dotnet dependencies
RUN wget -O- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg && \
        mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/ && \
        wget https://packages.microsoft.com/config/debian/10/prod.list && \
        mv prod.list /etc/apt/sources.list.d/microsoft-prod.list && \
        chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg && \
        chown root:root /etc/apt/sources.list.d/microsoft-prod.list

## dotnet sdk 3.1
RUN apt-get update && apt-get -y install apt-transport-https && \
    apt-get update && apt-get -y install dotnet-sdk-3.1

## install omnisharp for code-server c# support
USER coder
RUN code-server --install-extension ms-dotnettools.csharp
