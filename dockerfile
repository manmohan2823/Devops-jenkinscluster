FROM centos:7

RUN yum install sudo -y
RUN yum install  httpd -y
RUN yum install php -y
RUN yum install net-tools -y
RUN yum install /sbin/service -y
COPY index.php /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash


EXPOSE 80
