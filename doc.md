# Useful resources
Knowledge base of various articles that help develop WASM stuff.

## Developement
- Clang command line arguments: https://clang.llvm.org/docs/ClangCommandLineReference.html
- Webassembly without Emscripten: https://schellcode.github.io/webassembly-without-emscripten

## WebAssembly specification
- Integer encoding in modules: https://en.wikipedia.org/wiki/LEB128
- Module section layout: https://webassembly.github.io/spec/core/binary/modules.html

# Empiric knowledge
WASM default linear memory array is 128 KiB and filled with 0s with just the `_start` function.