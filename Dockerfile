FROM centos:5

ENV PACKAGES="gcc gcc-c++ glibc-devel ncurses-devel make rpm-build wget which"
RUN yum install -y -q $PACKAGES && yum clean all \
  && install -d /root/rpmbuild/SPECS /root/rpmbuild/SOURCES

#ENV PACKAGES="yum-utils"
#RUN yum install -y -q $PACKAGES && yum clean all
#RUN yumdownloader --source php

#COPY srpm/php-5.1.6-45.el5_11.src.rpm .
COPY srpm/download.sh
RUN sh download.sh

RUN rpm -ivh php-5.1.6-45.el5_11.src.rpm
RUN sed -i -e "s@--with-system-tzdata@--with-system-tzdata --enable-zend-multibyte@g" "/usr/src/redhat/SPECS/php.spec"

ENV PACKAGES="aspell-devel bzip2-devel bzip2-libs-devel curl-devel cyrus-sasl-devel db4-devel e2fsprogs-libs-devel expat-devel file-devel freetype-devel gd-devel gmp-devel httpd-devel krb5-devel krb5-libs-devel libc-client-devel libidn-devel libjpeg-devel libpng-devel libtool libxml2-devel libxslt-devel mysql-devel net-snmp-devel openldap-devel openssl-devel pam-devel pcre-devel postgresql-devel smtpdaemon sqlite-devel unixODBC-devel zlib-devel"
ENV PACKAGES="$PACKAGES bison flex"
RUN yum install -y -q $PACKAGES && yum clean all

RUN rpmbuild -ba "/usr/src/redhat/SPECS/php.spec"
