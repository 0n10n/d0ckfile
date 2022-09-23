

### 参考出处（万分感谢！）

http://www.inanzzz.com/index.php/post/su76/creating-apache-mysql-and-php-fpm-containers-for-a-web-application-with-docker-compose

原版因为时间有点久远，如果一点都不修改，运行会有问题。需要在httpd.conf里增加一句：

```ini
LoadModule mpm_event_module modules/mod_mpm_event.so
```



