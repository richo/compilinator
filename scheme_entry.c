#include <stdio.h>

#include "constants.inc"

int scheme_entry(void);

int main(int argc, char** argv) {
    int val = scheme_entry();
    if ((val & fixnum_mask) == fixnum_tag) {
        printf("%d\n", val >> fixnum_shift);
    }
    return 0;
}
