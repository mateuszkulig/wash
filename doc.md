# Useful resources
Knowledge base of various articles that help develop WASM stuff.

## Developement
- Clang command line arguments: https://clang.llvm.org/docs/ClangCommandLineReference.html
- Webassembly without Emscripten: https://schellcode.github.io/webassembly-without-emscripten

## WebAssembly specification
- Integer encoding in modules: https://en.wikipedia.org/wiki/LEB128
- Module section layout: https://webassembly.github.io/spec/core/binary/modules.html

## C standard library
- Definition of `NULL` on cppreference: https://en.cppreference.com/c/types/NULL
- Content of `stddef.h` defined by POSIX: https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/stddef.h.html

## WASM empiric knowledge
Default linear memory array is 128 KiB and filled with 0s with just the `_start` function. <br>
Global array is stored starting from byte 1024 (`0x400`). Pointers to global variables hold the exact
position in linear memory stored in little endian, all of memory is accessible by module code, including
`*((void *)0)`. <br>

## Clang helpers
Compiler provides some of the standard headers (eg. `stddef.h`) even without libc linked.
