FROM ubuntu:18.04

RUN apt-get update &&\
    apt-get install -y \
    vim less \
    net-tools iputils-ping curl netcat dnsutils \
    nfs-common mysql-client redis-tools && \
    rm -rf /var/lib/apt/lists/*

# 切换aliyun mirror
RUN sed -i "s/archive.ubuntu./mirrors.aliyun./g" /etc/apt/sources.list && apt-get update

ADD entrypoint /usr/local/bin

ENTRYPOINT entrypoint

