FROM alpine
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN apk update && \
    apk add ruby=2.1.5-r1
