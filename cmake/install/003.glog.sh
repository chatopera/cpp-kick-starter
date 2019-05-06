#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
ROOR_INSTALL_DIR=$baseDir/../..
THIRD_PARTY=$ROOR_INSTALL_DIR/thirdparty
BUILD=build-Release

# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
if [ -d $THIRD_PARTY/glog ]; then
    echo "Install glog ..."
    cd $THIRD_PARTY/glog
    if [ -d $BUILD ]; then
        rm -rf $BUILD
    fi
    mkdir $BUILD && cd $BUILD
    cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=$ROOR_INSTALL_DIR ..
    make && make install
    echo "Done with Glog Installation."
else
    echo "Can not find glog."
    exit 1
fi