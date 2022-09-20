FROM golang:alpine3.16 as builder

RUN export GOPROXY=https://proxy.golang.com.cn,direct \
&& GO111MODULE=on go install github.com/jaeles-project/gospider@latest

FROM alpine:3.16
RUN apk --no-cache add bash git openssh-client ca-certificates bind-tools 

COPY --from=builder /go/bin/gospider  /usr/local/bin/gospider

ENTRYPOINT ["gospider"]
CMD ["-h"]