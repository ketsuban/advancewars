    .syntax unified
    .include "asm/macros.inc"

	THUMB_FUNC_START sub_807AF04
sub_807AF04: @ 0x0807AF04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r7, r3, #0
	ldr r4, [r5, #8]
	movs r0, #0
	mov ip, r0
	ldr r0, [r5, #0xc]
	lsls r2, r6, #1
	adds r1, r2, r6
	lsls r3, r1, #2
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0807AF2E
	movs r0, #1
	rsbs r0, r0, #0
	b _0807AF8E
_0807AF2E:
	mov r0, r8
	str r0, [r1]
	strb r7, [r1, #8]
	ldrb r1, [r5, #2]
	cmp r1, #0
	beq _0807AF80
	ldr r3, [r5, #0xc]
	adds r1, r2, #0
	b _0807AF4A
_0807AF40:
	ldr r2, [r4, #4]
	cmp r2, #0
	beq _0807AF74
	mov ip, r4
	adds r4, r2, #0
_0807AF4A:
	ldrb r2, [r4, #8]
	cmp r2, r7
	ble _0807AF40
	mov r0, ip
	cmp r0, #0
	bne _0807AF60
	adds r0, r1, r6
	lsls r0, r0, #2
	adds r0, r3, r0
	str r0, [r5, #8]
	b _0807AF6A
_0807AF60:
	adds r0, r1, r6
	lsls r0, r0, #2
	adds r0, r3, r0
	mov r2, ip
	str r0, [r2, #4]
_0807AF6A:
	adds r0, r1, r6
	lsls r0, r0, #2
	adds r0, r0, r3
	str r4, [r0, #4]
	b _0807AF86
_0807AF74:
	adds r0, r1, r6
	lsls r0, r0, #2
	adds r0, r0, r3
	str r2, [r0, #4]
	str r0, [r4, #4]
	b _0807AF86
_0807AF80:
	ldr r0, [r5, #0xc]
	adds r0, r3, r0
	str r1, [r0, #4]
_0807AF86:
	ldrb r0, [r5, #2]
	adds r0, #1
	strb r0, [r5, #2]
	adds r0, r6, #0
_0807AF8E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	THUMB_FUNC_START sub_807AF94
sub_807AF94: @ 0x0807AF94
	adds r3, r2, #0
	movs r2, #0
	strb r2, [r0]
	str r2, [r0, #4]
	strb r3, [r0, #1]
	strb r2, [r0, #2]
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	cmp r3, #0
	ble _0807AFB6
	movs r0, #0
	adds r2, r3, #0
_0807AFAC:
	str r0, [r1]
	adds r1, #0xc
	subs r2, #1
	cmp r2, #0
	bne _0807AFAC
_0807AFB6:
	bx lr

	THUMB_FUNC_START sub_807AFB8
sub_807AFB8: @ 0x0807AFB8
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0807AFD0
	movs r0, #0xfe
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r1, #8]
	str r0, [r1, #4]
	ldr r0, [r0]
	b _0807AFD2
_0807AFD0:
	movs r0, #0
_0807AFD2:
	bx lr

	THUMB_FUNC_START sub_807AFD4
sub_807AFD4: @ 0x0807AFD4
	push {lr}
	adds r1, r0, #0
	ldr r3, [r1, #4]
	cmp r3, #0
	beq _0807B002
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0807AFF6
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r1]
	adds r0, r1, #0
	bl sub_807AFB8
	b _0807B004
_0807AFF6:
	ldr r0, [r3, #4]
	str r0, [r1, #4]
	cmp r0, #0
	beq _0807B002
	ldr r0, [r0]
	b _0807B004
_0807B002:
	movs r0, #0
_0807B004:
	pop {pc}
	.align 2, 0

	THUMB_FUNC_START sub_807B008
sub_807B008: @ 0x0807B008
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_807AEE0
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0807B02A
	adds r0, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_807AF04
	b _0807B02C
_0807B02A:
	adds r0, r1, #0
_0807B02C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	THUMB_FUNC_START sub_807B030
sub_807B030: @ 0x0807B030
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov ip, r1
	ldr r1, [r4, #0xc]
	mov r2, ip
	lsls r0, r2, #1
	adds r3, r0, r2
	lsls r0, r3, #2
	adds r2, r0, r1
	ldr r0, [r2]
	cmp r0, #0
	beq _0807B056
	movs r0, #1
	rsbs r0, r0, #0
	cmp ip, r0
	bne _0807B05C
_0807B056:
	movs r0, #1
	rsbs r0, r0, #0
	b _0807B0D2
_0807B05C:
	movs r0, #0
	str r0, [r2]
	movs r5, #0
	adds r7, r1, #0
	ldr r6, [r4, #4]
	ldrb r0, [r4, #1]
	cmp r5, r0
	bge _0807B0A4
	mov sb, r7
	mov r8, r3
	adds r3, r7, #0
_0807B072:
	ldr r0, [r3]
	cmp r0, #0
	beq _0807B09A
	mov r2, r8
	lsls r1, r2, #2
	adds r0, r7, r1
	ldr r2, [r3, #4]
	cmp r2, r0
	bne _0807B09A
	cmp r2, r6
	bne _0807B08A
	str r3, [r4, #4]
_0807B08A:
	mov r2, sb
	adds r0, r1, r2
	ldr r0, [r0, #4]
	str r0, [r3, #4]
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	b _0807B0D0
_0807B09A:
	adds r3, #0xc
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blt _0807B072
_0807B0A4:
	ldr r0, [r4, #8]
	cmp r0, r6
	bne _0807B0B2
	movs r0, #1
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
_0807B0B2:
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807B0CE
	mov r2, ip
	lsls r0, r2, #1
	add r0, ip
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0, #4]
	str r0, [r4, #8]
	b _0807B0D0
_0807B0CE:
	str r7, [r4, #8]
_0807B0D0:
	movs r0, #0
_0807B0D2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	THUMB_FUNC_START sub_807B0DC
sub_807B0DC: @ 0x0807B0DC
	push {lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0807B0F0
	ldr r0, [r0, #0xc]
	subs r0, r1, r0
	movs r1, #0xc
	bl __udivsi3
	b _0807B0F4
_0807B0F0:
	movs r0, #1
	rsbs r0, r0, #0
_0807B0F4:
	pop {pc}
	.align 2, 0

	THUMB_FUNC_START sub_807B0F8
sub_807B0F8: @ 0x0807B0F8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0807B102
	ldrb r0, [r0, #8]
	b _0807B106
_0807B102:
	movs r0, #1
	rsbs r0, r0, #0
_0807B106:
	bx lr

	THUMB_FUNC_START sub_807B108
sub_807B108: @ 0x0807B108
	movs r3, #0
	ldr r2, [r0, #0xc]
	ldrb r0, [r0, #1]
	cmp r3, r0
	bge _0807B124
	adds r1, r0, #0
_0807B114:
	ldrb r0, [r2, #8]
	cmp r3, r0
	bge _0807B11C
	adds r3, r0, #0
_0807B11C:
	adds r2, #0xc
	subs r1, #1
	cmp r1, #0
	bne _0807B114
_0807B124:
	adds r0, r3, #0
	bx lr

	THUMB_FUNC_START sub_807B128
sub_807B128: @ 0x0807B128
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, [r5, #0xc]
	movs r4, #0
	b _0807B158
_0807B132:
	ldr r0, [r2]
	cmp r0, #0
	beq _0807B154
	cmp r1, #0
	blt _0807B148
	ldrb r3, [r2, #8]
	adds r0, r3, r1
	cmp r0, #0xfe
	ble _0807B152
	movs r0, #0xff
	b _0807B152
_0807B148:
	ldrb r3, [r2, #8]
	adds r0, r3, r1
	cmp r0, #0
	bge _0807B152
	movs r0, #0
_0807B152:
	strb r0, [r2, #8]
_0807B154:
	adds r2, #0xc
	adds r4, #1
_0807B158:
	ldrb r0, [r5, #1]
	cmp r4, r0
	blt _0807B132
	pop {r4, r5, pc}

	THUMB_FUNC_START sub_807B160
sub_807B160: @ 0x0807B160
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r1, [r4, #0xc]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #0
	beq _0807B1A6
	str r0, [sp]
	mov r0, sp
	ldrb r1, [r1, #8]
	strb r1, [r0, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_807B030
	cmp r0, #0
	bne _0807B1A6
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_807B128
	ldr r2, [sp]
	mov r0, sp
	ldrb r3, [r0, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_807AF04
	b _0807B1AA
_0807B1A6:
	movs r0, #1
	rsbs r0, r0, #0
_0807B1AA:
	add sp, #0xc
	pop {r4, r5, r6, pc}
	.align 2, 0

	THUMB_FUNC_START sub_807B1B0
sub_807B1B0: @ 0x0807B1B0
	ldr r2, [r0, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _0807B1C4
	ldrb r0, [r1, #8]
	b _0807B1C8
_0807B1C4:
	movs r0, #1
	rsbs r0, r0, #0
_0807B1C8:
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_807B1CC
sub_807B1CC: @ 0x0807B1CC
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r1, [r5, #0xc]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0807B202
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_807B030
	cmp r0, #0
	bne _0807B202
	ldr r2, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_807AF04
	b _0807B206
_0807B202:
	movs r0, #1
	rsbs r0, r0, #0
_0807B206:
	add sp, #0xc
	pop {r4, r5, r6, pc}
	.align 2, 0

	THUMB_FUNC_START sub_807B20C
sub_807B20C: @ 0x0807B20C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r1, [r5, #0xc]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0807B246
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_807B030
	cmp r0, #0
	bne _0807B246
	ldr r2, [sp]
	mov r0, sp
	ldrb r0, [r0, #8]
	adds r3, r0, r6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_807AF04
	b _0807B24A
_0807B246:
	movs r0, #1
	rsbs r0, r0, #0
_0807B24A:
	add sp, #0xc
	pop {r4, r5, r6, pc}
	.align 2, 0

	THUMB_FUNC_START sub_807B250
sub_807B250: @ 0x0807B250
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0807B260
	ldr r2, [r3, #8]
_0807B25C:
	cmp r2, #0
	bne _0807B266
_0807B260:
	movs r0, #1
	rsbs r0, r0, #0
	b _0807B27A
_0807B266:
	ldr r0, [r2]
	cmp r0, r1
	beq _0807B270
	ldr r2, [r2, #4]
	b _0807B25C
_0807B270:
	ldr r0, [r3, #0xc]
	subs r0, r2, r0
	movs r1, #0xc
	bl __udivsi3
_0807B27A:
	pop {pc}

	THUMB_FUNC_START sub_807B27C
sub_807B27C: @ 0x0807B27C
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _0807B2A4
	strh r0, [r3]
	adds r3, #2
	asrs r0, r0, #0x10
	strh r0, [r3]
	ldr r0, _0807B2A8
	strh r1, [r0]
	adds r0, #2
	asrs r1, r1, #0x10
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r1, _0807B2AC
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0807B2A4: .4byte 0x040000D4
_0807B2A8: .4byte 0x040000D8
_0807B2AC: .4byte 0x040000DE

	THUMB_FUNC_START sub_807B2B0
sub_807B2B0: @ 0x0807B2B0
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r6, _0807B2D4
	adds r0, r4, r6
	str r2, [r0]
	ldr r2, _0807B2D8
	adds r0, r4, r2
	str r1, [r0]
	adds r6, #8
	adds r0, r4, r6
	strh r3, [r0]
	ldr r1, _0807B2DC
	adds r0, r4, r1
	strh r5, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807B2D4: .4byte 0x040000B0
_0807B2D8: .4byte 0x040000B4
_0807B2DC: .4byte 0x040000BA

	THUMB_FUNC_START sub_807B2E0
sub_807B2E0: @ 0x0807B2E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	cmp r3, #0
	ble _0807B316
	lsls r0, r0, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r6, r0, r4
	adds r5, r1, #0
	lsls r0, r2, #0x14
	mov r8, r0
	lsls r7, r2, #5
	adds r4, r3, #0
_0807B2FC:
	adds r0, r5, #0
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	bl sub_807B27C
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r6, r0
	adds r5, r5, r7
	subs r4, #1
	cmp r4, #0
	bne _0807B2FC
_0807B316:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	THUMB_FUNC_START sub_807B31C
sub_807B31C: @ 0x0807B31C
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	bl sub_807B2E0
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START sub_807B32C
sub_807B32C: @ 0x0807B32C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	cmp r3, #0
	ble _0807B358
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r0, r2, #0x10
	mov r8, r0
	lsls r7, r2, #1
	adds r4, r3, #0
_0807B342:
	adds r0, r5, #0
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	bl sub_807B27C
	adds r6, #0x40
	adds r5, r5, r7
	subs r4, #1
	cmp r4, #0
	bne _0807B342
_0807B358:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	THUMB_FUNC_START sub_807B360
sub_807B360: @ 0x0807B360
	push {r4, lr}
	ldr r1, _0807B384
	ldr r0, [r1]
	ldr r0, [r0]
	cmp r0, #0
	beq _0807B382
	adds r4, r1, #0
_0807B36E:
	ldr r1, [r4]
	adds r0, r1, #4
	str r0, [r4]
	ldr r0, [r1]
	bl _call_via_r0
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _0807B36E
_0807B382:
	pop {r4, pc}
	.align 2, 0
_0807B384: .4byte gUnknown_083F702C

	THUMB_FUNC_START sub_807B388
sub_807B388: @ 0x0807B388
	push {r4, r5, lr}
	ldr r2, _0807B3CC
	ldr r1, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0807B3AA
	movs r1, #0
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _0807B3AA
	adds r2, #4
_0807B3A0:
	adds r2, #4
	adds r1, #1
	ldr r0, [r2]
	cmp r0, #0
	bne _0807B3A0
_0807B3AA:
	adds r5, r1, #0
	cmp r5, #0
	beq _0807B3C4
	ldr r1, _0807B3CC
	lsls r0, r5, #2
	adds r4, r0, r1
_0807B3B6:
	ldr r0, [r4]
	bl _call_via_r0
	subs r4, #4
	subs r5, #1
	cmp r5, #0
	bne _0807B3B6
_0807B3C4:
	ldr r0, _0807B3D0
	bl atexit
	pop {r4, r5, pc}
	.align 2, 0
_0807B3CC: .4byte gUnknown_083F7034
_0807B3D0: .4byte sub_807B360+1

	THUMB_FUNC_START sub_807B3D4
sub_807B3D4: @ 0x0807B3D4
	push {lr}
	ldr r1, _0807B3E8
	ldr r0, [r1]
	cmp r0, #0
	bne _0807B3E6
	movs r0, #1
	str r0, [r1]
	bl sub_807B388
_0807B3E6:
	pop {pc}
	.align 2, 0
_0807B3E8: .4byte gUnknown_03000918

	THUMB_FUNC_START _call_via_r0
_call_via_r0: @ 0x0807B3EC
	bx r0
	nop

	THUMB_FUNC_START _call_via_r1
_call_via_r1: @ 0x0807B3F0
	bx r1
	nop

	THUMB_FUNC_START _call_via_r2
_call_via_r2: @ 0x0807B3F4
	bx r2
	nop

	THUMB_FUNC_START _call_via_r3
_call_via_r3: @ 0x0807B3F8
	bx r3
	nop

	THUMB_FUNC_START _call_via_r4
_call_via_r4: @ 0x0807B3FC
	bx r4
	nop

	THUMB_FUNC_START _call_via_r5
_call_via_r5: @ 0x0807B400
	bx r5
	nop

	THUMB_FUNC_START _call_via_r6
_call_via_r6: @ 0x0807B404
	bx r6
	nop

	THUMB_FUNC_START _call_via_r7
_call_via_r7: @ 0x0807B408
	bx r7
	nop

	THUMB_FUNC_START _call_via_r8
_call_via_r8: @ 0x0807B40C
	bx r8
	nop

	THUMB_FUNC_START _call_via_r9
_call_via_r9: @ 0x0807B410
	bx sb
	nop

	THUMB_FUNC_START _call_via_sl
_call_via_sl: @ 0x0807B414
	bx sl
	nop

	THUMB_FUNC_START _call_via_fp
_call_via_fp: @ 0x0807B418
	bx fp
	nop

	THUMB_FUNC_START _call_via_ip
_call_via_ip: @ 0x0807B41C
	bx ip
	nop

	THUMB_FUNC_START _call_via_sp
_call_via_sp: @ 0x0807B420
	bx sp
	nop

	THUMB_FUNC_START _call_via_lr
_call_via_lr: @ 0x0807B424
	bx lr
	nop

	THUMB_FUNC_START __divsi3
__divsi3: @ 0x0807B428
	cmp r1, #0
	beq _0807B4B0
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _0807B43E
	rsbs r1, r1, #0
_0807B43E:
	cmp r0, #0
	bpl _0807B444
	rsbs r0, r0, #0
_0807B444:
	cmp r0, r1
	blo _0807B4A2
	movs r4, #1
	lsls r4, r4, #0x1c
_0807B44C:
	cmp r1, r4
	bhs _0807B45A
	cmp r1, r0
	bhs _0807B45A
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0807B44C
_0807B45A:
	lsls r4, r4, #3
_0807B45C:
	cmp r1, r4
	bhs _0807B46A
	cmp r1, r0
	bhs _0807B46A
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0807B45C
_0807B46A:
	cmp r0, r1
	blo _0807B472
	subs r0, r0, r1
	orrs r2, r3
_0807B472:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0807B47E
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0807B47E:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0807B48A
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0807B48A:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0807B496
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0807B496:
	cmp r0, #0
	beq _0807B4A2
	lsrs r3, r3, #4
	beq _0807B4A2
	lsrs r1, r1, #4
	b _0807B46A
_0807B4A2:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _0807B4AC
	rsbs r0, r0, #0
_0807B4AC:
	pop {r4}
	mov pc, lr
_0807B4B0:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	THUMB_FUNC_START __div0
__div0: @ 0x0807B4BC
	mov pc, lr
	.align 2, 0

	THUMB_FUNC_START __fixunsdfsi
__fixunsdfsi: @ 0x0807B4C0
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r3, _0807B4E0
	ldr r2, _0807B4DC
	bl __gedf2
	cmp r0, #0
	bge _0807B4E4
	adds r1, r5, #0
	adds r0, r4, #0
	bl __fixdfsi
	b _0807B4FA
	.align 2, 0
_0807B4DC: .4byte 0x41E00000
_0807B4E0: .4byte 0x00000000
_0807B4E4:
	ldr r3, _0807B500
	ldr r2, _0807B4FC
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	bl __fixdfsi
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
_0807B4FA:
	pop {r4, r5, pc}
	.align 2, 0
_0807B4FC: .4byte 0xC1E00000
_0807B500: .4byte 0x00000000

	THUMB_FUNC_START __modsi3
__modsi3: @ 0x0807B504
	movs r3, #1
	cmp r1, #0
	beq _0807B5C8
	bpl _0807B50E
	rsbs r1, r1, #0
_0807B50E:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _0807B518
	rsbs r0, r0, #0
_0807B518:
	cmp r0, r1
	blo _0807B5BC
	movs r4, #1
	lsls r4, r4, #0x1c
_0807B520:
	cmp r1, r4
	bhs _0807B52E
	cmp r1, r0
	bhs _0807B52E
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0807B520
_0807B52E:
	lsls r4, r4, #3
_0807B530:
	cmp r1, r4
	bhs _0807B53E
	cmp r1, r0
	bhs _0807B53E
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0807B530
_0807B53E:
	movs r2, #0
	cmp r0, r1
	blo _0807B546
	subs r0, r0, r1
_0807B546:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0807B558
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0807B558:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0807B56A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0807B56A:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0807B57C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0807B57C:
	mov ip, r3
	cmp r0, #0
	beq _0807B58A
	lsrs r3, r3, #4
	beq _0807B58A
	lsrs r1, r1, #4
	b _0807B53E
_0807B58A:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _0807B5BC
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0807B5A0
	lsrs r4, r1, #3
	adds r0, r0, r4
_0807B5A0:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0807B5AE
	lsrs r4, r1, #2
	adds r0, r0, r4
_0807B5AE:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0807B5BC
	lsrs r4, r1, #1
	adds r0, r0, r4
_0807B5BC:
	pop {r4}
	cmp r4, #0
	bpl _0807B5C4
	rsbs r0, r0, #0
_0807B5C4:
	pop {r4}
	mov pc, lr
_0807B5C8:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	THUMB_FUNC_START __udivsi3
__udivsi3: @ 0x0807B5D4
	cmp r1, #0
	beq _0807B642
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _0807B63C
	movs r4, #1
	lsls r4, r4, #0x1c
_0807B5E6:
	cmp r1, r4
	bhs _0807B5F4
	cmp r1, r0
	bhs _0807B5F4
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0807B5E6
_0807B5F4:
	lsls r4, r4, #3
_0807B5F6:
	cmp r1, r4
	bhs _0807B604
	cmp r1, r0
	bhs _0807B604
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0807B5F6
_0807B604:
	cmp r0, r1
	blo _0807B60C
	subs r0, r0, r1
	orrs r2, r3
_0807B60C:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0807B618
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0807B618:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0807B624
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0807B624:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0807B630
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0807B630:
	cmp r0, #0
	beq _0807B63C
	lsrs r3, r3, #4
	beq _0807B63C
	lsrs r1, r1, #4
	b _0807B604
_0807B63C:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_0807B642:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	THUMB_FUNC_START __umodsi3
__umodsi3: @ 0x0807B64C
	cmp r1, #0
	beq _0807B702
	movs r3, #1
	cmp r0, r1
	bhs _0807B658
	mov pc, lr
_0807B658:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_0807B65E:
	cmp r1, r4
	bhs _0807B66C
	cmp r1, r0
	bhs _0807B66C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0807B65E
_0807B66C:
	lsls r4, r4, #3
_0807B66E:
	cmp r1, r4
	bhs _0807B67C
	cmp r1, r0
	bhs _0807B67C
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0807B66E
_0807B67C:
	movs r2, #0
	cmp r0, r1
	blo _0807B684
	subs r0, r0, r1
_0807B684:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0807B696
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0807B696:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0807B6A8
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0807B6A8:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0807B6BA
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0807B6BA:
	mov ip, r3
	cmp r0, #0
	beq _0807B6C8
	lsrs r3, r3, #4
	beq _0807B6C8
	lsrs r1, r1, #4
	b _0807B67C
_0807B6C8:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _0807B6D4
	pop {r4}
	mov pc, lr
_0807B6D4:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0807B6E2
	lsrs r4, r1, #3
	adds r0, r0, r4
_0807B6E2:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0807B6F0
	lsrs r4, r1, #2
	adds r0, r0, r4
_0807B6F0:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0807B6FE
	lsrs r4, r1, #1
	adds r0, r0, r4
_0807B6FE:
	pop {r4}
	mov pc, lr
_0807B702:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	THUMB_FUNC_START __pack_d
__pack_d: @ 0x0807B70C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _0807B724
	movs r2, #1
_0807B724:
	cmp r2, #0
	beq _0807B744
	ldr r6, _0807B738
	ldr r2, _0807B73C
	ldr r3, _0807B740
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _0807B7FC
	.align 2, 0
_0807B738: .4byte 0x000007FF
_0807B73C: .4byte 0x00000000
_0807B740: .4byte 0x00080000
_0807B744:
	movs r2, #0
	cmp r0, #4
	bne _0807B74C
	movs r2, #1
_0807B74C:
	cmp r2, #0
	bne _0807B798
	movs r2, #0
	cmp r0, #2
	bne _0807B758
	movs r2, #1
_0807B758:
	cmp r2, #0
	beq _0807B762
	movs r4, #0
	movs r5, #0
	b _0807B800
_0807B762:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0807B800
	ldr r2, [r1, #8]
	ldr r0, _0807B780
	cmp r2, r0
	bge _0807B792
	subs r2, r0, r2
	cmp r2, #0x38
	ble _0807B784
	movs r4, #0
	movs r5, #0
	b _0807B7F2
	.align 2, 0
_0807B780: .4byte 0xFFFFFC02
_0807B784:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	b _0807B7F2
_0807B792:
	ldr r0, _0807B7A0
	cmp r2, r0
	ble _0807B7A8
_0807B798:
	ldr r6, _0807B7A4
	movs r4, #0
	movs r5, #0
	b _0807B800
	.align 2, 0
_0807B7A0: .4byte 0x000003FF
_0807B7A4: .4byte 0x000007FF
_0807B7A8:
	ldr r0, _0807B7D0
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0807B7D4
	cmp r2, #0
	bne _0807B7D4
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _0807B7DC
	movs r0, #0x80
	movs r1, #0
	b _0807B7D8
	.align 2, 0
_0807B7D0: .4byte 0x000003FF
_0807B7D4:
	movs r0, #0x7f
	movs r1, #0
_0807B7D8:
	adds r4, r4, r0
	adcs r5, r1
_0807B7DC:
	ldr r0, _0807B840
	cmp r5, r0
	bls _0807B7F2
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_0807B7F2:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_0807B7FC:
	adds r5, r1, #0
	adds r4, r0, #0
_0807B800:
	str r4, [sp]
	ldr r2, _0807B844
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _0807B848
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _0807B84C
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _0807B850
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807B840: .4byte 0x1FFFFFFF
_0807B844: .4byte 0x000FFFFF
_0807B848: .4byte 0xFFF00000
_0807B84C: .4byte 0x000007FF
_0807B850: .4byte 0xFFFF800F

	THUMB_FUNC_START __unpack_d
__unpack_d: @ 0x0807B854
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _0807B8C8
	orrs r1, r5
	cmp r1, #0
	bne _0807B888
	movs r0, #2
	str r0, [r6]
	b _0807B91C
_0807B888:
	ldr r0, _0807B8C0
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _0807B8C4
	cmp r5, r0
	bhi _0807B8F8
	adds r7, r0, #0
_0807B8A6:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _0807B8A6
	b _0807B8F8
	.align 2, 0
_0807B8C0: .4byte 0xFFFFFC02
_0807B8C4: .4byte 0x0FFFFFFF
_0807B8C8:
	ldr r0, _0807B8DC
	cmp r3, r0
	bne _0807B8FE
	orrs r1, r5
	cmp r1, #0
	bne _0807B8E0
	movs r0, #4
	str r0, [r6]
	b _0807B91C
	.align 2, 0
_0807B8DC: .4byte 0x000007FF
_0807B8E0:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _0807B8F6
	movs r0, #1
	str r0, [r6]
	b _0807B8F8
_0807B8F6:
	str r1, [r6]
_0807B8F8:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _0807B91C
_0807B8FE:
	ldr r1, _0807B920
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _0807B924
	ldr r3, _0807B928
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_0807B91C:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807B920: .4byte 0xFFFFFC01
_0807B924: .4byte 0x00000000
_0807B928: .4byte 0x10000000

	THUMB_FUNC_START _fpadd_parts
_fpadd_parts: @ 0x0807B92C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _0807B948
	movs r0, #1
_0807B948:
	cmp r0, #0
	beq _0807B950
_0807B94C:
	adds r0, r3, #0
	b _0807BB88
_0807B950:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _0807B95A
	movs r1, #1
_0807B95A:
	cmp r1, #0
	bne _0807B9D2
	movs r1, #0
	cmp r2, #4
	bne _0807B966
	movs r1, #1
_0807B966:
	cmp r1, #0
	beq _0807B988
	movs r1, #0
	cmp r0, #4
	bne _0807B972
	movs r1, #1
_0807B972:
	cmp r1, #0
	beq _0807B94C
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _0807B94C
	ldr r0, _0807B984
	b _0807BB88
	.align 2, 0
_0807B984: .4byte gUnknown_03000920
_0807B988:
	movs r1, #0
	cmp r0, #4
	bne _0807B990
	movs r1, #1
_0807B990:
	cmp r1, #0
	bne _0807B9D2
	movs r1, #0
	cmp r0, #2
	bne _0807B99C
	movs r1, #1
_0807B99C:
	cmp r1, #0
	beq _0807B9C4
	movs r0, #0
	cmp r2, #2
	bne _0807B9A8
	movs r0, #1
_0807B9A8:
	cmp r0, #0
	beq _0807B94C
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _0807BB86
_0807B9C4:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _0807B9CE
	movs r1, #1
_0807B9CE:
	cmp r1, #0
	beq _0807B9D6
_0807B9D2:
	adds r0, r4, #0
	b _0807BB88
_0807B9D6:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0807B9F6
	rsbs r0, r0, #0
_0807B9F6:
	cmp r0, #0x3f
	bgt _0807BA74
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _0807BA40
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_0807BA0E:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _0807BA0E
	mov r8, sb
_0807BA40:
	cmp r8, sb
	ble _0807BA90
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_0807BA4C:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _0807BA4C
	mov sb, r8
	b _0807BA90
_0807BA74:
	cmp sb, r8
	ble _0807BA82
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _0807BA88
_0807BA82:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_0807BA88:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_0807BA90:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _0807BB38
	mov r2, ip
	cmp r2, #0
	beq _0807BAB2
	adds r1, r7, #0
	adds r0, r6, #0
	bl __negdi2
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _0807BABE
_0807BAB2:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_0807BABE:
	cmp r3, #0
	blt _0807BAD4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _0807BAEC
_0807BAD4:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl __negdi2
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_0807BAEC:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_0807BAF8:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _0807BB34
	cmp r3, r0
	bhi _0807BB50
	cmp r3, r0
	bne _0807BB0E
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _0807BB50
_0807BB0E:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _0807BAF8
	.align 2, 0
_0807BB34: .4byte 0x0FFFFFFF
_0807BB38:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_0807BB50:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _0807BB94
	cmp r1, r0
	bls _0807BB86
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_0807BB86:
	mov r0, sl
_0807BB88:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BB94: .4byte 0x1FFFFFFF

	THUMB_FUNC_START __adddf3
__adddf3: @ 0x0807BB98
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	THUMB_FUNC_START __subdf3
__subdf3: @ 0x0807BBC8
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	THUMB_FUNC_START __muldf3
__muldf3: @ 0x0807BC00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _0807BC36
	movs r0, #1
_0807BC36:
	cmp r0, #0
	bne _0807BC9A
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0807BC44
	movs r2, #1
_0807BC44:
	cmp r2, #0
	beq _0807BC4C
	ldr r0, [sp, #4]
	b _0807BCBC
_0807BC4C:
	movs r2, #0
	cmp r1, #4
	bne _0807BC54
	movs r2, #1
_0807BC54:
	cmp r2, #0
	beq _0807BC66
	movs r1, #0
	cmp r0, #2
	bne _0807BC60
	movs r1, #1
_0807BC60:
	cmp r1, #0
	bne _0807BC7E
	b _0807BC9A
_0807BC66:
	movs r2, #0
	cmp r0, #4
	bne _0807BC6E
	movs r2, #1
_0807BC6E:
	cmp r2, #0
	beq _0807BC8E
	movs r0, #0
	cmp r1, #2
	bne _0807BC7A
	movs r0, #1
_0807BC7A:
	cmp r0, #0
	beq _0807BC88
_0807BC7E:
	ldr r0, _0807BC84
	b _0807BE86
	.align 2, 0
_0807BC84: .4byte gUnknown_03000920
_0807BC88:
	mov r1, r8
	ldr r0, [r1, #4]
	b _0807BCBC
_0807BC8E:
	movs r2, #0
	cmp r1, #2
	bne _0807BC96
	movs r2, #1
_0807BC96:
	cmp r2, #0
	beq _0807BCAC
_0807BC9A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0807BE86
_0807BCAC:
	movs r1, #0
	cmp r0, #2
	bne _0807BCB4
	movs r1, #1
_0807BCB4:
	cmp r1, #0
	beq _0807BCCC
	mov r2, r8
	ldr r0, [r2, #4]
_0807BCBC:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _0807BE86
_0807BCCC:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _0807BD44
	cmp r7, r3
	bne _0807BD4C
	cmp r6, r2
	bls _0807BD4C
_0807BD44:
	ldr r5, _0807BE9C
	ldr r4, _0807BE98
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0807BD4C:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _0807BD68
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _0807BD78
	cmp r0, r6
	bls _0807BD78
_0807BD68:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0807BD78:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _0807BEA0
	cmp r5, r0
	bls _0807BDFA
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_0807BDBE:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _0807BDE4
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_0807BDE4:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _0807BDBE
	mov r0, ip
	str r0, [sp, #0x30]
_0807BDFA:
	ldr r0, _0807BEA4
	cmp r5, r0
	bhi _0807BE4C
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_0807BE0C:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _0807BE36
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_0807BE36:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _0807BE0C
	mov r1, ip
	str r1, [sp, #0x30]
_0807BE4C:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0807BE7A
	cmp r2, #0
	bne _0807BE7A
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0807BE72
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _0807BE7A
_0807BE72:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_0807BE7A:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_0807BE86:
	bl __pack_d
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BE98: .4byte 0x00000000
_0807BE9C: .4byte 0x00000001
_0807BEA0: .4byte 0x1FFFFFFF
_0807BEA4: .4byte 0x0FFFFFFF

	THUMB_FUNC_START __divdf3
__divdf3: @ 0x0807BEA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _0807BED2
	movs r0, #1
_0807BED2:
	cmp r0, #0
	beq _0807BEDA
	mov r1, sp
	b _0807C01C
_0807BEDA:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _0807BEE6
	movs r0, #1
_0807BEE6:
	cmp r0, #0
	beq _0807BEEE
	adds r1, r4, #0
	b _0807C01C
_0807BEEE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _0807BEFE
	movs r0, #1
_0807BEFE:
	cmp r0, #0
	bne _0807BF0E
	movs r4, #0
	cmp r3, #2
	bne _0807BF0A
	movs r4, #1
_0807BF0A:
	cmp r4, #0
	beq _0807BF20
_0807BF0E:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _0807BF18
	b _0807C01C
_0807BF18:
	ldr r1, _0807BF1C
	b _0807C01C
	.align 2, 0
_0807BF1C: .4byte gUnknown_03000920
_0807BF20:
	movs r0, #0
	cmp r2, #4
	bne _0807BF28
	movs r0, #1
_0807BF28:
	cmp r0, #0
	beq _0807BF3A
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _0807C01C
_0807BF3A:
	movs r0, #0
	cmp r2, #2
	bne _0807BF42
	movs r0, #1
_0807BF42:
	cmp r0, #0
	beq _0807BF4E
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _0807C01A
_0807BF4E:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0807BF72
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _0807BF86
	cmp r0, r4
	bls _0807BF86
_0807BF72:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_0807BF86:
	ldr r7, _0807C02C
	ldr r6, _0807C028
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0807BF92:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0807BFB6
	cmp r1, r5
	bne _0807BFA2
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _0807BFB6
_0807BFA2:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_0807BFB6:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _0807BF92
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0807C010
	cmp r2, #0
	bne _0807C010
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0807C000
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0807C010
_0807C000:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_0807C010:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_0807C01A:
	mov r1, ip
_0807C01C:
	adds r0, r1, #0
	bl __pack_d
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C028: .4byte 0x00000000
_0807C02C: .4byte 0x10000000

	THUMB_FUNC_START __fpcmp_parts_d
__fpcmp_parts_d: @ 0x0807C030
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _0807C040
	movs r0, #1
_0807C040:
	cmp r0, #0
	bne _0807C052
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0807C04E
	movs r0, #1
_0807C04E:
	cmp r0, #0
	beq _0807C056
_0807C052:
	movs r0, #1
	b _0807C12C
_0807C056:
	movs r0, #0
	cmp r1, #4
	bne _0807C05E
	movs r0, #1
_0807C05E:
	cmp r0, #0
	beq _0807C076
	movs r0, #0
	cmp r2, #4
	bne _0807C06A
	movs r0, #1
_0807C06A:
	cmp r0, #0
	beq _0807C076
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _0807C12C
_0807C076:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _0807C080
	movs r1, #1
_0807C080:
	cmp r1, #0
	bne _0807C0CE
	movs r1, #0
	cmp r2, #4
	bne _0807C08C
	movs r1, #1
_0807C08C:
	cmp r1, #0
	beq _0807C09E
_0807C090:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0807C0D8
	movs r1, #1
	b _0807C0D8
_0807C09E:
	movs r1, #0
	cmp r0, #2
	bne _0807C0A6
	movs r1, #1
_0807C0A6:
	cmp r1, #0
	beq _0807C0B6
	movs r1, #0
	cmp r2, #2
	bne _0807C0B2
	movs r1, #1
_0807C0B2:
	cmp r1, #0
	bne _0807C12A
_0807C0B6:
	movs r1, #0
	cmp r0, #2
	bne _0807C0BE
	movs r1, #1
_0807C0BE:
	cmp r1, #0
	bne _0807C090
	movs r0, #0
	cmp r2, #2
	bne _0807C0CA
	movs r0, #1
_0807C0CA:
	cmp r0, #0
	beq _0807C0DC
_0807C0CE:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _0807C0D8
	subs r1, #2
_0807C0D8:
	adds r0, r1, #0
	b _0807C12C
_0807C0DC:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _0807C0EE
_0807C0E4:
	movs r0, #1
	cmp r4, #0
	beq _0807C12C
	subs r0, #2
	b _0807C12C
_0807C0EE:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _0807C0E4
	cmp r1, r0
	bge _0807C106
_0807C0FA:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _0807C12C
	movs r0, #1
	b _0807C12C
_0807C106:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _0807C0E4
	cmp r3, r2
	bne _0807C11A
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _0807C0E4
_0807C11A:
	cmp r2, r3
	bhi _0807C0FA
	cmp r2, r3
	bne _0807C12A
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _0807C0FA
_0807C12A:
	movs r0, #0
_0807C12C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	THUMB_FUNC_START __cmpdf2
__cmpdf2: @ 0x0807C130
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START __eqdf2
__eqdf2: @ 0x0807C15C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807C184
	movs r1, #1
_0807C184:
	cmp r1, #0
	bne _0807C196
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0807C192
	movs r1, #1
_0807C192:
	cmp r1, #0
	beq _0807C19A
_0807C196:
	movs r0, #1
	b _0807C1A2
_0807C19A:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0807C1A2:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START __nedf2
__nedf2: @ 0x0807C1A8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807C1D0
	movs r1, #1
_0807C1D0:
	cmp r1, #0
	bne _0807C1E2
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0807C1DE
	movs r1, #1
_0807C1DE:
	cmp r1, #0
	beq _0807C1E6
_0807C1E2:
	movs r0, #1
	b _0807C1EE
_0807C1E6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0807C1EE:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START __gtdf2
__gtdf2: @ 0x0807C1F4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807C21C
	movs r1, #1
_0807C21C:
	cmp r1, #0
	bne _0807C22E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0807C22A
	movs r1, #1
_0807C22A:
	cmp r1, #0
	beq _0807C234
_0807C22E:
	movs r0, #1
	rsbs r0, r0, #0
	b _0807C23C
_0807C234:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0807C23C:
	add sp, #0x38
	pop {r4, pc}

	THUMB_FUNC_START __gedf2
__gedf2: @ 0x0807C240
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807C268
	movs r1, #1
_0807C268:
	cmp r1, #0
	bne _0807C27A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0807C276
	movs r1, #1
_0807C276:
	cmp r1, #0
	beq _0807C280
_0807C27A:
	movs r0, #1
	rsbs r0, r0, #0
	b _0807C288
_0807C280:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0807C288:
	add sp, #0x38
	pop {r4, pc}

	THUMB_FUNC_START __ltdf2
__ltdf2: @ 0x0807C28C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807C2B4
	movs r1, #1
_0807C2B4:
	cmp r1, #0
	bne _0807C2C6
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0807C2C2
	movs r1, #1
_0807C2C2:
	cmp r1, #0
	beq _0807C2CA
_0807C2C6:
	movs r0, #1
	b _0807C2D2
_0807C2CA:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0807C2D2:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START __ledf2
__ledf2: @ 0x0807C2D8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807C300
	movs r1, #1
_0807C300:
	cmp r1, #0
	bne _0807C312
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0807C30E
	movs r1, #1
_0807C30E:
	cmp r1, #0
	beq _0807C316
_0807C312:
	movs r0, #1
	b _0807C31E
_0807C316:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0807C31E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START __floatsidf
__floatsidf: @ 0x0807C324
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _0807C33C
	movs r0, #2
	str r0, [sp]
	b _0807C392
_0807C33C:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _0807C362
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _0807C35C
	ldr r1, _0807C358
	ldr r0, _0807C354
	b _0807C398
	.align 2, 0
_0807C354: .4byte 0xC1E00000
_0807C358: .4byte 0x00000000
_0807C35C:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _0807C366
_0807C362:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_0807C366:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _0807C39C
	cmp r0, r1
	bhi _0807C392
	adds r5, r1, #0
	ldr r4, [sp, #8]
_0807C376:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _0807C376
	str r4, [sp, #8]
_0807C392:
	mov r0, sp
	bl __pack_d
_0807C398:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0807C39C: .4byte 0x0FFFFFFF

	THUMB_FUNC_START __fixdfsi
__fixdfsi: @ 0x0807C3A0
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0807C3BA
	movs r1, #1
_0807C3BA:
	cmp r1, #0
	bne _0807C3EE
	movs r1, #0
	cmp r0, #1
	bhi _0807C3C6
	movs r1, #1
_0807C3C6:
	cmp r1, #0
	bne _0807C3EE
	movs r1, #0
	cmp r0, #4
	bne _0807C3D2
	movs r1, #1
_0807C3D2:
	cmp r1, #0
	beq _0807C3E8
_0807C3D6:
	ldr r0, [sp, #4]
	ldr r1, _0807C3E4
	cmp r0, #0
	beq _0807C40C
	adds r1, #1
	b _0807C40C
	.align 2, 0
_0807C3E4: .4byte 0x7FFFFFFF
_0807C3E8:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _0807C3F2
_0807C3EE:
	movs r0, #0
	b _0807C40E
_0807C3F2:
	cmp r0, #0x1e
	bgt _0807C3D6
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __lshrdi3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0807C40C
	rsbs r1, r1, #0
_0807C40C:
	adds r0, r1, #0
_0807C40E:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	THUMB_FUNC_START __negdf2
__negdf2: @ 0x0807C414
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0807C42E
	movs r1, #1
_0807C42E:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_d
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	THUMB_FUNC_START __make_dp
__make_dp: @ 0x0807C43C
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl __pack_d
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	THUMB_FUNC_START __truncdfsf2
__truncdfsf2: @ 0x0807C464
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _0807C4A4
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _0807C494
	movs r0, #1
	orrs r5, r0
_0807C494:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl __make_fp
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_0807C4A4: .4byte 0x3FFFFFFF

	THUMB_FUNC_START __pack_f
__pack_f: @ 0x0807C4A8
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _0807C4BA
	movs r1, #1
_0807C4BA:
	cmp r1, #0
	beq _0807C4C8
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _0807C52E
_0807C4C8:
	movs r1, #0
	cmp r3, #4
	bne _0807C4D0
	movs r1, #1
_0807C4D0:
	cmp r1, #0
	bne _0807C504
	movs r1, #0
	cmp r3, #2
	bne _0807C4DC
	movs r1, #1
_0807C4DC:
	cmp r1, #0
	beq _0807C4E4
	movs r2, #0
	b _0807C52E
_0807C4E4:
	cmp r2, #0
	beq _0807C52E
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _0807C500
	subs r0, r3, r0
	cmp r0, #0x19
	ble _0807C4FC
	movs r2, #0
	b _0807C52C
_0807C4FC:
	lsrs r2, r0
	b _0807C52C
_0807C500:
	cmp r0, #0x7f
	ble _0807C50A
_0807C504:
	movs r5, #0xff
	movs r2, #0
	b _0807C52E
_0807C50A:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _0807C522
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0807C524
	adds r2, #0x40
	b _0807C524
_0807C522:
	adds r2, #0x3f
_0807C524:
	cmp r2, #0
	bge _0807C52C
	lsrs r2, r2, #1
	adds r5, #1
_0807C52C:
	lsrs r2, r2, #7
_0807C52E:
	ldr r0, _0807C550
	ands r2, r0
	ldr r0, _0807C554
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _0807C558
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _0807C55C
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C550: .4byte 0x007FFFFF
_0807C554: .4byte 0xFF800000
_0807C558: .4byte 0x807FFFFF
_0807C55C: .4byte 0x7FFFFFFF

	THUMB_FUNC_START __unpack_f
__unpack_f: @ 0x0807C560
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _0807C5A4
	cmp r2, #0
	bne _0807C580
	movs r0, #2
	str r0, [r3]
	b _0807C5D8
_0807C580:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _0807C5A0
	cmp r2, r1
	bhi _0807C5C0
	adds r0, r4, #0
_0807C594:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _0807C594
	str r0, [r3, #8]
	b _0807C5C0
	.align 2, 0
_0807C5A0: .4byte 0x3FFFFFFF
_0807C5A4:
	cmp r1, #0xff
	bne _0807C5C4
	cmp r2, #0
	bne _0807C5B2
	movs r0, #4
	str r0, [r3]
	b _0807C5D8
_0807C5B2:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _0807C5BE
	movs r0, #1
_0807C5BE:
	str r0, [r3]
_0807C5C0:
	str r2, [r3, #0xc]
	b _0807C5D8
_0807C5C4:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_0807C5D8:
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START _fpadd_parts_0
_fpadd_parts_0: @ 0x0807C5DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0807C5F2
	movs r0, #1
_0807C5F2:
	cmp r0, #0
	beq _0807C5FA
_0807C5F6:
	adds r0, r6, #0
	b _0807C750
_0807C5FA:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _0807C604
	movs r1, #1
_0807C604:
	cmp r1, #0
	bne _0807C678
	movs r1, #0
	cmp r2, #4
	bne _0807C610
	movs r1, #1
_0807C610:
	cmp r1, #0
	beq _0807C630
	movs r1, #0
	cmp r0, #4
	bne _0807C61C
	movs r1, #1
_0807C61C:
	cmp r1, #0
	beq _0807C5F6
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0807C5F6
	ldr r0, _0807C62C
	b _0807C750
	.align 2, 0
_0807C62C: .4byte gUnknown_03000938
_0807C630:
	movs r1, #0
	cmp r0, #4
	bne _0807C638
	movs r1, #1
_0807C638:
	cmp r1, #0
	bne _0807C678
	movs r1, #0
	cmp r0, #2
	bne _0807C644
	movs r1, #1
_0807C644:
	cmp r1, #0
	beq _0807C66A
	movs r0, #0
	cmp r2, #2
	bne _0807C650
	movs r0, #1
_0807C650:
	cmp r0, #0
	beq _0807C5F6
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _0807C74E
_0807C66A:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _0807C674
	movs r1, #1
_0807C674:
	cmp r1, #0
	beq _0807C67C
_0807C678:
	adds r0, r7, #0
	b _0807C750
_0807C67C:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _0807C68C
	rsbs r0, r0, #0
_0807C68C:
	cmp r0, #0x1f
	bgt _0807C6D0
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _0807C6B2
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_0807C6A0:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _0807C6A0
	adds r3, r1, #0
_0807C6B2:
	cmp r3, r1
	ble _0807C6E2
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_0807C6BC:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _0807C6BC
	adds r1, r3, #0
	b _0807C6E2
_0807C6D0:
	cmp r1, r3
	ble _0807C6D8
	movs r4, #0
	b _0807C6DC
_0807C6D8:
	adds r1, r3, #0
	movs r2, #0
_0807C6DC:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_0807C6E2:
	cmp r6, r8
	beq _0807C72C
	cmp r6, #0
	beq _0807C6EE
	subs r3, r4, r2
	b _0807C6F0
_0807C6EE:
	subs r3, r2, r4
_0807C6F0:
	cmp r3, #0
	blt _0807C6FE
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _0807C708
_0807C6FE:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_0807C708:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _0807C728
	cmp r0, r2
	bhi _0807C734
_0807C712:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _0807C712
	b _0807C734
	.align 2, 0
_0807C728: .4byte 0x3FFFFFFE
_0807C72C:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_0807C734:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _0807C74E
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_0807C74E:
	adds r0, r5, #0
_0807C750:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	THUMB_FUNC_START __addsf3
__addsf3: @ 0x0807C758
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	THUMB_FUNC_START __subsf3
__subsf3: @ 0x0807C784
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	THUMB_FUNC_START __mulsf3
__mulsf3: @ 0x0807C7B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _0807C7EA
	movs r0, #1
_0807C7EA:
	cmp r0, #0
	bne _0807C848
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0807C7F8
	movs r2, #1
_0807C7F8:
	cmp r2, #0
	beq _0807C800
	ldr r0, [sp, #4]
	b _0807C868
_0807C800:
	movs r2, #0
	cmp r1, #4
	bne _0807C808
	movs r2, #1
_0807C808:
	cmp r2, #0
	beq _0807C81A
	movs r1, #0
	cmp r0, #2
	bne _0807C814
	movs r1, #1
_0807C814:
	cmp r1, #0
	bne _0807C832
	b _0807C848
_0807C81A:
	movs r2, #0
	cmp r0, #4
	bne _0807C822
	movs r2, #1
_0807C822:
	cmp r2, #0
	beq _0807C83C
	movs r0, #0
	cmp r1, #2
	bne _0807C82E
	movs r0, #1
_0807C82E:
	cmp r0, #0
	beq _0807C866
_0807C832:
	ldr r0, _0807C838
	b _0807C90A
	.align 2, 0
_0807C838: .4byte gUnknown_03000938
_0807C83C:
	movs r2, #0
	cmp r1, #2
	bne _0807C844
	movs r2, #1
_0807C844:
	cmp r2, #0
	beq _0807C85A
_0807C848:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0807C90A
_0807C85A:
	movs r1, #0
	cmp r0, #2
	bne _0807C862
	movs r1, #1
_0807C862:
	cmp r1, #0
	beq _0807C878
_0807C866:
	ldr r0, [r7, #4]
_0807C868:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _0807C90A
_0807C878:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl __muldi3
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _0807C8C4
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_0807C8AE:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0807C8BC
	lsrs r6, r6, #1
	orrs r6, r1
_0807C8BC:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _0807C8AE
	str r4, [sp, #0x28]
_0807C8C4:
	ldr r0, _0807C918
	cmp r5, r0
	bhi _0807C8EA
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_0807C8D4:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _0807C8E2
	orrs r5, r3
_0807C8E2:
	lsls r6, r6, #1
	cmp r5, r2
	bls _0807C8D4
	str r1, [sp, #0x28]
_0807C8EA:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _0807C900
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _0807C8FE
	cmp r6, #0
	beq _0807C900
_0807C8FE:
	adds r5, #0x40
_0807C900:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_0807C90A:
	bl __pack_f
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C918: .4byte 0x3FFFFFFF

	THUMB_FUNC_START __divsf3
__divsf3: @ 0x0807C91C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl __unpack_f
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _0807C942
	movs r0, #1
_0807C942:
	cmp r0, #0
	beq _0807C94A
	mov r1, sp
	b _0807C9FC
_0807C94A:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _0807C956
	movs r0, #1
_0807C956:
	cmp r0, #0
	beq _0807C95E
	adds r1, r5, #0
	b _0807C9FC
_0807C95E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _0807C96E
	movs r0, #1
_0807C96E:
	cmp r0, #0
	bne _0807C97E
	movs r0, #0
	cmp r3, #2
	bne _0807C97A
	movs r0, #1
_0807C97A:
	cmp r0, #0
	beq _0807C990
_0807C97E:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _0807C9FC
	ldr r1, _0807C98C
	b _0807C9FC
	.align 2, 0
_0807C98C: .4byte gUnknown_03000938
_0807C990:
	movs r1, #0
	cmp r2, #4
	bne _0807C998
	movs r1, #1
_0807C998:
	cmp r1, #0
	beq _0807C9A4
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _0807C9FC
_0807C9A4:
	movs r0, #0
	cmp r2, #2
	bne _0807C9AC
	movs r0, #1
_0807C9AC:
	cmp r0, #0
	beq _0807C9B6
	movs r0, #4
	str r0, [r4]
	b _0807C9FA
_0807C9B6:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _0807C9CC
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_0807C9CC:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_0807C9D2:
	cmp r2, r3
	blo _0807C9DA
	orrs r1, r0
	subs r2, r2, r3
_0807C9DA:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _0807C9D2
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _0807C9F8
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807C9F6
	cmp r2, #0
	beq _0807C9F8
_0807C9F6:
	adds r1, #0x40
_0807C9F8:
	str r1, [r4, #0xc]
_0807C9FA:
	adds r1, r4, #0
_0807C9FC:
	adds r0, r1, #0
	bl __pack_f
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	THUMB_FUNC_START __fpcmp_parts_f
__fpcmp_parts_f: @ 0x0807CA08
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _0807CA16
	movs r0, #1
_0807CA16:
	cmp r0, #0
	bne _0807CA28
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _0807CA24
	movs r0, #1
_0807CA24:
	cmp r0, #0
	beq _0807CA2C
_0807CA28:
	movs r0, #1
	b _0807CAEA
_0807CA2C:
	movs r0, #0
	cmp r2, #4
	bne _0807CA34
	movs r0, #1
_0807CA34:
	cmp r0, #0
	beq _0807CA4C
	movs r0, #0
	cmp r3, #4
	bne _0807CA40
	movs r0, #1
_0807CA40:
	cmp r0, #0
	beq _0807CA4C
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _0807CAEA
_0807CA4C:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _0807CA56
	movs r2, #1
_0807CA56:
	cmp r2, #0
	bne _0807CAA4
	movs r2, #0
	cmp r3, #4
	bne _0807CA62
	movs r2, #1
_0807CA62:
	cmp r2, #0
	beq _0807CA74
_0807CA66:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0807CAAE
	movs r1, #1
	b _0807CAAE
_0807CA74:
	movs r2, #0
	cmp r0, #2
	bne _0807CA7C
	movs r2, #1
_0807CA7C:
	cmp r2, #0
	beq _0807CA8C
	movs r2, #0
	cmp r3, #2
	bne _0807CA88
	movs r2, #1
_0807CA88:
	cmp r2, #0
	bne _0807CAE8
_0807CA8C:
	movs r2, #0
	cmp r0, #2
	bne _0807CA94
	movs r2, #1
_0807CA94:
	cmp r2, #0
	bne _0807CA66
	movs r0, #0
	cmp r3, #2
	bne _0807CAA0
	movs r0, #1
_0807CAA0:
	cmp r0, #0
	beq _0807CAB2
_0807CAA4:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _0807CAAE
	subs r1, #2
_0807CAAE:
	adds r0, r1, #0
	b _0807CAEA
_0807CAB2:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _0807CAC4
_0807CABA:
	movs r0, #1
	cmp r3, #0
	beq _0807CAEA
	subs r0, #2
	b _0807CAEA
_0807CAC4:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _0807CABA
	cmp r2, r0
	bge _0807CADC
_0807CAD0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _0807CAEA
	movs r0, #1
	b _0807CAEA
_0807CADC:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _0807CABA
	cmp r0, r1
	blo _0807CAD0
_0807CAE8:
	movs r0, #0
_0807CAEA:
	pop {r4, pc}

	THUMB_FUNC_START __cmpsf2
__cmpsf2: @ 0x0807CAEC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START __eqsf2
__eqsf2: @ 0x0807CB14
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807CB38
	movs r1, #1
_0807CB38:
	cmp r1, #0
	bne _0807CB4A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0807CB46
	movs r1, #1
_0807CB46:
	cmp r1, #0
	beq _0807CB4E
_0807CB4A:
	movs r0, #1
	b _0807CB56
_0807CB4E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0807CB56:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START __nesf2
__nesf2: @ 0x0807CB5C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807CB80
	movs r1, #1
_0807CB80:
	cmp r1, #0
	bne _0807CB92
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0807CB8E
	movs r1, #1
_0807CB8E:
	cmp r1, #0
	beq _0807CB96
_0807CB92:
	movs r0, #1
	b _0807CB9E
_0807CB96:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0807CB9E:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START __gtsf2
__gtsf2: @ 0x0807CBA4
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807CBC8
	movs r1, #1
_0807CBC8:
	cmp r1, #0
	bne _0807CBDA
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0807CBD6
	movs r1, #1
_0807CBD6:
	cmp r1, #0
	beq _0807CBE0
_0807CBDA:
	movs r0, #1
	rsbs r0, r0, #0
	b _0807CBE8
_0807CBE0:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0807CBE8:
	add sp, #0x28
	pop {r4, pc}

	THUMB_FUNC_START __gesf2
__gesf2: @ 0x0807CBEC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807CC10
	movs r1, #1
_0807CC10:
	cmp r1, #0
	bne _0807CC22
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0807CC1E
	movs r1, #1
_0807CC1E:
	cmp r1, #0
	beq _0807CC28
_0807CC22:
	movs r0, #1
	rsbs r0, r0, #0
	b _0807CC30
_0807CC28:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0807CC30:
	add sp, #0x28
	pop {r4, pc}

	THUMB_FUNC_START __ltsf2
__ltsf2: @ 0x0807CC34
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807CC58
	movs r1, #1
_0807CC58:
	cmp r1, #0
	bne _0807CC6A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0807CC66
	movs r1, #1
_0807CC66:
	cmp r1, #0
	beq _0807CC6E
_0807CC6A:
	movs r0, #1
	b _0807CC76
_0807CC6E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0807CC76:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START __lesf2
__lesf2: @ 0x0807CC7C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0807CCA0
	movs r1, #1
_0807CCA0:
	cmp r1, #0
	bne _0807CCB2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0807CCAE
	movs r1, #1
_0807CCAE:
	cmp r1, #0
	beq _0807CCB6
_0807CCB2:
	movs r0, #1
	b _0807CCBE
_0807CCB6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0807CCBE:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START __floatsisf
__floatsisf: @ 0x0807CCC4
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _0807CCDC
	movs r0, #2
	str r0, [sp]
	b _0807CD14
_0807CCDC:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _0807CCFA
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _0807CCF4
	ldr r0, _0807CCF0
	b _0807CD1A
	.align 2, 0
_0807CCF0: .4byte 0xCF000000
_0807CCF4:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _0807CCFC
_0807CCFA:
	str r1, [sp, #0xc]
_0807CCFC:
	ldr r2, [sp, #0xc]
	ldr r3, _0807CD20
	cmp r2, r3
	bhi _0807CD14
	ldr r1, [sp, #8]
_0807CD06:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _0807CD06
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_0807CD14:
	mov r0, sp
	bl __pack_f
_0807CD1A:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_0807CD20: .4byte 0x3FFFFFFF

	THUMB_FUNC_START __fixsfsi
__fixsfsi: @ 0x0807CD24
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0807CD3C
	movs r1, #1
_0807CD3C:
	cmp r1, #0
	bne _0807CD6E
	movs r1, #0
	cmp r0, #1
	bhi _0807CD48
	movs r1, #1
_0807CD48:
	cmp r1, #0
	bne _0807CD6E
	movs r1, #0
	cmp r0, #4
	bne _0807CD54
	movs r1, #1
_0807CD54:
	cmp r1, #0
	beq _0807CD68
_0807CD58:
	ldr r0, [sp, #4]
	ldr r1, _0807CD64
	cmp r0, #0
	beq _0807CD86
	adds r1, #1
	b _0807CD86
	.align 2, 0
_0807CD64: .4byte 0x7FFFFFFF
_0807CD68:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _0807CD72
_0807CD6E:
	movs r0, #0
	b _0807CD88
_0807CD72:
	cmp r1, #0x1e
	bgt _0807CD58
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0807CD86
	rsbs r1, r1, #0
_0807CD86:
	adds r0, r1, #0
_0807CD88:
	add sp, #0x14
	pop {pc}

	THUMB_FUNC_START __negsf2
__negsf2: @ 0x0807CD8C
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0807CDA4
	movs r1, #1
_0807CDA4:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_f
	add sp, #0x14
	pop {pc}

	THUMB_FUNC_START __make_fp
__make_fp: @ 0x0807CDB0
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl __pack_f
	add sp, #0x10
	pop {pc}
	.align 2, 0

	THUMB_FUNC_START __extendsfdf2
__extendsfdf2: @ 0x0807CDC8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl __unpack_f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl __make_dp
	add sp, #0x18
	pop {r4, r5, r6, pc}

	THUMB_FUNC_START __lshrdi3
__lshrdi3: @ 0x0807CDF4
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _0807CE24
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _0807CE10
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _0807CE20
_0807CE10:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_0807CE20:
	adds r1, r4, #0
	adds r0, r3, #0
_0807CE24:
	pop {r4, r5, r6, pc}
	.align 2, 0

	THUMB_FUNC_START __muldi3
__muldi3: @ 0x0807CE28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0807CE94
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _0807CE68
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0807CE68:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807CE94: .4byte 0x0000FFFF

	THUMB_FUNC_START __negdi2
__negdi2: @ 0x0807CE98
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0807CEA6
	subs r1, #1
_0807CEA6:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

	THUMB_FUNC_START atexit
atexit: @ 0x0807CEB0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _0807CEE4
	ldr r1, [r5]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r1, r4
	ldr r3, [r0]
	cmp r3, #0
	bne _0807CECC
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r3, r1, r2
	str r3, [r0]
_0807CECC:
	ldr r0, [r3, #4]
	cmp r0, #0x1f
	ble _0807CEF6
	movs r0, #0x88
	bl sub_8012D60
	adds r3, r0, #0
	cmp r3, #0
	bne _0807CEE8
	movs r0, #1
	rsbs r0, r0, #0
	b _0807CF08
	.align 2, 0
_0807CEE4: .4byte gUnknown_083F7334
_0807CEE8:
	movs r0, #0
	str r0, [r3, #4]
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r1, [r0]
	str r1, [r3]
	str r3, [r0]
_0807CEF6:
	ldr r0, [r3, #4]
	lsls r2, r0, #2
	adds r1, r3, #0
	adds r1, #8
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	str r0, [r3, #4]
	movs r0, #0
_0807CF08:
	pop {r4, r5, r6, pc}
    .align 2, 0
