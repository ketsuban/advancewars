#include <stdint.h>

extern void gUnknown_03006560;
extern void gUnknown_03006570;

extern void sub_80386B8();
extern void sub_807AE00(uint32_t arg1, uint32_t arg2);
extern void sub_807AF94(void *ptr1, void *ptr2, uint32_t arg);
extern uint32_t sub_807B008(void *ptr1, uint32_t arg1, uint32_t arg2);
extern void sub_807B030(void *ptr1, uint32_t arg);
extern uint32_t sub_807B0DC(void *ptr1);
extern uint32_t sub_807B1B0(void *ptr1, uint32_t arg);
extern uint32_t sub_807B1CC(void *ptr1, uint32_t arg1, uint32_t arg2);
extern uint32_t sub_807B250(void *ptr1, uint32_t arg);

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

uint32_t sub_807ACBC(uint32_t arg1, uint32_t arg2) {
    uint32_t temp1 = sub_807B250(&gUnknown_03006560, arg1);
    if (temp1 == -1) {
        return sub_807B008(&gUnknown_03006560, arg1, arg2);
    } else {
        if (sub_807B1B0(&gUnknown_03006560, temp1) == arg2) {
            return temp1;
        } else {
            return sub_807B1CC(&gUnknown_03006560, temp1, arg2);
        }
    }
}

void sub_807AD04(uint32_t arg1) {
    sub_807B030(&gUnknown_03006560, arg1);
}

void sub_807AD14() {
    sub_807AD04(sub_807B0DC(&gUnknown_03006560));
}
