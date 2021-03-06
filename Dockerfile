# To build:
# $ docker run --rm -v $(pwd):/go/src/github.com/micahhausler/es-proxy -w /go/src/github.com/micahhausler/es-proxy golang:1.7  go build -v -a -tags netgo -installsuffix netgo -ldflags '-w'
# $ docker build -t micahhausler/es-proxy .
#
# To run:
# $ docker run micahhausler/es-proxy

FROM alpine

RUN apk -U add ca-certificates

MAINTAINER Micah Hausler, <hausler.m@gmail.com>

COPY es-proxy /bin/es-proxy
RUN chmod 755 /bin/es-proxy

ENTRYPOINT ["/bin/es-proxy"]
