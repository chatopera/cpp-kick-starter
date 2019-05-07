cmake_minimum_required(VERSION 3.2)
project(divider)

add_subdirectory(division)

set(SOURCE_FILES main.cpp)
add_executable(divider ${SOURCE_FILES})
target_include_directories(divider PRIVATE ${PROJECT_SOURCE_DIR}/division)
target_link_libraries(divider division)

install(TARGETS divider DESTINATION ${ROOT_INSTALL_BIN_DIR})

MESSAGE(STATUS "src/PROJECT_SOURCE_DIR --> " ${PROJECT_SOURCE_DIR})