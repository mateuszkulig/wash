// src/playground/linear_memory.c
// Checks how WASM linear memory can be manipulated and what uncommon behaviors it allows.

#include "playground.h"
#include "stddef.h"

void checkArrayAddress()
{
    // Write address of each element to itself
    for (int i=0; i < FIRST_ARRAY_SIZE; ++i) {
        firstArray[i] = ((unsigned char *)firstArray) + i;
    }
}

// NOLINTBEGIN(readability-magic-numbers)
void checkHardcodedPointers()
{
    // Test hardcoeded linear memory address
    unsigned char *hardcodedAddr = (void *)0x400;
    if (*hardcodedAddr == *firstArray[0])
    {
        *hardcodedAddr = 0xFF; // Works
    }

    // Test address in <1KiB section
    hardcodedAddr = (void *)0x3FF;
    *hardcodedAddr = 0xFE; // Works

    // Test writing to 1
    hardcodedAddr = (void *)0x1;
    *hardcodedAddr = 0xFD; // Works

    // Test writing to NULL
    hardcodedAddr = NULL;
    *hardcodedAddr = 0xFC; // Works
}
// NOLINTEND(readability-magic-numbers)
