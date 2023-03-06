FROM   centos:7 
RUN yum update -y && yum install httpd -y
copy ./index.html /var/www/html
cmd ["usr/sbin/httpd","-DFOREGROUND"]

