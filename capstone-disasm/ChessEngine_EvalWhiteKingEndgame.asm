// Function: ChessEngine_EvalWhiteKingEndgame
// RVA: 0xee7bec
// Description: Eval white king endgame
// Size: 160 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee7bec: fe 0f 1f f8           str      x30, [sp, #-0x10]!
0x00ee7bf0: 08 44 40 f9           ldr      x8, [x0, #0x88]
0x00ee7bf4: a8 04 00 b4           cbz      x8, #0xee7c88
0x00ee7bf8: 09 09 40 f9           ldr      x9, [x8, #0x10]
0x00ee7bfc: 2a 01 40 b9           ldr      w10, [x9]
0x00ee7c00: 2a 04 00 34           cbz      w10, #0xee7c84
0x00ee7c04: 2b 09 40 f9           ldr      x11, [x9, #0x10]
0x00ee7c08: 7f 01 01 6b           cmp      w11, w1
0x00ee7c0c: c9 03 00 54           b.ls     #0xee7c84
0x00ee7c10: 2c 7c 40 93           sxtw     x12, w1
0x00ee7c14: 09 09 0c 8b           add      x9, x8, x12, lsl #2
0x00ee7c18: 29 21 80 b9           ldrsw    x9, [x9, #0x20]
0x00ee7c1c: 3f 19 00 71           cmp      w9, #6
0x00ee7c20: a8 00 00 54           b.hi     #0xee7c34
0x00ee7c24: 2d b3 ff f0           adrp     x13, #0x54e000
0x00ee7c28: ad c1 31 91           add      x13, x13, #0xc70
0x00ee7c2c: a9 79 69 b8           ldr      w9, [x13, x9, lsl #2]
0x00ee7c30: 02 00 00 14           b        #0xee7c38
0x00ee7c34: 69 02 80 12           mov      w9, #-0x14
0x00ee7c38: 5f 05 00 71           cmp      w10, #1
0x00ee7c3c: 49 02 00 54           b.ls     #0xee7c84
0x00ee7c40: 6a 01 0c 8b           add      x10, x11, x12
0x00ee7c44: 08 09 0a 8b           add      x8, x8, x10, lsl #2
0x00ee7c48: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee7c4c: 1f 1d 00 71           cmp      w8, #7
0x00ee7c50: a0 00 00 54           b.eq     #0xee7c64
0x00ee7c54: 1f 15 00 71           cmp      w8, #5
0x00ee7c58: c1 00 00 54           b.ne     #0xee7c70
0x00ee7c5c: 28 01 80 12           mov      w8, #-0xa
0x00ee7c60: 02 00 00 14           b        #0xee7c68
0x00ee7c64: c8 01 80 12           mov      w8, #-0xf
0x00ee7c68: 20 01 08 0b           add      w0, w9, w8
0x00ee7c6c: 04 00 00 14           b        #0xee7c7c
0x00ee7c70: 2a 15 00 51           sub      w10, w9, #5
0x00ee7c74: 1f 11 00 71           cmp      w8, #4
0x00ee7c78: 40 01 89 1a           csel     w0, w10, w9, eq
0x00ee7c7c: fe 07 41 f8           ldr      x30, [sp], #0x10
0x00ee7c80: c0 03 5f d6           ret      
