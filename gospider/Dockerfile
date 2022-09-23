# syntax=docker/dockerfile:1.3
FROM golang:alpine3.16 as builder

RUN apk git \
&& export GOPROXY=https://proxy.golang.com.cn,direct \
&& GO111MODULE=on go install git@github.com:/jaeles-project/gospider@latest

FROM alpine:3.16
RUN apk --no-cache add bash git openssh-client ca-certificates bind-tools

COPY --from=builder /go/bin/gospider  /usr/local/bin/gospider

ENTRYPOINT ["gospider"]
#ENTRYPOINT ["sh"]
CMD ["-h"]

