#!/usr/bin/env bash

cd source

if [[ "${target_platform}" == linux-* ]]; then
    export LDFLAGS="-lrt ${LDFLAGS}"
fi

cmake -B build -LAH \
      -DCMAKE_BUILD_TYPE="Release"  \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -Wno-dev

cmake --build build -j${CPU_COUNT}
