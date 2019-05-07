# -pthread
find_package(Threads REQUIRED)
include_directories(${THREADS_INCLUDE_DIR})
link_libraries(${THREADS_LIBRARY})


# Google Flags
find_package(GFlags REQUIRED)
include_directories(${GFLAGS_INCLUDE_DIR})
link_libraries(${GFLAGS_LIBRARY})

# Google Glog
find_package(Glog REQUIRED)
include_directories(${GLOG_INCLUDE_DIR})
link_libraries(${GLOG_LIBRARY})

# Apache Thrift
find_package(Thrift REQUIRED)
include_directories(${THRIFT_INCLUDE_DIR})
link_libraries(${THRIFT_LIBRARIES})
