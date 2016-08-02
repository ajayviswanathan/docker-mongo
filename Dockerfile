# Mongo Dockerfile
FROM debian:wheezy
MAINTAINER Ajay Viswanathan <ajay@sigmoidanalytics.com>

# Install mongo
RUN apt-get update \
 && apt-get install -y --no-install-recommends curl \
 && curl -k https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-debian71-3.2.8.tgz | tar -xz -C /root \
 && apt-get remove -y curl \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Link mongo
RUN ln -s /root/mongodb-linux-x86_64-debian71-3.2.8 /opt/mongo

# Open ports
EXPOSE 27017

# Define volume
VOLUME /mnt/mongo/data

# Launch server
WORKDIR /opt/mongo
CMD ["bin/mongod", "--help"]