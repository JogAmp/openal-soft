# How To Rebuild OpenAL-soft for Android

This was completed on a Debian Squeeze 6 system.
This produces an ARMv6 libopenal.so file ready to be used with Jogamp's JOAL on Android devices.

## Prequisites

Here is the necessary tools needed

* git
* latest Android NDK (http://dl.google.com/android/ndk/android-ndk-r8d-linux-x86.tar.bz2)
* CMake (2.8)

We'll suppose the NDK is installed in ~/android-ndk-r8d/:

```bash
export ANDROID_NDK=~/android-ndk-r8d/
```


## Clone the OpenAL repository

```bash
git clone git://repo.or.cz/openal-soft.git
 or
git clone git://jogamp.org/srv/scm/openal-soft.git
```
## Add the toolchain.android.cmake

Included in ```git://jogamp.org/srv/scm/openal-soft.git```
at ```cmake/toolchain.android.cmake```.

## Build

```bash
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain.android.cmake -DANDROID_API_LEVEL=9
make
```

The result should be available in the "build" directory.
