# OpenSSH [![Build Status](https://github.com/3d-pro/openssh/actions/workflows/docker-build.yaml/badge.svg)](https://github.com/3d-pro/openssh/actions)

## Required Docker Images
- base-debian

## Build
```
  docker build -t openssh:latest .
```

## Run
```
  docker run -d -p 2000:22 -h openssh --name openssh openssh:latest
```
