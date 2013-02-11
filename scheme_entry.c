#include <stdio.h>

#include "constants.inc"

int scheme_entry(void);

int main(int argc, char** argv) {
    int val = scheme_entry();
    if ((val & fixnum_mask) == fixnum_tag) {
        printf("int: %d\n", val >> fixnum_shift);
    } else
    if ((val & char_mask) == char_tag) {
        printf("char: %c\n", val >> char_shift);
    }
    return 0;
}
