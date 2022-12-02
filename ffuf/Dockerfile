FROM golang:alpine3.16 as builder

RUN export GOPROXY=https://proxy.golang.com.cn,direct \
&& GO111MODULE=on go install github.com/ffuf/ffuf@latest

FROM alpine:3.16
RUN apk --no-cache add bash git openssh-client ca-certificates bind-tools 

COPY --from=builder /go/bin/ffuf  /usr/local/bin/ffuf

ENTRYPOINT ["ffuf"]
CMD ["-h"]