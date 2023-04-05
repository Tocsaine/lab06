cmake_minimum_required(VERSION 3.22.1)
set(CMAKE_CXX_COMPILER "/usr/bin/g++")
project(solver)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib formatter_ex_lib_dir)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib solver_lib_dir)
add_executable(solver ${CMAKE_CURRENT_SOURCE_DIR}/../solver/d/equation.cpp)
target_include_directories(solver PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib/d ${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib/d)
target_link_libraries(solver formatter_ex_lib solver_lib)

