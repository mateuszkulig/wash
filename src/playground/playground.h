// src/playground/playground.h
// Global definitions and functions declarations for playground use. This header must be included before
// any global variable declaration in order to achieve consistentcy as clean linear memory is expeded
// as prerequisite.

#ifndef PLAYGROUND_H
#define PLAYGROUND_H

#define FIRST_ARRAY_SIZE 16

// Global array occupying first available address
extern unsigned char *firstArray[FIRST_ARRAY_SIZE];

void checkArrayAddress();
void checkHardcodedPointers();

#endif
