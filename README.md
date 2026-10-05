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

## Running
There are no extra dependencies for running the app, althrough if you want to avoid CORS policy issues
when loading from file, you will need a simple http server.

Python example ran in root of the project:
```
python -m http.server
```
After that, wash should be available under `http://localhost:8000`