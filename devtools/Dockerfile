FROM centos:7
MAINTAINER NANBA Toshiaki

RUN yum -y install epel-release \
  && yum -y update \
  && yum -y group install "Development Tools" \
  && yum -y clean all
