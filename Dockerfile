FROM fedora:34
MAINTAINER Avi Kivity <avi@scylladb.com>
RUN \
  dnf --enablerepo updates-testing -y install gcc-c++ clang \
  && dnf clean all
