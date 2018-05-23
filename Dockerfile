FROM archlinux/base
MAINTAINER James Shepherdson version: 1.0

COPY bootstrap.sh /tmp/bootstrap.sh
RUN /bin/sh /tmp/bootstrap.sh
