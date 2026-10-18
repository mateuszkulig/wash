#define arrSize 10
#define returnCode 0xff

unsigned char somearray[arrSize];

void _start() {
    for (int i=0; i < arrSize; ++i) {
        somearray[i] = returnCode;
    }
    const int success = returnCode;
}
