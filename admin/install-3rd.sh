#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
THIRD_PARTY=$baseDir/../thirdparty
ROOR_INSTALL_DIR=$baseDir/..
BUILD=build-Release

# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
echo "Install 3rd party assets ..."

cd $ROOR_INSTALL_DIR/cmake/install

for x in `find . -name "*.sh"|sort`; do
    echo "[install] run" $x " ..."
    $x
    if [ ! $? -eq 0 ]; then
        echo "Failed result with" $x 
        exit 1
    fi
done

