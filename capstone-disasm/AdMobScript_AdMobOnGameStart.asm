// Function: AdMobScript_AdMobOnGameStart
// RVA: 0xeb6cb0
// Description: Start-game ad (PATCHED→RET)
// Size: 208 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00eb6cb0: fe 57 be a9           stp      x30, x21, [sp, #-0x20]!
0x00eb6cb4: f4 4f 01 a9           stp      x20, x19, [sp, #0x10]
0x00eb6cb8: f5 9e 00 f0           adrp     x21, #0x2295000
0x00eb6cbc: 34 93 00 90           adrp     x20, #0x211a000
0x00eb6cc0: a8 66 56 39           ldrb     w8, [x21, #0x599]
0x00eb6cc4: 94 36 40 f9           ldr      x20, [x20, #0x68]
0x00eb6cc8: f3 03 00 aa           mov      x19, x0
0x00eb6ccc: 28 01 00 37           tbnz     w8, #0, #0xeb6cf0
0x00eb6cd0: 20 93 00 90           adrp     x0, #0x211a000
0x00eb6cd4: 00 34 40 f9           ldr      x0, [x0, #0x68]
0x00eb6cd8: 8b 9b fd 97           bl       #0xe1db04
0x00eb6cdc: 20 93 00 90           adrp     x0, #0x211a000
0x00eb6ce0: 00 c0 41 f9           ldr      x0, [x0, #0x380]
0x00eb6ce4: 88 9b fd 97           bl       #0xe1db04
0x00eb6ce8: 28 00 80 52           mov      w8, #1
0x00eb6cec: a8 66 16 39           strb     w8, [x21, #0x599]
0x00eb6cf0: 80 02 40 f9           ldr      x0, [x20]
0x00eb6cf4: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00eb6cf8: 68 00 00 35           cbnz     w8, #0xeb6d04
0x00eb6cfc: c4 9b fd 97           bl       #0xe1dc0c
0x00eb6d00: 80 02 40 f9           ldr      x0, [x20]
0x00eb6d04: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00eb6d08: 08 b1 40 39           ldrb     w8, [x8, #0x2c]
0x00eb6d0c: 88 00 00 34           cbz      w8, #0xeb6d1c
0x00eb6d10: f4 4f 41 a9           ldp      x20, x19, [sp, #0x10]
0x00eb6d14: fe 57 c2 a8           ldp      x30, x21, [sp], #0x20
0x00eb6d18: c0 03 5f d6           ret      
