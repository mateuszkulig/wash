// index.js
// JS loader for wasm file

"use strict";

// Change this when deployed, this is a path for local developement
const moduleName = "build/wash.wasm";
let wasmInstance;   // For debugging from browser console

WebAssembly.instantiateStreaming(fetch(moduleName)).then(
    (results) => {
        console.log(results);
        wasmInstance = results.instance;
        wasmInstance.exports._start();
    },
);
