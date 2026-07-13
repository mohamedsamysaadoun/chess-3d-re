// Function: AdMobScript_AdMobInit
// RVA: 0xec9bcc
// Description: AdMob init (PATCHED→RET)
// Size: 136 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ec9bcc: fe 57 be a9           stp      x30, x21, [sp, #-0x20]!
0x00ec9bd0: f4 4f 01 a9           stp      x20, x19, [sp, #0x10]
0x00ec9bd4: 74 9e 00 90           adrp     x20, #0x2295000
0x00ec9bd8: 95 92 00 d0           adrp     x21, #0x211b000
0x00ec9bdc: 88 52 56 39           ldrb     w8, [x20, #0x594]
0x00ec9be0: b5 16 41 f9           ldr      x21, [x21, #0x228]
0x00ec9be4: f3 03 00 aa           mov      x19, x0
0x00ec9be8: 28 01 00 37           tbnz     w8, #0, #0xec9c0c
0x00ec9bec: 80 92 00 d0           adrp     x0, #0x211b000
0x00ec9bf0: 00 18 41 f9           ldr      x0, [x0, #0x230]
0x00ec9bf4: c4 4f fd 97           bl       #0xe1db04
0x00ec9bf8: 80 92 00 d0           adrp     x0, #0x211b000
0x00ec9bfc: 00 14 41 f9           ldr      x0, [x0, #0x228]
0x00ec9c00: c1 4f fd 97           bl       #0xe1db04
0x00ec9c04: 28 00 80 52           mov      w8, #1
0x00ec9c08: 88 52 16 39           strb     w8, [x20, #0x594]
0x00ec9c0c: a0 02 40 f9           ldr      x0, [x21]
0x00ec9c10: e1 03 1f aa           mov      x1, xzr
0x00ec9c14: 18 f9 3b 94           bl       #0x1dc8074
0x00ec9c18: c0 01 00 b4           cbz      x0, #0xec9c50
0x00ec9c1c: 88 92 00 d0           adrp     x8, #0x211b000
0x00ec9c20: 08 19 41 f9           ldr      x8, [x8, #0x230]
0x00ec9c24: 01 01 40 f9           ldr      x1, [x8]
0x00ec9c28: 5e 35 02 94           bl       #0xf571a0
0x00ec9c2c: 68 b2 40 f9           ldr      x8, [x19, #0x160]
0x00ec9c30: 08 01 00 b4           cbz      x8, #0xec9c50
0x00ec9c34: e0 00 00 b4           cbz      x0, #0xec9c50
0x00ec9c38: 00 39 40 bd           ldr      s0, [x8, #0x38]
0x00ec9c3c: e1 03 13 aa           mov      x1, x19
0x00ec9c40: f4 4f 41 a9           ldp      x20, x19, [sp, #0x10]
0x00ec9c44: e2 03 1f aa           mov      x2, xzr
0x00ec9c48: fe 57 c2 a8           ldp      x30, x21, [sp], #0x20
0x00ec9c4c: 3a 34 00 14           b        #0xed6d34
0x00ec9c50: 35 50 fd 97           bl       #0xe1dd24
