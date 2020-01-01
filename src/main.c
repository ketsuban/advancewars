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

#ifdef NONMATCHING
// `push {lr}`/`pop {pc}` wrapper in function prelude rather than `bx lr`
// likely compiler version mismatch
void sub_807AD90() {
    while (1) {
        if ((*REG_DISPSTAT & 1) == 0) {
            return;
        }
    }
}
#else
__attribute__((naked)) void sub_807AD90() {
    asm(".syntax unified\n\
        ldr r2, _0807ADA0\n\
        movs r3, #1\n\
    _0807AD94:\n\
        ldrh r1, [r2]\n\
        adds r0, r3, #0\n\
        ands r0, r1\n\
        cmp r0, #0\n\
        bne _0807AD94\n\
        bx lr\n\
        .align 2, 0\n\
    _0807ADA0: .4byte 0x04000004\n\
    .syntax divided");
}
#endif /* NONMATCHING */

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

#ifdef NONMATCHING
// `push {lr}`/`pop {pc}` wrapper in function prelude rather than `bx lr`
// likely compiler version mismatch
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
#else
__attribute__((naked)) void sub_807AE00(i32 arg1, u32 arg2) {
    asm(".syntax unified\n\
        adds r2, r1, #0\n\
        cmp r0, #1\n\
        beq _0807AE30\n\
        cmp r0, #1\n\
        bgt _0807AE18\n\
        cmp r0, #0\n\
        beq _0807AE24\n\
        ldr r1, _0807AE14\n\
        b _0807AE44\n\
        .align 2, 0\n\
    _0807AE14: .4byte gUnknown_03000710\n\
    _0807AE18:\n\
        cmp r0, #2\n\
        beq _0807AE3C\n\
        ldr r1, _0807AE20\n\
        b _0807AE44\n\
        .align 2, 0\n\
    _0807AE20: .4byte gUnknown_03000710\n\
    _0807AE24:\n\
        ldr r0, _0807AE2C\n\
        str r2, [r0]\n\
        adds r1, r0, #0\n\
        b _0807AE44\n\
        .align 2, 0\n\
    _0807AE2C: .4byte gUnknown_03000710\n\
    _0807AE30:\n\
        ldr r1, _0807AE38\n\
        ldr r0, [r1]\n\
        ands r0, r2\n\
        b _0807AE42\n\
        .align 2, 0\n\
    _0807AE38: .4byte gUnknown_03000710\n\
    _0807AE3C:\n\
        ldr r1, _0807AE5C\n\
        ldr r0, [r1]\n\
        orrs r0, r2\n\
    _0807AE42:\n\
        str r0, [r1]\n\
    _0807AE44:\n\
        ldr r0, _0807AE60\n\
        ldr r1, [r1]\n\
        strh r1, [r0]\n\
        movs r2, #0x80\n\
        lsls r2, r2, #9\n\
        ands r2, r1\n\
        cmp r2, #0\n\
        beq _0807AE68\n\
        ldr r1, _0807AE64\n\
        movs r0, #1\n\
        strh r0, [r1]\n\
        b _0807AE6C\n\
        .align 2, 0\n\
    _0807AE5C: .4byte gUnknown_03000710\n\
    _0807AE60: .4byte 0x04000200\n\
    _0807AE64: .4byte 0x04000208\n\
    _0807AE68:\n\
        ldr r0, _0807AE70\n\
        strh r2, [r0]\n\
    _0807AE6C:\n\
        bx lr\n\
        .align 2, 0\n\
    _0807AE70: .4byte 0x04000208\n\
        .syntax divided");
}
#endif /* NONMATCHING */
