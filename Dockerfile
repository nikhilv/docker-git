# Container with git 1.8 client installed
#
# VERSION       1
FROM ubuntu
MAINTAINER Nikhil Vaze
RUN apt-get update -y
RUN apt-get install wget make -y
RUN apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev -y
RUN apt-get install perl -y 

RUN wget --no-check-certificate https://git-core.googlecode.com/files/git-1.8.0.tar.gz
RUN tar -zxf git-1.8.0.tar.gz 
RUN make -C git-1.8.0 prefix=/usr/local all
RUN make -C git-1.8.0 prefix=/usr/local install
