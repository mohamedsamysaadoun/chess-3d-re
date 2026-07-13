// Function: OpeningBook_GetOpeningMove
// RVA: 0xee3c0c
// Description: Get opening move
// Size: 1004 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee3c0c: fe 67 bc a9           stp      x30, x25, [sp, #-0x40]!
0x00ee3c10: f8 5f 01 a9           stp      x24, x23, [sp, #0x10]
0x00ee3c14: f6 57 02 a9           stp      x22, x21, [sp, #0x20]
0x00ee3c18: f4 4f 03 a9           stp      x20, x19, [sp, #0x30]
0x00ee3c1c: 08 0c 40 f9           ldr      x8, [x0, #0x18]
0x00ee3c20: 28 05 00 b4           cbz      x8, #0xee3cc4
0x00ee3c24: f3 03 00 aa           mov      x19, x0
0x00ee3c28: f4 03 01 2a           mov      w20, w1
0x00ee3c2c: e0 03 1f 2a           mov      w0, wzr
0x00ee3c30: f6 03 1f 2a           mov      w22, wzr
0x00ee3c34: e9 03 1f 2a           mov      w9, wzr
0x00ee3c38: f7 03 1f 2a           mov      w23, wzr
0x00ee3c3c: df 02 14 6b           cmp      w22, w20
0x00ee3c40: 4a 04 00 54           b.ge     #0xee3cc8
0x00ee3c44: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee3c48: 3f 01 0a 6b           cmp      w9, w10
0x00ee3c4c: ea 03 00 54           b.ge     #0xee3cc8
0x00ee3c50: 62 04 00 54           b.hs     #0xee3cdc
0x00ee3c54: 38 05 00 11           add      w24, w9, #1
0x00ee3c58: 1f 03 0a 6b           cmp      w24, w10
0x00ee3c5c: 02 04 00 54           b.hs     #0xee3cdc
0x00ee3c60: 09 c9 29 8b           add      x9, x8, w9, sxtw #2
0x00ee3c64: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee3c68: 0a c9 38 8b           add      x10, x8, w24, sxtw #2
0x00ee3c6c: 55 21 40 b9           ldr      w21, [x10, #0x20]
0x00ee3c70: 36 01 16 0b           add      w22, w9, w22
0x00ee3c74: df 02 14 6b           cmp      w22, w20
0x00ee3c78: 01 02 00 54           b.ne     #0xee3cb8
0x00ee3c7c: 60 0a 40 f9           ldr      x0, [x19, #0x10]
0x00ee3c80: 20 02 00 b4           cbz      x0, #0xee3cc4
0x00ee3c84: 08 00 40 f9           ldr      x8, [x0]
0x00ee3c88: 79 12 40 f9           ldr      x25, [x19, #0x20]
0x00ee3c8c: e1 03 15 2a           mov      w1, w21
0x00ee3c90: 09 89 5a a9           ldp      x9, x2, [x8, #0x1a8]
0x00ee3c94: 20 01 3f d6           blr      x9
0x00ee3c98: 79 01 00 b4           cbz      x25, #0xee3cc4
0x00ee3c9c: 29 1b 40 b9           ldr      w9, [x25, #0x18]
0x00ee3ca0: 08 00 17 0b           add      w8, w0, w23
0x00ee3ca4: 1f 01 09 6b           cmp      w8, w9
0x00ee3ca8: a2 01 00 54           b.hs     #0xee3cdc
0x00ee3cac: 28 c7 28 8b           add      x8, x25, w8, sxtw #1
0x00ee3cb0: 00 41 40 79           ldrh     w0, [x8, #0x20]
0x00ee3cb4: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee3cb8: b7 02 17 0b           add      w23, w21, w23
0x00ee3cbc: 09 07 00 11           add      w9, w24, #1
0x00ee3cc0: e8 fb ff b5           cbnz     x8, #0xee3c3c
0x00ee3cc4: 18 e8 fc 97           bl       #0xe1dd24
0x00ee3cc8: f4 4f 43 a9           ldp      x20, x19, [sp, #0x30]
0x00ee3ccc: f6 57 42 a9           ldp      x22, x21, [sp, #0x20]
0x00ee3cd0: f8 5f 41 a9           ldp      x24, x23, [sp, #0x10]
0x00ee3cd4: fe 67 c4 a8           ldp      x30, x25, [sp], #0x40
0x00ee3cd8: c0 03 5f d6           ret      
