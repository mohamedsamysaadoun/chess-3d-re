// Function: OpeningBook_ctor
// RVA: 0xee3ce0
// Description: OpeningBook constructor
// Size: 256 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee3ce0: ff 43 01 d1           sub      sp, sp, #0x50
0x00ee3ce4: fe 67 01 a9           stp      x30, x25, [sp, #0x10]
0x00ee3ce8: f8 5f 02 a9           stp      x24, x23, [sp, #0x20]
0x00ee3cec: f6 57 03 a9           stp      x22, x21, [sp, #0x30]
0x00ee3cf0: f4 4f 04 a9           stp      x20, x19, [sp, #0x40]
0x00ee3cf4: 95 9d 00 d0           adrp     x21, #0x2295000
0x00ee3cf8: b4 91 00 f0           adrp     x20, #0x211a000
0x00ee3cfc: a8 06 5a 39           ldrb     w8, [x21, #0x681]
0x00ee3d00: 94 2a 41 f9           ldr      x20, [x20, #0x250]
0x00ee3d04: f3 03 00 aa           mov      x19, x0
0x00ee3d08: a8 02 00 37           tbnz     w8, #0, #0xee3d5c
0x00ee3d0c: a0 91 00 f0           adrp     x0, #0x211a000
0x00ee3d10: 00 28 41 f9           ldr      x0, [x0, #0x250]
0x00ee3d14: 7c e7 fc 97           bl       #0xe1db04
0x00ee3d18: c0 91 00 b0           adrp     x0, #0x211c000
0x00ee3d1c: 00 f4 42 f9           ldr      x0, [x0, #0x5e8]
0x00ee3d20: 79 e7 fc 97           bl       #0xe1db04
0x00ee3d24: a0 91 00 f0           adrp     x0, #0x211a000
0x00ee3d28: 00 94 41 f9           ldr      x0, [x0, #0x328]
0x00ee3d2c: 76 e7 fc 97           bl       #0xe1db04
0x00ee3d30: c0 91 00 b0           adrp     x0, #0x211c000
0x00ee3d34: 00 f8 42 f9           ldr      x0, [x0, #0x5f0]
0x00ee3d38: 73 e7 fc 97           bl       #0xe1db04
0x00ee3d3c: c0 91 00 b0           adrp     x0, #0x211c000
0x00ee3d40: 00 fc 42 f9           ldr      x0, [x0, #0x5f8]
0x00ee3d44: 70 e7 fc 97           bl       #0xe1db04
0x00ee3d48: c0 91 00 b0           adrp     x0, #0x211c000
0x00ee3d4c: 00 00 43 f9           ldr      x0, [x0, #0x600]
0x00ee3d50: 6d e7 fc 97           bl       #0xe1db04
0x00ee3d54: 28 00 80 52           mov      w8, #1
0x00ee3d58: a8 06 1a 39           strb     w8, [x21, #0x681]
0x00ee3d5c: 80 02 40 f9           ldr      x0, [x20]
0x00ee3d60: d4 91 00 b0           adrp     x20, #0x211c000
0x00ee3d64: b9 91 00 f0           adrp     x25, #0x211a000
0x00ee3d68: d8 91 00 b0           adrp     x24, #0x211c000
0x00ee3d6c: d7 91 00 b0           adrp     x23, #0x211c000
0x00ee3d70: d6 91 00 b0           adrp     x22, #0x211c000
0x00ee3d74: 94 fa 42 f9           ldr      x20, [x20, #0x5f0]
0x00ee3d78: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee3d7c: 39 97 41 f9           ldr      x25, [x25, #0x328]
0x00ee3d80: 18 ff 42 f9           ldr      x24, [x24, #0x5f8]
0x00ee3d84: f7 f6 42 f9           ldr      x23, [x23, #0x5e8]
0x00ee3d88: d6 02 43 f9           ldr      x22, [x22, #0x600]
0x00ee3d8c: 48 00 00 35           cbnz     w8, #0xee3d94
0x00ee3d90: 9f e7 fc 97           bl       #0xe1dc0c
0x00ee3d94: e0 03 1f aa           mov      x0, xzr
0x00ee3d98: 82 f3 25 94           bl       #0x1860ba0
0x00ee3d9c: e0 07 00 f9           str      x0, [sp, #8]
0x00ee3da0: e0 23 00 91           add      x0, sp, #8
0x00ee3da4: e1 03 1f aa           mov      x1, xzr
0x00ee3da8: 42 ec 25 94           bl       #0x185eeb0
0x00ee3dac: 88 02 40 f9           ldr      x8, [x20]
0x00ee3db0: f4 03 00 aa           mov      x20, x0
0x00ee3db4: e0 03 08 aa           mov      x0, x8
0x00ee3db8: da e7 fc 97           bl       #0xe1dd20
0x00ee3dbc: e1 03 14 2a           mov      w1, w20
0x00ee3dc0: e2 03 1f aa           mov      x2, xzr
0x00ee3dc4: f5 03 00 aa           mov      x21, x0
0x00ee3dc8: 25 ab 26 94           bl       #0x188ea5c
0x00ee3dcc: 75 0a 00 f9           str      x21, [x19, #0x10]
0x00ee3dd0: 20 03 40 f9           ldr      x0, [x25]
0x00ee3dd4: 81 ac 81 52           mov      w1, #0xd64
0x00ee3dd8: 69 e7 fc 97           bl       #0xe1db7c
0x00ee3ddc: 01 03 40 f9           ldr      x1, [x24]
