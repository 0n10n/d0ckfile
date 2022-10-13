# CentOS 7
FROM     centos:centos7.4.1708
ARG TARGETPLATFORM
LABEL MAINTAINER 0n100 "onion@163.com"

#RUN rpm -ivh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum install -y \
    epel-release \
    openssl-devel \
    readline-devel\
    zlib-devel \
    wget telnet whois bind-utils net-tools \
    curl libcurl-devel libidn-devel \
    git \
    dtach \
    vim \
    hash-slinger \
    bzip2 \
    tar \
    ImageMagick \
    ImageMagick-devel \
    libffi-devel \
    mysql \
    mysql-devel \
    libxslt-devel \
    redis \
    python \
&&  yum groupinstall "Development Tools" -y \
&&  yum clean all

# pip install
RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py \
&&  python get-pip.py


ENV LANG=zh_CN.UTF-8
RUN localedef -f UTF-8 -i zh_CN zh_CN.UTF-8

RUN \cp -p /usr/share/zoneinfo/PRC /etc/localtime \
&&   echo 'ZONE="Asia/Shanghai"' > /etc/sysconfig/clock
