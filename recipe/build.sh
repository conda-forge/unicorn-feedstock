#!/usr/bin/env bash

cd source

# if [[ "${target_platform}" == linux-* ]]; then
export LDFLAGS="-lrt ${LDFLAGS}"
# fi

cmake -B build -LAH \
      -DCMAKE_BUILD_TYPE="Release"  \
      -DCMAKE_PREFIX_PATH=${PREFIX} \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DCMAKE_INSTALL_PREFIX=${PREFIX} \
      -Wno-dev


cmake --build build -j${CPU_COUNT}
cmake --install build


# cmake -B build \
#     ${CMAKE_ARGS} -LAH \
#     -DCMAKE_C_COMPILER=${CC} \
#     -DCMAKE_CXX_COMPILER=${CXX} \
#     -DCMAKE_BUILD_TYPE=Release \
#     -DCMAKE_INSTALL_PREFIX=${PREFIX}

# cmake --build build/ --target install -j${CPU_COUNT}
