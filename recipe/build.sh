#!/usr/bin/env bash

cd source

mkdir build

cmake -B build \
    ${CMAKE_ARGS} -LAH \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}

cmake --build build/ --target install -j${CPU_COUNT}
