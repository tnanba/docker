FROM centos:7

RUN yum -y update \
 && yum -y install python-setuptools python-imaging google-noto-sans-japanese-fonts \
 && yum -y reinstall glibc-common \
 && localedef -f UTF-8 -i ja_JP ja_JP.UTF-8 \
 && easy_install blockdiag \
 && yum -y clean all

COPY blockdiagrc /root/.blockdiagrc
ENV LANG ja_JP.UTF-8
