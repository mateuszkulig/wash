# Playground for WASM experiments
This directory consists of various C code snippets developed to learn how WASM & Clang & C work together.
It is designed to be an completely unrelated module, and thus results of these operations can be seen
via memory inspection. It is purely WASM related, compiling it for native executable will not work.

This is not a part of actual wash application, just an clean environment to check the behavior of anything.
In order to use it, you need to change the module path in `index.js` to point to `playground.wasm`
instead of `wash.wasm`.
