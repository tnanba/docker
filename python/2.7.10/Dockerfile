FROM centos:7
MAINTAINER NANBA Toshiaki

RUN yum -y install gcc gcc-c++ make openssl-devel tar wget \
  && cd /tmp \
  && wget https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tgz \
  && tar xzf Python-2.7.10.tgz \
  && cd Python-2.7.10/ \
  && ./configure --prefix=/usr/local --with-ensurepip=install \
  && make \
  && make install \
  && yum -y clean all \
  && rm -rf /tmp/Python-2.7.10/ Python-2.7.10.tgz
