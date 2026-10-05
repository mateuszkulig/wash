# wash
WebAssemby graphical shell and playground in browser.

## Requirements
- CMake
- ninja
- clang

## How to build
Use CMake to generate ninja files and build the module. <br>
Custom toolchain file is provided for Clang build without standard library.

### Step 1. Make a directory for CMake files
```
mkdir build
cd build
```

### Step 2. Generate and build the module
```
cmake .. -G "Ninja" -D CMAKE_TOOLCHAIN_FILE="..\toolchain.cmake"
cmake --build .
```