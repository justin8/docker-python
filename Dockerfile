FROM alpine:latest
MAINTAINER justin@dray.be

RUN apk update
RUN apk add openssl
RUN apk add python
RUN apk add py-pip

RUN apk info python | grep -om1 '2.[0-9.a-z-]*' > /version
