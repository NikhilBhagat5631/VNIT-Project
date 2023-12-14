#include <stdio.h>

// Functions
void functionA() { 
    void (*funcPtr1)() = &functionB;
    (*funcPtr1)();
    printf("Inside functionA\n");
}

void functionB() {
    functionC();
}

void functionC() {
    void (*funcPtr2)() = &functionD;
    (*funcPtr2)();
}

void functionD() {
    functionE();
}

void functionE() {
    void (*funcPtr3)() = &functionF;
    (*funcPtr3)();
}
void functionF() {
    functionG();
}

void functionG() {
    functionH();
}

void functionH() {
    printf("Finally here");
}

int main() {
    functionA();
    return 0;
}
