FROM     centos:6.10
ARG TARGETPLATFORM 
LABEL MAINTAINER 0n100 "onion@163.com"

ADD RPM-GPG-KEY-EPEL-6  /etc/pki/rpm-gpg/
ADD yum.repos.d/*  /etc/yum.repos.d/

RUN rpm --import  /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6 \
&& rpm -qa gpg-pubkey*  \
&& rpm -ivh http://archives.fedoraproject.org/pub/archive/epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum install -y openssl-devel \
    readline-devel\
    zlib-devel \
    wget telnet whois bind-utils net-tools\
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
&&  yum groupinstall "Development Tools" -y \
&& yum clean all 


RUN wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz \
&& tar xzvf Python-2.7.18.tgz \
&& cd Python-2.7.18 \
&& ./configure --enable-optimizations \
&& make install \
&& cd .. && rm Python-2.7.18.tgz \
&& wget https://bootstrap.pypa.io/pip/2.7/get-pip.py \
&& python get-pip.py \
&& pip install --upgrade pip


ENV LANG=zh_CN.UTF-8
RUN localedef -f UTF-8 -i zh_CN zh_CN.UTF-8

RUN cp -p /usr/share/zoneinfo/PRC /etc/localtime \
&&  echo 'ZONE="Asia/Shanghai"' > /etc/sysconfig/clock	