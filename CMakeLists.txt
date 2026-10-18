# CMake setup
cmake_minimum_required(VERSION 3.21)
project(wash VERSION 0.1.0 LANGUAGES C)

# Compiler setup
if(NOT (CMAKE_C_COMPILER_ID STREQUAL "Clang"))
    message(WARNING
    " Detected C compiler (${CMAKE_C_COMPILER_ID}) is not Clang.\n"
    " Other compilers are not oficially supported and might not work."
    )
endif()

# C configuration
set(CMAKE_C_CLANG_TIDY clang-tidy -checks=-*,readability-*)
set(CMAKE_C_STANDARD 99)

# Path helper variables
set(washSrc ${CMAKE_SOURCE_DIR}/src)

# Includes
include_directories(${washSrc})

# Main module
add_executable(wash ${washSrc}/wash.c)
