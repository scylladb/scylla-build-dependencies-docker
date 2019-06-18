FROM fedora:30
MAINTAINER Avi Kivity <avi@scylladb.com>
RUN \
  dnf -y install gcc-c++ \
  && dnf clean all
