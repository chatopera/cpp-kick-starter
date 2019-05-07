cmake_minimum_required(VERSION 3.2)
project(divider)

# main
set(SOURCE_FILES divider.cpp)
add_executable(divider ${SOURCE_FILES})
target_include_directories(divider PRIVATE ${PROJECT_SOURCE_DIR}/../division)
target_link_libraries(divider division)

# testcases
file(GLOB TESTCASES *_test.cpp)
MESSAGE(STATUS "TESTCASES --> " ${TESTCASES})
add_executable(divider_tests tests.cpp ${TESTCASES})
target_link_libraries(divider_tests division ${GTEST_LIBRARY})
target_include_directories(divider_tests ${GTEST_INCLUDE_DIR})

# install
install(TARGETS divider DESTINATION ${ROOT_INSTALL_BIN_DIR})
install(TARGETS divider_tests DESTINATION bin)