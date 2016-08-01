# Mongo Dockerfile
FROM ubuntu:14.04
MAINTAINER Ajay Viswanathan <ajay@sigmoidanalytics.com>

# Install dependencies
RUN apt-get update
RUN apt-get install -y curl

# Install mongo
RUN curl https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1404-3.2.8.tgz | tar -xz -C /root
RUN ln -s /root/mongodb-linux-x86_64-ubuntu1404-3.2.8 /opt/mongo