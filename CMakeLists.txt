cmake_minimum_required(VERSION 3.20)
project(HelloWorldAgent LANGUAGES CXX)

include(FetchContent)

FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
)

FetchContent_MakeAvailable(googletest)

enable_testing()

add_executable(hello_world src/main.cpp)

add_executable(hello_world_tests tests/test_main.cpp)
target_link_libraries(hello_world_tests PRIVATE GTest::gtest_main)

include(GoogleTest)
gtest_discover_tests(hello_world_tests)
