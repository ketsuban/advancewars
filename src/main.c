#include "hardware.h"
#include "types.h"

extern u32 gUnknown_03000710;
extern void gUnknown_03000718;
extern void gUnknown_03006560;
extern void gUnknown_03006570;
extern void gUnknown_03006630;
extern u32 gUnknown_03007FFC;

extern void intr_main;
extern void gUnknown_0827D308;

void sub_807AE00(i32 arg1, u32 arg2);

extern void sub_80386B8();
extern void sub_807AF94(void *ptr1, void *ptr2, u32 arg);
extern u32_callback sub_807AFB8(void *ptr1);
extern u32_callback sub_807AFD4(void *ptr1);
extern u32 sub_807B008(void *ptr1, u32 arg1, u32 arg2);
extern void sub_807B030(void *ptr1, u32 arg);
extern u32 sub_807B0DC(void *ptr1);
extern i32 sub_807B0F8(void *ptr1);
extern u32 sub_807B1B0(void *ptr1, u32 arg);
extern u32 sub_807B1CC(void *ptr1, u32 arg1, u32 arg2);
extern u32 sub_807B250(void *ptr1, u32 arg);
extern void sub_807B27C(void *ptr1, void *ptr2, u32 arg);

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

u32 sub_807ACBC(u32 arg1, u32 arg2) {
    u32 temp1 = sub_807B250(&gUnknown_03006560, arg1);
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

void sub_807AD04(u32 arg1) {
    sub_807B030(&gUnknown_03006560, arg1);
}

void sub_807AD14() {
    sub_807AD04(sub_807B0DC(&gUnknown_03006560));
}

void sub_807AD28() {
    u32_callback temp1 = sub_807AFB8(&gUnknown_03006560);
    while (temp1 != 0 && sub_807B0F8(&gUnknown_03006560) <= 0x1D) {
        temp1();
        temp1 = sub_807AFD4(&gUnknown_03006560);
    }

    while ((*REG_DISPSTAT & 1) != 0);
    while ((*REG_DISPSTAT & 1) == 0);

    while (temp1 != 0) {
        temp1();
        temp1 = sub_807AFD4(&gUnknown_03006560);
    }
}

void sub_807AD90() {
    while (1) {
        if ((*REG_DISPSTAT & 1) == 0) {
            return;
        }
    }
}

void sub_807ADA4() {
    sub_807AD28();
    sub_807AD90();
}

void sub_807ADB0() {
    // empty
}

void sub_807ADB4() {
    sub_807AE00(0, 0);
    sub_807B27C(&gUnknown_0827D308, &gUnknown_03006630, 0x1E);
    sub_807B27C(&intr_main, &gUnknown_03000718, 0x100);
    gUnknown_03007FFC = (u32)&gUnknown_03000718;
}

void sub_807ADF0(u32 arg1, u32 arg2) {
    u32 *temp = &gUnknown_03006630;
    *(temp + arg1) = arg2;
}

void sub_807AE00(i32 arg1, u32 arg2) {
    switch (arg1) {
        case 0:
            gUnknown_03000710 = arg2;
            break;
        case 1:
            gUnknown_03000710 &= arg2;
            break;
        case 2:
            gUnknown_03000710 |= arg2;
            break;
    }
    *REG_IE = gUnknown_03000710;
    if ((gUnknown_03000710 & 0x10000) != 0) {
        *REG_IME = 1;
    } else {
        *REG_IME = 0;
    }
}
