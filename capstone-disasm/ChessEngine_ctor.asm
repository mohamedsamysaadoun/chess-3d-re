// Function: ChessEngine_ctor
// RVA: 0xee3e34
// Description: Constructor
// Size: 256 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee3e34: ff 03 02 d1           sub      sp, sp, #0x80
0x00ee3e38: fe 1b 00 f9           str      x30, [sp, #0x30]
0x00ee3e3c: fa 67 04 a9           stp      x26, x25, [sp, #0x40]
0x00ee3e40: f8 5f 05 a9           stp      x24, x23, [sp, #0x50]
0x00ee3e44: f6 57 06 a9           stp      x22, x21, [sp, #0x60]
0x00ee3e48: f4 4f 07 a9           stp      x20, x19, [sp, #0x70]
0x00ee3e4c: 9a 9d 00 d0           adrp     x26, #0x2295000
0x00ee3e50: b5 91 00 f0           adrp     x21, #0x211a000
0x00ee3e54: d6 91 00 b0           adrp     x22, #0x211c000
0x00ee3e58: d9 91 00 b0           adrp     x25, #0x211c000
0x00ee3e5c: d4 91 00 b0           adrp     x20, #0x211c000
0x00ee3e60: d8 91 00 b0           adrp     x24, #0x211c000
0x00ee3e64: d7 91 00 b0           adrp     x23, #0x211c000
0x00ee3e68: b5 96 41 f9           ldr      x21, [x21, #0x328]
0x00ee3e6c: 48 0b 5a 39           ldrb     w8, [x26, #0x682]
0x00ee3e70: d6 06 43 f9           ldr      x22, [x22, #0x608]
0x00ee3e74: 39 0b 43 f9           ldr      x25, [x25, #0x610]
0x00ee3e78: 94 0e 43 f9           ldr      x20, [x20, #0x618]
0x00ee3e7c: 18 13 43 f9           ldr      x24, [x24, #0x620]
0x00ee3e80: f7 16 43 f9           ldr      x23, [x23, #0x628]
0x00ee3e84: f3 03 00 aa           mov      x19, x0
0x00ee3e88: a8 02 00 37           tbnz     w8, #0, #0xee3edc
0x00ee3e8c: c0 91 00 b0           adrp     x0, #0x211c000
0x00ee3e90: 00 08 43 f9           ldr      x0, [x0, #0x610]
0x00ee3e94: 1c e7 fc 97           bl       #0xe1db04
0x00ee3e98: c0 91 00 b0           adrp     x0, #0x211c000
0x00ee3e9c: 00 04 43 f9           ldr      x0, [x0, #0x608]
0x00ee3ea0: 19 e7 fc 97           bl       #0xe1db04
0x00ee3ea4: a0 91 00 f0           adrp     x0, #0x211a000
0x00ee3ea8: 00 94 41 f9           ldr      x0, [x0, #0x328]
0x00ee3eac: 16 e7 fc 97           bl       #0xe1db04
0x00ee3eb0: c0 91 00 b0           adrp     x0, #0x211c000
0x00ee3eb4: 00 10 43 f9           ldr      x0, [x0, #0x620]
0x00ee3eb8: 13 e7 fc 97           bl       #0xe1db04
0x00ee3ebc: c0 91 00 b0           adrp     x0, #0x211c000
0x00ee3ec0: 00 0c 43 f9           ldr      x0, [x0, #0x618]
0x00ee3ec4: 10 e7 fc 97           bl       #0xe1db04
0x00ee3ec8: c0 91 00 b0           adrp     x0, #0x211c000
0x00ee3ecc: 00 14 43 f9           ldr      x0, [x0, #0x628]
0x00ee3ed0: 0d e7 fc 97           bl       #0xe1db04
0x00ee3ed4: 28 00 80 52           mov      w8, #1
0x00ee3ed8: 48 0b 1a 39           strb     w8, [x26, #0x682]
0x00ee3edc: a0 02 40 f9           ldr      x0, [x21]
0x00ee3ee0: 01 08 80 52           mov      w1, #0x40
0x00ee3ee4: 26 e7 fc 97           bl       #0xe1db7c
0x00ee3ee8: 60 0a 00 f9           str      x0, [x19, #0x10]
0x00ee3eec: a0 02 40 f9           ldr      x0, [x21]
0x00ee3ef0: 01 08 80 52           mov      w1, #0x40
0x00ee3ef4: 22 e7 fc 97           bl       #0xe1db7c
0x00ee3ef8: 48 b3 ff f0           adrp     x8, #0x54e000
0x00ee3efc: 60 0e 00 f9           str      x0, [x19, #0x18]
0x00ee3f00: 08 01 14 91           add      x8, x8, #0x500
0x00ee3f04: 00 01 c0 3d           ldr      q0, [x8]
0x00ee3f08: c0 02 40 f9           ldr      x0, [x22]
0x00ee3f0c: e1 83 00 91           add      x1, sp, #0x20
0x00ee3f10: e0 0b 80 3d           str      q0, [sp, #0x20]
0x00ee3f14: 1c e7 fc 97           bl       #0xe1db84
0x00ee3f18: 60 22 00 f9           str      x0, [x19, #0x40]
0x00ee3f1c: 20 03 40 f9           ldr      x0, [x25]
0x00ee3f20: 01 04 80 52           mov      w1, #0x20
0x00ee3f24: 16 e7 fc 97           bl       #0xe1db7c
0x00ee3f28: 60 26 00 f9           str      x0, [x19, #0x48]
0x00ee3f2c: 80 02 40 f9           ldr      x0, [x20]
0x00ee3f30: 7c e7 fc 97           bl       #0xe1dd20
