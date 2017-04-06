FROM tnanba/centos6-devtools
MAINTAINER NANBA Toshiaki

RUN yum -y update \
  && yum -y install sudo rpm-build rpmdevtools \
  && yum -y clean all \
  && groupadd mockbuild \
  && useradd -g mockbuild mockbuild
COPY sudoers.d/mockbuild /etc/sudoers.d/

USER mockbuild
WORKDIR /home/mockbuild
RUN rpmdev-setuptree
