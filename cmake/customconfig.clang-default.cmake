# For normal clang compilation

set(CMAKE_C_FLAGS "-include ${PROJECT_SOURCE_DIR}/cmake/glibc-compat-symbols.h")
set(CMAKE_CXX_FLAGS "-include ${PROJECT_SOURCE_DIR}/cmake/glibc-compat-symbols.h")

if(APPLE)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mmacosx-version-min=10.5")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mmacosx-version-min=10.5")
endif()

# inject additional architectures for fat-binary (macosx)
# CMAKE_EXTRA_ARCHS is set from JOAL's ant build.xml
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CMAKE_EXTRA_ARCHS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CMAKE_EXTRA_ARCHS}")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}" CACHE STRING "c flags")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}" CACHE STRING "c++ flags")

message(STATUS "CMAKE_C_COMPILER  : ${CMAKE_C_COMPILER}")
message(STATUS "CMAKE_CXX_COMPILER: ${CMAKE_CXX_COMPILER}")
message(STATUS "CMAKE_C_FLAGS  : ${CMAKE_C_FLAGS}")
message(STATUS "CMAKE_CXX_FLAGS: ${CMAKE_CXX_FLAGS}")

# set(LINKER_FLAGS "-static-libgcc")

message(STATUS "LINKER_FLAGS: ${LINKER_FLAGS}")

set(CMAKE_SHARED_LINKER_FLAGS "${LINKER_FLAGS}" CACHE STRING "linker flags" FORCE)
set(CMAKE_MODULE_LINKER_FLAGS "${LINKER_FLAGS}" CACHE STRING "linker flags" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "${LINKER_FLAGS}" CACHE STRING "linker flags" FORCE)

