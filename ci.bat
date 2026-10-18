@echo off
setlocal

cmake -S . -B build
if errorlevel 1 exit /b %errorlevel%

cd build
cmake --build . --config Debug
if errorlevel 1 exit /b %errorlevel%

ctest -C Debug --output-on-failure
exit /b %errorlevel%
