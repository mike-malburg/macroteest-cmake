cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 20)
project(macrotest-cmake)

add_executable(macrotest-cmake
   "osmacros.h"
   "osmacros.cpp"
   "main.cpp"
)

install(TARGETS macrotest-cmake DESTINATION ${CMAKE_INSTALL_BINDIR})
