#! /bin/sh

SDIR=`dirname $0` 
CDIR=$SDIR/../cmake

PATH=$SDIR/arm-linux-gnueabi/bin:$PATH
export PATH

which gcc

cmake .. -DCMAKE_TOOLCHAIN_FILE=$CDIR/toolchain.gcc-armv6.cmake
make

