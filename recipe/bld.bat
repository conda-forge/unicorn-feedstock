@echo on

cd source
if errorlevel 1 exit 1

cmake %CMAKE_ARGS% -G "Ninja" -B build -LAH ^
      -DCMAKE_BUILD_TYPE="Release" ^
      -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_INSTALL_LIBDIR=lib ^
      -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
      -Wno-dev
if errorlevel 1 exit 1

cmake --build build -j%CPU_COUNT%
if errorlevel 1 exit 1
