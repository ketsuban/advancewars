#include <stdint.h>

extern void unk_03006560;
extern void unk_03006570;

extern void sub_080386b8();
extern void sub_0807ae00(uint32_t arg1, uint32_t arg2);
extern void sub_0807af94(void *ptr1, void *ptr2, uint32_t arg);

void sub_0807ac88() {
    sub_0807af94(&unk_03006560, &unk_03006570, 16);
}

void sub_0807aca0() {
    sub_0807ae00(0, 0);
    sub_0807ac88();
}

void AgbMain() {
    sub_0807aca0();
    sub_080386b8();
}
