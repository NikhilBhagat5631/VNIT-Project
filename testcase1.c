#include <stdio.h>

// Function prototypes
void func1(int,void (*)(int));
void func2(int,void (*)(int));
void func3(int,void (*)(int));
void func4(int,void (*)(int));
void func5(int,void (*)(int));
void func6(int);
void func7(int);
void func8(int);
void func9(int);
void func10(int);
void func11(int);
void func12(int);
void func13(int);
void func14(int);
void func15(int);
void func16(int);
void func17(int);
void func18(int);
void func19(int);
void func20(int);
void func21(int);
void func22(int);
void func23(int);
void func24(int);
void func25(int);
void func26(int);
void func27(int);
void func28(int);
void func29(int);
void func30(int);
/*void func31(int);
void func32(int);
void func33(int);
void func34(int);
void func35(int);
void func36(int);
void func37(int);
void func38(int);
void func39(int);
void func40(int);
void func41(int);
void func42(int);
void func43(int);
void func44(int);
void func45(int);
void func46(int);
void func47(int);
void func48(int);
void func49(int);
void func50(int); */

int main() {
    int choice = 1;
    void (*FuncPtr)(int, void (*)(int));
    void (*FuncP)(int) = func6;

    if (choice == 1) {
        FuncPtr = func1;
    } else if (choice == 2) {
        FuncPtr = func2;
    } else if (choice == 3) {
        FuncPtr = func3;
    } else if (choice == 4) {
        FuncPtr = func4;
    } else if (choice == 5) {
        FuncPtr = func5;
    } else {
        printf("Invalid choice.\n");
        return 0;
    }

    FuncPtr(choice, FuncP);

    return 0;
}

// Function definitions
void func1(int val, void (*funcP1)(int)) {
    if (val == 1) {
        funcP1 = func6;
    } else if (val == 2) {
        funcP1 = func7;
    } else if (val == 3) {
        funcP1 = func8;
    } else if (val == 50) {
        funcP1 = func9;
    } else if (val == 50) {
        funcP1 = func10;
    } else {
        printf("Invalid choice.\n");
        return;
    }

    funcP1(val);
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func2(int val, void (*funcP2)(int)) {
    if (val == 1) {
        funcP2 = func11;
    } else if (val == 2) {
        funcP2 = func12;
    } else if (val == 3) {
        funcP2 = func13;
    } else if (val == 50) {
        funcP2 = func14;
    } else if (val == 50) {
        funcP2 = func15;
    } else {
        printf("Invalid choice.\n");
        return;
    }

    funcP2(val);
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func3(int val, void (*funcP3)(int)) {
    if (val == 1) {
        funcP3 = func16;
    } else if (val == 2) {
        funcP3 = func17;
    } else if (val == 3) {
        funcP3 = func18;
    } else if (val == 50) {
        funcP3 = func19;
    } else if (val == 50) {
        funcP3 = func20;
    } else {
        printf("Invalid choice.\n");
        return;
    }

    funcP3(val);
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func4(int val, void (*funcP4)(int)) {
    if (val == 1) {
        funcP4 = func21;
    } else if (val == 21) {
        funcP4 = func22;
    } else if (val == 22) {
        funcP4 = func23;
    } else if (val == 50) {
        funcP4 = func24;
    } else if (val == 50) {
        funcP4 = func25;
    } else {
        printf("Invalid choice.\n");
        return;
    }

    funcP4(val);
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func5(int val, void (*funcP5)(int)) {
    if (val == 1) {
        funcP5 = func26;
    } else if (val == 2) {
        funcP5 = func27;
    } else if (val == 3) {
        funcP5 = func28;
    } else if (val == 50) {
        funcP5 = func29;
    } else if (val == 50) {
        funcP5 = func30;
    } else {
        printf("Invalid choice.\n");
        return;
    }

    funcP5(val);
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func6(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func7(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func8(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func9(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func10(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func11(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func12(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func13(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func14(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func15(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func16(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func17(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func18(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func19(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func20(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func21(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func22(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func23(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func24(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func25(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func26(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func27(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func28(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func29(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
void func30(int val) {
    printf("Function 1 called with value: %d\n", val);
    return;
}
