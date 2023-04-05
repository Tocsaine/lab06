cmake_minimum_required(VERSION 3.22.1)
set(CMAKE_CXX_COMPILER "/usr/bin/g++")
project(formatter_ex_lib)
set(Formation_ex ${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib/d/formatter_ex.cpp)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib formatter_lib_dir)
add_library(formatter_ex_lib STATIC ${Formation_ex})
target_include_directories(formatter_ex_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib/d)

target_link_libraries(formatter_ex_lib formatter_lib)
