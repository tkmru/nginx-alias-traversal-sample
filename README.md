# Nginx alias traversal sample app

## How to use
Dockerfile exists. Sample app work on 8080 port.

```
$ docker build -t nginx-traversal .
$ docker run -d -p 8080:8080 nginx-traversal:latest
```
