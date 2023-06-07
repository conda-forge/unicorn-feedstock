#!/usr/bin/env bash

export LIBUNICORN_PATH="${PREFIX}/lib"
ls -lah "${LIBUNICORN_PATH}"
mkdir source/bindings/python/src
${PYTHON} -m pip install source/bindings/python/ -vv
