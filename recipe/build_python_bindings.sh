#!/usr/bin/env bash

export LIBUNICORN_PATH="${PREFIX}/lib"
ls -lah "${LIBUNICORN_PATH}"
${PYTHON} -m pip install source/bindings/python/ -vv
