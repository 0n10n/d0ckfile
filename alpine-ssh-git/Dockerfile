FROM alpine:latest

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk add --update \
  ca-certificates \
  coreutils \
  curl \
  git \
  openssl \
  openssh \
  openssh-client-common

RUN mkdir /root/.ssh/
ADD id_rsa  /root/.ssh/id_rsa

RUN chmod 0600 /root/.ssh/id_rsa \
&& touch /root/.ssh/known_hosts \
&& ssh-keyscan github.com >> /root/.ssh/known_hosts

RUN git clone git@github.com:/0n10n/d0ckfile
