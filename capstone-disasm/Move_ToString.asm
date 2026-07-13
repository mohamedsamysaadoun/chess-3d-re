// Function: Move_ToString
// RVA: 0xee4bb8
// Description: Move.ToString
// Size: 256 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee4bb8: fe 57 be a9           stp      x30, x21, [sp, #-0x20]!
0x00ee4bbc: f4 4f 01 a9           stp      x20, x19, [sp, #0x10]
0x00ee4bc0: 93 9d 00 b0           adrp     x19, #0x2295000
0x00ee4bc4: 68 3e 5a 39           ldrb     w8, [x19, #0x68f]
0x00ee4bc8: f4 03 00 aa           mov      x20, x0
0x00ee4bcc: c8 00 00 37           tbnz     w8, #0, #0xee4be4
0x00ee4bd0: a0 91 00 f0           adrp     x0, #0x211b000
0x00ee4bd4: 00 a0 45 f9           ldr      x0, [x0, #0xb40]
0x00ee4bd8: cb e3 fc 97           bl       #0xe1db04
0x00ee4bdc: 28 00 80 52           mov      w8, #1
0x00ee4be0: 68 3e 1a 39           strb     w8, [x19, #0x68f]
0x00ee4be4: 88 02 40 b9           ldr      w8, [x20]
0x00ee4be8: 1f 5d 00 72           tst      w8, #0xffffff
0x00ee4bec: a0 06 00 54           b.eq     #0xee4cc0
0x00ee4bf0: a8 91 00 f0           adrp     x8, #0x211b000
0x00ee4bf4: 08 a1 45 f9           ldr      x8, [x8, #0xb40]
0x00ee4bf8: 00 01 40 f9           ldr      x0, [x8]
0x00ee4bfc: 49 e4 fc 97           bl       #0xe1dd20
0x00ee4c00: a1 00 80 52           mov      w1, #5
0x00ee4c04: e2 03 1f aa           mov      x2, xzr
0x00ee4c08: f3 03 00 aa           mov      x19, x0
0x00ee4c0c: a2 38 21 94           bl       #0x1732e94
0x00ee4c10: 13 06 00 b4           cbz      x19, #0xee4cd0
0x00ee4c14: 88 02 40 39           ldrb     w8, [x20]
0x00ee4c18: e0 03 13 aa           mov      x0, x19
0x00ee4c1c: e2 03 1f aa           mov      x2, xzr
0x00ee4c20: 08 09 00 12           and      w8, w8, #7
0x00ee4c24: 01 85 01 11           add      w1, w8, #0x61
0x00ee4c28: a3 40 21 94           bl       #0x1734eb4
0x00ee4c2c: 88 02 40 39           ldrb     w8, [x20]
0x00ee4c30: 15 07 80 52           mov      w21, #0x38
0x00ee4c34: e0 03 13 aa           mov      x0, x19
0x00ee4c38: e2 03 1f aa           mov      x2, xzr
0x00ee4c3c: a1 0e 48 4b           sub      w1, w21, w8, lsr #3
0x00ee4c40: 9d 40 21 94           bl       #0x1734eb4
0x00ee4c44: 88 06 40 39           ldrb     w8, [x20, #1]
0x00ee4c48: e0 03 13 aa           mov      x0, x19
0x00ee4c4c: e2 03 1f aa           mov      x2, xzr
0x00ee4c50: 08 09 00 12           and      w8, w8, #7
0x00ee4c54: 01 85 01 11           add      w1, w8, #0x61
0x00ee4c58: 97 40 21 94           bl       #0x1734eb4
0x00ee4c5c: 88 06 40 39           ldrb     w8, [x20, #1]
0x00ee4c60: e0 03 13 aa           mov      x0, x19
0x00ee4c64: e2 03 1f aa           mov      x2, xzr
0x00ee4c68: a1 0e 48 4b           sub      w1, w21, w8, lsr #3
0x00ee4c6c: 92 40 21 94           bl       #0x1734eb4
0x00ee4c70: 88 0a 40 39           ldrb     w8, [x20, #2]
0x00ee4c74: 08 05 00 51           sub      w8, w8, #1
0x00ee4c78: 1f 0d 00 71           cmp      w8, #3
0x00ee4c7c: 68 01 00 54           b.hi     #0xee4ca8
0x00ee4c80: c9 0d 80 d2           mov      x9, #0x6e
0x00ee4c84: 49 0c a0 f2           movk     x9, #0x62, lsl #16
0x00ee4c88: 08 1d 40 92           and      x8, x8, #0xff
0x00ee4c8c: 49 0e c0 f2           movk     x9, #0x72, lsl #32
0x00ee4c90: 08 ed 7c d3           lsl      x8, x8, #4
0x00ee4c94: 29 0e e0 f2           movk     x9, #0x71, lsl #48
0x00ee4c98: 21 25 c8 9a           lsr      x1, x9, x8
0x00ee4c9c: e0 03 13 aa           mov      x0, x19
0x00ee4ca0: e2 03 1f aa           mov      x2, xzr
0x00ee4ca4: 84 40 21 94           bl       #0x1734eb4
0x00ee4ca8: 68 02 40 f9           ldr      x8, [x19]
0x00ee4cac: e0 03 13 aa           mov      x0, x19
0x00ee4cb0: f4 4f 41 a9           ldp      x20, x19, [sp, #0x10]
0x00ee4cb4: 02 85 56 a9           ldp      x2, x1, [x8, #0x168]
