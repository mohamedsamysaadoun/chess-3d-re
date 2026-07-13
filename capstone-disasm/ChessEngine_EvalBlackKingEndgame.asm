// Function: ChessEngine_EvalBlackKingEndgame
// RVA: 0xee7c8c
// Description: Eval black king endgame
// Size: 156 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee7c8c: fe 0f 1f f8           str      x30, [sp, #-0x10]!
0x00ee7c90: 08 44 40 f9           ldr      x8, [x0, #0x88]
0x00ee7c94: 88 04 00 b4           cbz      x8, #0xee7d24
0x00ee7c98: 09 09 40 f9           ldr      x9, [x8, #0x10]
0x00ee7c9c: 2a 01 40 b9           ldr      w10, [x9]
0x00ee7ca0: 5f 05 00 71           cmp      w10, #1
0x00ee7ca4: e9 03 00 54           b.ls     #0xee7d20
0x00ee7ca8: 29 09 40 f9           ldr      x9, [x9, #0x10]
0x00ee7cac: 3f 01 01 6b           cmp      w9, w1
0x00ee7cb0: 89 03 00 54           b.ls     #0xee7d20
0x00ee7cb4: 2a 7c 40 93           sxtw     x10, w1
0x00ee7cb8: 29 01 0a 8b           add      x9, x9, x10
0x00ee7cbc: 09 09 09 8b           add      x9, x8, x9, lsl #2
0x00ee7cc0: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee7cc4: 29 05 00 51           sub      w9, w9, #1
0x00ee7cc8: 3f 19 00 71           cmp      w9, #6
0x00ee7ccc: a8 00 00 54           b.hi     #0xee7ce0
0x00ee7cd0: 2b b3 ff f0           adrp     x11, #0x54e000
0x00ee7cd4: 6b c1 36 91           add      x11, x11, #0xdb0
0x00ee7cd8: 69 d9 69 b8           ldr      w9, [x11, w9, sxtw #2]
0x00ee7cdc: 02 00 00 14           b        #0xee7ce4
0x00ee7ce0: 69 02 80 12           mov      w9, #-0x14
0x00ee7ce4: 08 09 0a 8b           add      x8, x8, x10, lsl #2
0x00ee7ce8: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee7cec: a8 00 00 34           cbz      w8, #0xee7d00
0x00ee7cf0: 1f 09 00 71           cmp      w8, #2
0x00ee7cf4: c1 00 00 54           b.ne     #0xee7d0c
0x00ee7cf8: 28 01 80 12           mov      w8, #-0xa
0x00ee7cfc: 02 00 00 14           b        #0xee7d04
0x00ee7d00: c8 01 80 12           mov      w8, #-0xf
0x00ee7d04: 20 01 08 0b           add      w0, w9, w8
0x00ee7d08: 04 00 00 14           b        #0xee7d18
0x00ee7d0c: 2a 15 00 51           sub      w10, w9, #5
0x00ee7d10: 1f 0d 00 71           cmp      w8, #3
0x00ee7d14: 40 01 89 1a           csel     w0, w10, w9, eq
0x00ee7d18: fe 07 41 f8           ldr      x30, [sp], #0x10
0x00ee7d1c: c0 03 5f d6           ret      
