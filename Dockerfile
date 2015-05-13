FROM debian:jessie
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apt-get update
RUN apt-get install -y ruby2.1
