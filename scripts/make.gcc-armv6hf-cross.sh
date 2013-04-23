#! /bin/sh

SDIR=`dirname $0` 
CDIR=$SDIR/../cmake

PATH=$SDIR/arm-linux-gnueabihf/bin:$PATH
export PATH

cmake .. -DCMAKE_TOOLCHAIN_FILE=$CDIR/toolchain.gcc-armv6hf.cmake
make

