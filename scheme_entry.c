#include <stdio.h>

#include "constants.inc"

int return_int(void);
int return_char(void);

void handle_return_value(int r) {
    if ((r & fixnum_mask) == fixnum_tag) {
        printf("int: %d\n", r >> fixnum_shift);
    } else
    if ((r & char_mask) == char_tag) {
        printf("char: %c\n", r >> char_shift);
    }
}

int main(int argc, char** argv) {
    int val;

    val = return_int();
    handle_return_value(val);

    val = return_char();
    handle_return_value(val);

    return 0;
}
