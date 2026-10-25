cmake_minimum_required(VERSION 3.20)
project(HelloWorldAgent LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

include(FetchContent)

FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
)
FetchContent_MakeAvailable(googletest)

enable_testing()

add_library(add_lib src/add.cpp src/add.hpp)
target_include_directories(add_lib PUBLIC src)

add_executable(hello src/hello.cpp)

add_executable(hello_tests tests/test_add.cpp)
target_link_libraries(hello_tests PRIVATE add_lib GTest::gtest_main)

include(GoogleTest)
gtest_discover_tests(hello_tests)
