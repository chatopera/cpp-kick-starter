#! /bin/bash 
###########################################
# Install pthread as a lib
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
ROOR_INSTALL_DIR=$baseDir/../..
THIRD_PARTY=$ROOR_INSTALL_DIR/thirdparty
BUILD=build-Release
SUDO_CMD=""

# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
echo "Install pthread ..."

which thrift
if [ $? -eq 0 ]; then
    echo "Resolve " `thrift --version`
    exit 0
fi

which sudo
if [ $? -eq 0 ]; then
    SUDO_CMD=sudo
fi

set -x
$SUDO_CMD apt-get install -y \
    libboost-dev \
    libboost-test-dev \
    libboost-program-options-dev \
    libevent-dev \
    libtool \
    flex \
    bison \
    pkg-config \
    g++ \
    libssl-dev

cd /opt \
    && $SUDO_CMD wget https://www.apache.org/dist/thrift/0.10.0/thrift-0.10.0.tar.gz \
    && $SUDO_CMD tar -xvf thrift-0.10.0.tar.gz \
    && cd thrift-0.10.0 \
    && $SUDO_CMD ./configure --with-lua=no \
    && $SUDO_CMD make && $SUDO_CMD make install \
    && $SUDO_CMD echo "export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:/usr/local/lib/" >> /etc/environment \
    && cd .. && $SUDO_CMD rm -rf thrift* 

which thrift
if [ ! $? -eq 0 ]; then
    echo "Install thrift failed"
    exit 1
fi