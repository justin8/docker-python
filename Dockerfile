FROM alpine
MAINTAINER justin@dray.be

RUN apk update
RUN apk add openssl
RUN apk add python
RUN apk add py-pip
RUN apk add py-cffi py-cryptography
RUN pip install pyopenssl

RUN apk info python | grep -om1 '[0-9].[0-9.a-z-]*' > /version
