FROM alpine:latest
MAINTAINER justin@dray.be

RUN apk update
RUN apk add openssl
RUN apk add python
RUN apk add py-pip
