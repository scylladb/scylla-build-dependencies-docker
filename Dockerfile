FROM ubuntu:16.04
MAINTAINER Avi Kivity <avi@scylladb.com>
RUN echo deb [trusted=yes] http://apt.llvm.org/xenial/ llvm-toolchain-xenial main > /etc/apt/sources.list.d/clang.list
RUN echo deb [trusted=yes arch=amd64] http://downloads.scylladb.com/deb/3rdparty/xenial xenial scylladb/multiverse > /etc/apt/sources.list.d/scylla-3rdparty.list
RUN apt update
RUN apt -y install clang-5.0 libaio-dev ninja-build ragel libhwloc-dev libnuma-dev libpciaccess-dev libcrypto++-dev libboost-all-dev libxml2-dev xfslibs-dev libgnutls28-dev liblz4-dev libsctp-dev gcc make libprotobuf-dev protobuf-compiler python3 libunwind8-dev systemtap-sdt-dev libtool cmake g++ libyaml-cpp-dev libjsoncpp-dev libthrift-dev thrift-compiler antlr3-c++-dev antlr3 libsnappy-dev git python3-pyparsing
# workaround libstdc++ bug
RUN sed -i '/noexcept(noexcept(__lhs.swap(__rhs)))/ d; s/noexcept(swap(declval<_Tp&>(), declval<_Tp&>()))/false/' /usr/include/c++/5.4.0/experimental/optional
