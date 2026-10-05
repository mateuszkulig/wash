# wash toolchain file specifying compilation environment
# Heavily based on emscripten toolchain 

# System identification
set(CMAKE_SYSTEM_NAME WASH)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_SYSTEM_PROCESSOR x86)

# Compiler configuration
set(CMAKE_C_COMPILER "clang")
set(CMAKE_NM "llvm-nm")
set(CMAKE_AR "llvm-ar")
set(CMAKE_RANLIB "llvm-ranlib")
set(CMAKE_C_COMPILER_AR "${CMAKE_AR}")
set(CMAKE_C_COMPILER_RANLIB "${CMAKE_RANLIB}")

# Compiler specification
set(CMAKE_C_COMPILER_ID_RUN TRUE)
set(CMAKE_C_COMPILER_FORCED TRUE)
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_C_COMPILER_ID Clang)
set(CMAKE_C_COMPILER_FRONTEND_VARIANT GNU)
set(CMAKE_C_STANDARD_COMPUTED_DEFAULT 11)
set(CMAKE_C_PLATFORM_ID "wasm")

# C language features
set(CMAKE_C_COMPILE_FEATURES "c_std_90;c_function_prototypes;c_std_99;c_restrict;c_variadic_macros;c_std_11;c_static_assert")
set(CMAKE_C90_COMPILE_FEATURES "c_std_90;c_function_prototypes")
set(CMAKE_C99_COMPILE_FEATURES "c_std_99;c_restrict;c_variadic_macros")
set(CMAKE_C11_COMPILE_FEATURES "c_std_11;c_static_assert")
set(CMAKE_C17_COMPILE_FEATURES "c_std_17")
set(CMAKE_C23_COMPILE_FEATURES "c_std_23")
set(CMAKE_C_COMPILE_FEATURES "${CMAKE_C_COMPILE_FEATURES};c_std_17;c_std_23")

set(CMAKE_LIBRARY_ARCHITECTURE "wasm32-wash")
set(CMAKE_SIZEOF_VOID_P 4)
set(CMAKE_C_SIZEOF_DATA_PTR 4)

# WASM target
set(CMAKE_C_COMPILER_TARGET wasm32)
set(CMAKE_C_FLAGS "-nostdlib")
set(CMAKE_EXECUTABLE_SUFFIX_C ".wasm")
