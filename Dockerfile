FROM ubuntu:14.04

MAINTAINER Eranga Bandara(erangaeb@gmail.com)

# Import MongoDB public GPG key AND create a MongoDB list file
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list

# Update apt-get sources AND install MongoDB
RUN apt-get update 
RUN apt-get install -y mongodb-org

# Volume mapping[data directory]
RUN mkdir -p /data/db
VOLUME ["/data/db"]

EXPOSE 27017

ENTRYPOINT ["/usr/bin/mongod"]
