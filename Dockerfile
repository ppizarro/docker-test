FROM ubuntu:14.04

MAINTAINER Paulo Pizarro <paulo.pizarro@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update -qq
RUN apt-get upgrade -qqy

RUN apt-get install -qqy software-properties-common python-software-properties
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update -qq
RUN apt-get install -qqy nodejs

# Bundle app source
ADD . /src

# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080

CMD ["node", "/src/index.js"]
