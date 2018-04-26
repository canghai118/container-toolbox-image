FROM ubuntu:16.04

ADD entrypoint /usr/local/bin

ENTRYPOINT entrypoint

