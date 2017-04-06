FROM centos:6
MAINTAINER NANBA Toshiaki

RUN yum -y install epel-release \
  && yum -y update \
  && yum -y groupinstall "Development Tools" \
  && yum -y clean all
