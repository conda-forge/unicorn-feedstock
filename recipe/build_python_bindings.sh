#!/usr/bin/env bash

export LIBUNICORN_PATH="${PREFIX}/lib"
# setuptools-scm cannot see a version in the release tarball
export SETUPTOOLS_SCM_PRETEND_VERSION="${PKG_VERSION}"
cd source/bindings/python
${PYTHON} -m pip install . -vv
