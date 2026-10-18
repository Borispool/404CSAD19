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

add_executable(hello src/main.cpp src/math.hpp)
target_include_directories(hello PRIVATE src)

add_executable(hello_tests tests/test_main.cpp)
target_include_directories(hello_tests PRIVATE src)
target_link_libraries(hello_tests PRIVATE GTest::gtest_main)

include(GoogleTest)
gtest_discover_tests(hello_tests)
