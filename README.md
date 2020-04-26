# code-server-dotnet

`code-server-dotnet` is [VS Code](https://github.com/Microsoft/vscode) running on a
remote server container with dotnet-sdk-3.1 preinstalled and omnisharp extension added, accessible through the browser.

This image is based on codercom/code-server image from project [cdr/code-server](https://github.com/cdr/code-server).



### Runnig the image

```bash
docker run -it -p 127.0.0.1:8080:8080 -v "$PWD:/home/coder/project" -u "$(id -u):$(id -g)" jcolombera/code-server-dotnet:latest
```

- **Code anywhere:** Code on your Chromebook, tablet, and laptop with a
  consistent dev environment. Develop on a Linux machine and pick up from any
  device with a web browser.
- **Server-powered:** Take advantage of large cloud servers to speed up tests,
  compilations, downloads, and more. Preserve battery life when you're on the go
  since all intensive computation runs on your server.

![Example gif](/doc/assets/code-server.gif)