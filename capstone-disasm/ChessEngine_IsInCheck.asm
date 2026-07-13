// Function: ChessEngine_IsInCheck
// RVA: 0xee5d38
// Description: Is in check
// Size: 128 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee5d38: fe 0f 1f f8           str      x30, [sp, #-0x10]!
0x00ee5d3c: 0a 0c 40 f9           ldr      x10, [x0, #0x18]
0x00ee5d40: aa 03 00 b4           cbz      x10, #0xee5db4
0x00ee5d44: 49 19 40 b9           ldr      w9, [x10, #0x18]
0x00ee5d48: e8 03 01 2a           mov      w8, w1
0x00ee5d4c: e1 03 1f aa           mov      x1, xzr
0x00ee5d50: 4a 81 00 91           add      x10, x10, #0x20
0x00ee5d54: 3f 00 09 eb           cmp      x1, x9
0x00ee5d58: c2 02 00 54           b.hs     #0xee5db0
0x00ee5d5c: 4b 79 61 b8           ldr      w11, [x10, x1, lsl #2]
0x00ee5d60: 7f 15 00 71           cmp      w11, #5
0x00ee5d64: 41 01 00 54           b.ne     #0xee5d8c
0x00ee5d68: 0b 08 40 f9           ldr      x11, [x0, #0x10]
0x00ee5d6c: 4b 02 00 b4           cbz      x11, #0xee5db4
0x00ee5d70: 6c 19 40 b9           ldr      w12, [x11, #0x18]
0x00ee5d74: 3f 00 0c eb           cmp      x1, x12
0x00ee5d78: c2 01 00 54           b.hs     #0xee5db0
0x00ee5d7c: 6b 09 01 8b           add      x11, x11, x1, lsl #2
0x00ee5d80: 6b 21 40 b9           ldr      w11, [x11, #0x20]
0x00ee5d84: 7f 01 08 6b           cmp      w11, w8
0x00ee5d88: e0 00 00 54           b.eq     #0xee5da4
0x00ee5d8c: 21 04 00 91           add      x1, x1, #1
0x00ee5d90: 3f 00 01 f1           cmp      x1, #0x40
0x00ee5d94: 01 fe ff 54           b.ne     #0xee5d54
0x00ee5d98: 20 00 80 52           mov      w0, #1
0x00ee5d9c: fe 07 41 f8           ldr      x30, [sp], #0x10
0x00ee5da0: c0 03 5f d6           ret      
