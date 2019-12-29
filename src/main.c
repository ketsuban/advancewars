#include <stdint.h>

extern void gUnknown_03006560;
extern void gUnknown_03006570;

extern void sub_80386B8();
extern void sub_807AE00(uint32_t arg1, uint32_t arg2);
extern void sub_807AF94(void *ptr1, void *ptr2, uint32_t arg);

void sub_807AC88() {
    sub_807AF94(&gUnknown_03006560, &gUnknown_03006570, 16);
}

void sub_807ACA0() {
    sub_807AE00(0, 0);
    sub_807AC88();
}

void AgbMain() {
    sub_807ACA0();
    sub_80386B8();
}
