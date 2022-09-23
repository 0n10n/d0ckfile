FROM httpd:2.4
 
ARG WEB_USER
ARG WEB_GROUP
ARG APACHE_ROOT_DIR
 
COPY httpd-vhosts.conf ${APACHE_ROOT_DIR}/conf/extra/httpd-vhosts.conf
COPY httpd.conf ${APACHE_ROOT_DIR}/conf/httpd.conf
 
RUN chgrp -R ${WEB_GROUP} ${APACHE_ROOT_DIR}/conf/httpd.conf \
 && chgrp -R ${WEB_GROUP} ${APACHE_ROOT_DIR}/conf/extra/httpd-vhosts.conf
 
RUN usermod -u 1000 ${WEB_USER} \
 && groupmod -g 1000 ${WEB_GROUP} \
 && chgrp -R ${WEB_GROUP} ${APACHE_ROOT_DIR}
EXPOSE 80
ADD i.php ${APACHE_ROOT_DIR}/htdocs/
#RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
#CMD ["apache2ctl", "-D", "FOREGROUND"]
