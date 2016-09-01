# docker-build-strongswan-mysql
Docker Image to download strongSwan source, compile with MySQL support and package it as an RPM using fpm.

----------

## Usage
### 1. Using Docker volume to copy/retrieve generated RPM
``` 
    mkdir ~/RPMs 
    docker run -v ~/RPMs:/mnt  -e VER=5.4.0 -e ITER=2 chenthilvel/build-strongswan-mysql
```
### 2. Copy RPM post docker run
 + Run the container with the required version and iteration count
    
``` 
    docker run -e VER=5.5.0 -e ITER=2 --name sswan_rpm chenthilvel/build-strongswan-mysql
```
 + Post docker run, Copy RPM to local directory
``` 
    docker cp sswan_rpm:/root/strongswan-5.5.0/strongswan-mysql-5.5.0-2.x86_64.rpm .
```
