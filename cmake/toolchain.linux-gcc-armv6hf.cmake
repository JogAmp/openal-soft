# For normal gcc compilation, but use static-libgcc

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)

set(CMAKE_FIND_ROOT_PATH ${TARGET_PLATFORM_SYSROOT} ${TARGET_PLATFORM_USRROOT})

# -idirafter will be searched after implicit system-dir include '-I =/usr/include' from TARGET_PLATFORM_SYSROOT
set(CMAKE_C_FLAGS "-fpic -march=armv6 -mfpu=vfp -mfloat-abi=hard -marm -include ${PROJECT_SOURCE_DIR}/cmake/glibc-compat-symbols.h -idirafter /usr/include")
set(CMAKE_CXX_FLAGS "-fpic -march=armv6 -mfpu=vfp -mfloat-abi=hard -marm -include ${PROJECT_SOURCE_DIR}/cmake/glibc-compat-symbols.h -idirafter /usr/include")

set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS}" CACHE STRING "c++ flags")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}" CACHE STRING "c flags")

set(LINKER_FLAGS "-fpic -march=armv6 -mfpu=vfp -mfloat-abi=hard -marm -static-libgcc -L${TARGET_PLATFORM_USRLIBS} -static-libgcc")

set(CMAKE_SHARED_LINKER_FLAGS "${LINKER_FLAGS}" CACHE STRING "linker flags" FORCE)
set(CMAKE_MODULE_LINKER_FLAGS "${LINKER_FLAGS}" CACHE STRING "linker flags" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "${LINKER_FLAGS}" CACHE STRING "linker flags" FORCE)

