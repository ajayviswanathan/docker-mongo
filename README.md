# MongoDB on Docker

This repository contains a Docker file to build a Docker image with MongoDB. The base Docker image used is `ubuntu:14.04`

## Pull the image from Docker Repository
```bash
docker pull ajayv/mongo:3.2.8
```

## Building the image
```bash
docker build --rm -t ajayv/mongo:3.2.8 .
```

## Running the image
```bash
# Mapping container port 27017 to localhost:27017
# Mounting local data dir to /mnt/data
# Launching mongod
docker run -d -p 127.0.0.1:27017:27017 -v <absolute/path/to/local/data/dir>:/mnt/data -t ajayv/mongo:3.2.8 /opt/mongo/bin/mongod --dbpath /mnt/data
```

## Versions
```
MongoDB 3.2.8 on Ubuntu
```

## Testing
```bash
# Fetch container id
docker ps

# Attach to container
docker exec -it <container-id> /bin/bash
```