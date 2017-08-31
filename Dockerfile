FROM centos:7
MAINTAINER vasudevn "npadma09@gmail.com"
RUN yum install httpd -y
RUN apachectl
RUN echo 'Our first Docker image for Centos7 webpage' > /var/www/html/index.html
EXPOSE 80
# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh
CMD ["/run-httpd.sh"]
