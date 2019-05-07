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
if [ -d $THIRD_PARTY/googletest ]; then
    echo "Install googletest ..."
    cd $THIRD_PARTY/googletest
    if [ -d $BUILD ]; then
        rm -rf $BUILD
    fi
    mkdir $BUILD && cd $BUILD
    cmake -G "Unix Makefiles" \
        -DCMAKE_INSTALL_PREFIX=$ROOR_INSTALL_DIR \
        -DCMAKE_CXX_STANDARD=11 ..
    make && make install
    echo "Done with Google Test Installation."
else
    echo "Can not find googletest."
    exit 1
fi