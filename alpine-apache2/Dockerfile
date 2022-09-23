FROM alpine:latest

ARG HTTPD_VERSION=2.4.54


ARG PREFIX=/opt/httpd
ARG MAKEFLAGS="-j4"

RUN apk add --update \
  apr \
  apr-dev \
  apr-util \
  apr-util-dev \
  ca-certificates \
  coreutils \
  curl \
  dpkg-dev dpkg \
  gcc \
  gnupg \
  libc-dev \
  # mod_md
  curl-dev \
  jansson-dev \
  # mod_proxy_html mod_xml2enc
  libxml2-dev \
  # mod_lua
  lua-dev \
  make \
  # mod_http2
  nghttp2-dev \
  # mod_session_crypto
  openssl \
  openssl-dev \
  pcre-dev \
  tar \
  # mod_deflate
  wget \
  zlib-dev

RUN export HTTPD_VERSION=`curl -s "http://archive.apache.org/dist/httpd/?C=M;O=D" | grep \>httpd\-*\.*\.*\.tar\.gz\< | head -n1 | cut -d\> -f 3 | cut -d\< -f 1` \
&& cd /tmp && \
    wget https://dlcdn.apache.org/httpd/${HTTPD_VERSION} && \
    tar zxf ${HTTPD_VERSION} && rm ${HTTPD_VERSION}

RUN cd /tmp/httpd-${HTTPD_VERSION:0:-7} && \
    ./configure \
    --prefix=${PREFIX} \
    --enable-mods-shared=reallyall \
		--enable-mpms-shared=all && \
    make && make install

# Cleanup
RUN rm -rf /var/cache/apk/* /tmp/*

COPY src/ /var/www/html/
COPY etc/httpd/httpd.conf /opt/httpd/conf/httpd.conf
COPY etc/httpd/sites/ /opt/httpd/sites/

EXPOSE 80

WORKDIR /var/www/html/

ENTRYPOINT [ "/opt/httpd/bin/httpd", "-D", "FOREGROUND" ]
