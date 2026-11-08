// src/playground/playground.c
// Defines entry point for playground app.

#include "stddef.h"
#include "playground.h"

unsigned char *firstArray[FIRST_ARRAY_SIZE] = {NULL};

void _start() {
    checkHardcodedPointers();
}
