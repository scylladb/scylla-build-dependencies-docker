FROM fedora:32
MAINTAINER Avi Kivity <avi@scylladb.com>
RUN \
  dnf --enablerepo updates-testing -y install gcc-c++ \
  && dnf clean all
