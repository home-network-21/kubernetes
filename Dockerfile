FROM centos:7
MAINTAINER vikashashoke@gmail.com

RUN sed -i 's|^mirrorlist=|#mirrorlist=|' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's|^#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|' /etc/yum.repos.d/CentOS-Base.repo

RUN yum install -y httpd zip unzip
ADD photogenic.zip /var/www/html/
WORKDIR /var/www/html/

