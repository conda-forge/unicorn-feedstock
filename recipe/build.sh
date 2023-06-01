#!/usr/bin/env bash

mkdir build && cd build

cmake ${CMAKE_ARGS} -LAH \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    ..

cmake --build . --target install -j${CPU_COUNT}
