ENTRY(__start)

MEMORY {
    ewram (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
    rom (rx) : ORIGIN = 0x08000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x6560;
        unk_03006560 = .;
        . += 0x10;
        unk_03006570 = .;
    } >iwram

    .text : ALIGN(4) {
        asm/crt0.o(.text);
        asm/incbin_pre.o(.text);
        src/main.o(.text);
        asm/incbin_post.o(.text);
    } >rom
}
