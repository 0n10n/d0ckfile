# mitmproxy 练手

## 1，Docker 版安装使用

不知道咋搞的，真实OS下装 mitmproxy 总是各种报错。算了，放弃了。只好搞个Docker版玩一下。docker命令行版虽然也可以，但命令行参数每次都记不住啊。还是docker-compose适合俺。

配置文件：`mitmproxy/config.yaml`，内容：

```
confdir: /home/mitmproxy
console_eventlog_verbosity: info
console_mouse: false
console_palette: dark
listen_port: 8080
block_global: false
flow_detail: 3
ssl_insecure: true
termlog_verbosity: info
anticache: true
view_filter: "~dst baidu.com|bing.com"
```

启动：
```bash
$ docker-compose up 
```

## 2，curl 使用

无需用户名/密码的情况：

````
curl --proxy "http://mitmproxy_ip:8080" "http://target_server.org/"
curl --proxy "mitmproxy_ip:8080" "http://target_server.org/"
````

需要用户名/密码的情况：

```
curl --proxy "http://user:pwd@mitmproxy_ip:8080" "http://target_server.org/"
curl --proxy "user:pwd@mitmproxy_ip:8080" "http://target_server.org/"
```

对不能在命令行参数里指定代理的程序，可以修改系统变量`http_proxy`和`https_proxy`（永久有效）

```
export http_proxy="http://user:pwd@mitmproxy_ip:8080"
export https_proxy="http://user:pwd@mitmproxy_ip:8080"
```

方便临时使用的做法：
```
alias setproxy="export http_proxy=socks5://127.0.0.1:1024; export https_proxy=$http_proxy; echo 'HTTP/S Proxy on';"
alias unsetproxy="unset http_proxy; unset https_proxy; echo 'HTTP/ Proxy off';"
```



## 3，文档&参考

Documentation

- https://docs.mitmproxy.org/

Official Addons
- https://docs.mitmproxy.org/stable/addons-examples/

MITMProxy Options:
- https://docs.mitmproxy.org/stable/concepts-options/
