########################################
# Add testcases
########################################
cmake_minimum_required(VERSION 3.2)
project(divider_tests)

add_subdirectory(lib/googletest)

include_directories(${DIVISION_HEADERS_DIR})
include_directories(lib/googletest/googletest/include)

AUX_SOURCE_DIRECTORY(src TEST_SRC)
MESSAGE(STATUS "tests --> " ${TEST_SRC})
add_executable(divider_tests main.cpp ${TEST_SRC})

target_link_libraries(divider_tests division gtest)
install(TARGETS divider_tests DESTINATION bin)