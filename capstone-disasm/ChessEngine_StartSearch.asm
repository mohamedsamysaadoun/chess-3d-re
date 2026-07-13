// Function: ChessEngine_StartSearch
// RVA: 0xee4dfc
// Description: Start search
// Size: 124 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee4dfc: fe 67 bc a9           stp      x30, x25, [sp, #-0x40]!
0x00ee4e00: f8 5f 01 a9           stp      x24, x23, [sp, #0x10]
0x00ee4e04: f6 57 02 a9           stp      x22, x21, [sp, #0x20]
0x00ee4e08: f4 4f 03 a9           stp      x20, x19, [sp, #0x30]
0x00ee4e0c: 3f 04 00 71           cmp      w1, #1
0x00ee4e10: ab 02 00 54           b.lt     #0xee4e64
0x00ee4e14: f3 03 01 2a           mov      w19, w1
0x00ee4e18: f4 03 00 aa           mov      x20, x0
0x00ee4e1c: 37 00 80 52           mov      w23, #1
0x00ee4e20: 55 00 00 12           and      w21, w2, #1
0x00ee4e24: 18 65 84 52           mov      w24, #0x2328
0x00ee4e28: 19 ca 88 52           mov      w25, #0x4650
0x00ee4e2c: 36 00 80 52           mov      w22, #1
0x00ee4e30: e1 e1 84 12           mov      w1, #-0x2710
0x00ee4e34: 02 e2 84 52           mov      w2, #0x2710
0x00ee4e38: e0 03 14 aa           mov      x0, x20
0x00ee4e3c: e3 03 16 2a           mov      w3, w22
0x00ee4e40: e4 03 15 2a           mov      w4, w21
0x00ee4e44: 97 02 02 39           strb     w23, [x20, #0x80]
0x00ee4e48: 0c 00 00 94           bl       #0xee4e78
0x00ee4e4c: 08 00 18 0b           add      w8, w0, w24
0x00ee4e50: 1f 01 19 6b           cmp      w8, w25
0x00ee4e54: 88 00 00 54           b.hi     #0xee4e64
0x00ee4e58: d6 06 00 11           add      w22, w22, #1
0x00ee4e5c: df 02 13 6b           cmp      w22, w19
0x00ee4e60: 8d fe ff 54           b.le     #0xee4e30
0x00ee4e64: f4 4f 43 a9           ldp      x20, x19, [sp, #0x30]
0x00ee4e68: f6 57 42 a9           ldp      x22, x21, [sp, #0x20]
0x00ee4e6c: f8 5f 41 a9           ldp      x24, x23, [sp, #0x10]
0x00ee4e70: fe 67 c4 a8           ldp      x30, x25, [sp], #0x40
0x00ee4e74: c0 03 5f d6           ret      
