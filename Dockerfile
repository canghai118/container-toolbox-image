FROM ubuntu:16.04

RUN apt-get update &&\
		apt-get install -y \
		vim less \
		net-tools iputils-ping curl netcat \
		nfs-common


ADD entrypoint /usr/local/bin

ENTRYPOINT entrypoint

