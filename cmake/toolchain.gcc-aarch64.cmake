# For normal gcc compilation, but use static-libgcc

set(CMAKE_C_FLAGS "-fpic -march=armv8-a -include ${PROJECT_SOURCE_DIR}/cmake/glibc-compat-symbols.h -I/usr/include")
set(CMAKE_CXX_FLAGS "-fpic -march=armv8-a -include ${PROJECT_SOURCE_DIR}/cmake/glibc-compat-symbols.h -I/usr/include")

set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS}" CACHE STRING "c++ flags")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}" CACHE STRING "c flags")

set(LINKER_FLAGS "-fpic -march=armv8-a -static-libgcc")

set(CMAKE_SHARED_LINKER_FLAGS "${LINKER_FLAGS}" CACHE STRING "linker flags" FORCE)
set(CMAKE_MODULE_LINKER_FLAGS "${LINKER_FLAGS}" CACHE STRING "linker flags" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "${LINKER_FLAGS}" CACHE STRING "linker flags" FORCE)

