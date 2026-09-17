@echo on

set "LIBUNICORN_PATH=%LIBRARY_BIN%"
:: setuptools-scm cannot see a version in the release tarball
set "SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%"

cd source\bindings\python
if errorlevel 1 exit 1

%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1
