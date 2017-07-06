FROM centos:7

RUN yum -y update \
 && yum -y install python-setuptools python-imaging google-noto-sans-japanese-fonts \
 && easy_install blockdiag \
 && yum -y clean all
COPY blockdiagrc /root/.blockdiagrc
