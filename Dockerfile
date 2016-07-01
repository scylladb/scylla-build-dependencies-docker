FROM fedora:24
MAINTAINER Avi Kivity <avi@scylladb.com>
RUN dnf -y update
RUN dnf -y install gcc-c++ libaio-devel ninja-build ragel hwloc-devel numactl-devel libpciaccess-devel cryptopp-devel xen-devel boost-devel libxml2-devel xfsprogs-devel yaml-cpp-devel lz4-devel zlib-devel snappy-devel jsoncpp-devel thrift-devel antlr3-tool antlr3-C++-devel libasan libubsan python3 git gnutls-devel sudo python3-pyparsing lksctp-tools-devel
RUN dnf clean all
RUN ln -s ninja-build /usr/bin/ninja
