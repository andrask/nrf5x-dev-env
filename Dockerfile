#Dockerfile

FROM ubuntu:16.04

COPY files/* /install/

RUN apt-get update && apt-get install -y build-essential checkinstall
