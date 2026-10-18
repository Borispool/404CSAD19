@echo off
setlocal

cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Release
if errorlevel 1 exit /b %errorlevel%

cmake --build build
if errorlevel 1 exit /b %errorlevel%

ctest --test-dir build --output-on-failure
exit /b %errorlevel%
