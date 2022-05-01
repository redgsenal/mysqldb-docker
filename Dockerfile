FROM ubuntu:20.04

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update &&\
    apt-get install -y nano &&\
    apt-get install -y vim

RUN rm -rf /var/lib/apt/lists/* &&\
    apt clean
