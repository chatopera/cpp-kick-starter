cmake_minimum_required(VERSION 3.2)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -O3")

SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} 
    ${PROJECT_SOURCE_DIR}/cmake/packages)

# Install third party libs
include(${PROJECT_SOURCE_DIR}/cmake/default.cmake)

set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

set(ROOT_INSTALL_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)
set(ROOT_INSTALL_BIN_DIR ${PROJECT_SOURCE_DIR}/bin)
set(ROOT_INSTALL_LIB_DIR ${PROJECT_SOURCE_DIR}/lib)

include_directories(${ROOT_INSTALL_INCLUDE_DIR})

add_subdirectory(src)


