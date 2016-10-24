# OpenSSH Image of Debian Sid [![Build Status](https://travis-ci.org/3d-pro/openssh.svg?branch=master)](https://travis-ci.org/3d-pro/openssh)

## Required Docker Images
- apt-cacher-ng
- base

## Build
```
  docker build -t openssh:latest .
```

## Run
```
  docker run -d -p 2000:22 -h openssh --name openssh openssh:latest
```
