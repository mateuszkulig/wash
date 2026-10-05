// index.js
// JS loader for wasm file

// Change this when deployed, this is a path for local developement
const moduleName = "build/wash.wasm";

WebAssembly.instantiateStreaming(fetch(moduleName)).then(
    (results) => {
        console.log(results);
    },
);
