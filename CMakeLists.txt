project(HelloTestCoverage)

add_library(FuncLib fnc.c)

add_executable(${PROJECT_NAME} main.c)
target_link_libraries(${PROJECT_NAME} PUBLIC FuncLib)