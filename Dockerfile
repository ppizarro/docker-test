# This is a comment
FROM ubuntu:14.04
MAINTAINER Paulo Pizarro <paulo.pizarro@gmail.com>
RUN apt-get -qq update
RUN apt-get -qqy install ruby ruby-dev
RUN gem install sinatra
RUN apt-get install vim
