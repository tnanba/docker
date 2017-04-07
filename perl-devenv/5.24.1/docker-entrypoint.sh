#!/bin/sh
USER=perl
GROUP=perl
SRC_DIR=/home/perl/src

if [ -d ${SRC_DIR} ]; then

  # Adjust perl@container's uid/gid to host directory's id.
  SRC_DIR_UID=$(stat -c %u ${SRC_DIR})
  SRC_DIR_GID=$(stat -c %g ${SRC_DIR})

  if [ ${SRC_DIR_UID} -ne 0 -a ${SRC_DIR_GID} -ne 0 ]; then
    usermod -u ${SRC_DIR_UID} ${USER}
    groupmod -g ${SRC_DIR_GID} ${GROUP}
  fi
fi

exec gosu ${USER} "$@"
