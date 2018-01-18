FROM fedora:24
MAINTAINER Avi Kivity <avi@scylladb.com>
ADD copr_avik_gcc.repo /etc/yum.repos.d/
RUN dnf -y update
RUN dnf -y install gcc-c++ libaio-devel ninja-build ragel hwloc-devel numactl-devel libpciaccess-devel cryptopp-devel xen-devel boost-devel libxml2-devel xfsprogs-devel yaml-cpp-devel lz4-devel zlib-devel snappy-devel jsoncpp-devel thrift-devel antlr3-tool antlr3-C++-devel libasan libubsan python3 git gnutls-devel sudo python3-pyparsing lksctp-tools-devel protobuf-compiler libunwind-devel protobuf-devel systemtap-sdt-devel gdb
RUN dnf clean all
