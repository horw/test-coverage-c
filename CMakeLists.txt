cmake_minimum_required(VERSION 3.22)

set(CMAKE_C_FLAGS "-Wall -fprofile-arcs -ftest-coverage")

project(HelloTestCoverage)

add_library(FuncLib fnc.c)

add_executable(${PROJECT_NAME} main.c)
target_link_libraries(${PROJECT_NAME} PUBLIC FuncLib)