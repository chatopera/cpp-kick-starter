#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
imagename=chatopera/cmake
imageversion=3.14.3
imageid=$imagename:$imageversion

# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir/..
set -x
docker run --rm \
    -d \
    -v $PWD/admin:/workspace/admin \
    -v $PWD/bin:/workspace/bin \
    -v $PWD/docs:/workspace/docs \
    -v $PWD/build:/workspace/build \
    -v $PWD/lib:/workspace/lib \
    -v $PWD/src:/workspace/src \
    -v $PWD/test:/workspace/test \
    -v $PWD/tmp:/workspace/tmp \
    -v $PWD/include:/workspace/include \
    -v $PWD/CMakeLists.txt:/workspace/CMakeLists.txt \
    --name cmake \
    $imageid \
    tail -f /dev/null
docker exec -it cmake bash