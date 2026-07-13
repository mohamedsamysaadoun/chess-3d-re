// Function: ChessEngine_IsSquareAttacked
// RVA: 0xee7d28
// Description: Is square attacked
// Size: 4096 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee7d28: fe 0f 1a f8           str      x30, [sp, #-0x60]!
0x00ee7d2c: fc 6f 01 a9           stp      x28, x27, [sp, #0x10]
0x00ee7d30: fa 67 02 a9           stp      x26, x25, [sp, #0x20]
0x00ee7d34: f8 5f 03 a9           stp      x24, x23, [sp, #0x30]
0x00ee7d38: f6 57 04 a9           stp      x22, x21, [sp, #0x40]
0x00ee7d3c: f4 4f 05 a9           stp      x20, x19, [sp, #0x50]
0x00ee7d40: 76 9d 00 d0           adrp     x22, #0x2295000
0x00ee7d44: c8 36 5a 39           ldrb     w8, [x22, #0x68d]
0x00ee7d48: f3 03 02 2a           mov      w19, w2
0x00ee7d4c: f4 03 01 2a           mov      w20, w1
0x00ee7d50: f5 03 00 aa           mov      x21, x0
0x00ee7d54: c8 00 00 37           tbnz     w8, #0, #0xee7d6c
0x00ee7d58: a0 91 00 90           adrp     x0, #0x211b000
0x00ee7d5c: 00 70 41 f9           ldr      x0, [x0, #0x2e0]
0x00ee7d60: 69 d7 fc 97           bl       #0xe1db04
0x00ee7d64: 28 00 80 52           mov      w8, #1
0x00ee7d68: c8 36 1a 39           strb     w8, [x22, #0x68d]
0x00ee7d6c: b7 91 00 90           adrp     x23, #0x211b000
0x00ee7d70: f7 72 41 f9           ldr      x23, [x23, #0x2e0]
0x00ee7d74: f6 03 1f aa           mov      x22, xzr
0x00ee7d78: f8 03 14 2a           mov      w24, w20
0x00ee7d7c: 99 7e 40 93           sxtw     x25, w20
0x00ee7d80: a8 0a 40 f9           ldr      x8, [x21, #0x10]
0x00ee7d84: 28 13 00 b4           cbz      x8, #0xee7fe8
0x00ee7d88: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee7d8c: df 02 09 eb           cmp      x22, x9
0x00ee7d90: a2 12 00 54           b.hs     #0xee7fe4
0x00ee7d94: 08 09 16 8b           add      x8, x8, x22, lsl #2
0x00ee7d98: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee7d9c: 1f 01 13 6b           cmp      w8, w19
0x00ee7da0: 81 10 00 54           b.ne     #0xee7fb0
0x00ee7da4: a8 0e 40 f9           ldr      x8, [x21, #0x18]
0x00ee7da8: 08 12 00 b4           cbz      x8, #0xee7fe8
0x00ee7dac: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee7db0: df 02 09 eb           cmp      x22, x9
0x00ee7db4: 82 11 00 54           b.hs     #0xee7fe4
0x00ee7db8: 09 09 16 8b           add      x9, x8, x22, lsl #2
0x00ee7dbc: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee7dc0: e9 0c 00 34           cbz      w9, #0xee7f5c
0x00ee7dc4: 3f 15 00 71           cmp      w9, #5
0x00ee7dc8: 4c 0f 00 54           b.gt     #0xee7fb0
0x00ee7dcc: e0 02 40 f9           ldr      x0, [x23]
0x00ee7dd0: fa 03 1f 2a           mov      w26, wzr
0x00ee7dd4: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ee7dd8: a9 00 00 35           cbnz     w9, #0xee7dec
0x00ee7ddc: 8c d7 fc 97           bl       #0xe1dc0c
0x00ee7de0: a8 0e 40 f9           ldr      x8, [x21, #0x18]
0x00ee7de4: 28 10 00 b4           cbz      x8, #0xee7fe8
0x00ee7de8: e0 02 40 f9           ldr      x0, [x23]
0x00ee7dec: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee7df0: df 02 09 eb           cmp      x22, x9
0x00ee7df4: 82 0f 00 54           b.hs     #0xee7fe4
0x00ee7df8: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee7dfc: 29 0d 40 f9           ldr      x9, [x9, #0x18]
0x00ee7e00: 49 0f 00 b4           cbz      x9, #0xee7fe8
0x00ee7e04: 08 09 16 8b           add      x8, x8, x22, lsl #2
0x00ee7e08: 08 21 80 b9           ldrsw    x8, [x8, #0x20]
0x00ee7e0c: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee7e10: 1f 01 0a 6b           cmp      w8, w10
0x00ee7e14: 82 0e 00 54           b.hs     #0xee7fe4
0x00ee7e18: 28 09 08 8b           add      x8, x9, x8, lsl #2
0x00ee7e1c: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee7e20: 5f 03 08 6b           cmp      w26, w8
0x00ee7e24: 6a 0c 00 54           b.ge     #0xee7fb0
0x00ee7e28: 5b 7f 40 93           sxtw     x27, w26
0x00ee7e2c: fc 03 16 2a           mov      w28, w22
0x00ee7e30: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee7e34: 68 00 00 35           cbnz     w8, #0xee7e40
0x00ee7e38: 75 d7 fc 97           bl       #0xe1dc0c
0x00ee7e3c: e0 02 40 f9           ldr      x0, [x23]
0x00ee7e40: 0a 5c 40 f9           ldr      x10, [x0, #0xb8]
0x00ee7e44: 49 05 40 f9           ldr      x9, [x10, #8]
0x00ee7e48: 09 0d 00 b4           cbz      x9, #0xee7fe8
0x00ee7e4c: 28 19 40 b9           ldr      w8, [x9, #0x18]
0x00ee7e50: 9f 03 08 6b           cmp      w28, w8
0x00ee7e54: 82 0c 00 54           b.hs     #0xee7fe4
0x00ee7e58: a8 0e 40 f9           ldr      x8, [x21, #0x18]
0x00ee7e5c: 68 0c 00 b4           cbz      x8, #0xee7fe8
0x00ee7e60: 0b 19 40 b9           ldr      w11, [x8, #0x18]
0x00ee7e64: df 02 0b eb           cmp      x22, x11
0x00ee7e68: e2 0b 00 54           b.hs     #0xee7fe4
0x00ee7e6c: 4b 11 40 f9           ldr      x11, [x10, #0x20]
0x00ee7e70: cb 0b 00 b4           cbz      x11, #0xee7fe8
0x00ee7e74: 6d 09 40 f9           ldr      x13, [x11, #0x10]
0x00ee7e78: 0c 09 16 8b           add      x12, x8, x22, lsl #2
0x00ee7e7c: 8c 21 80 b9           ldrsw    x12, [x12, #0x20]
0x00ee7e80: ae 01 40 b9           ldr      w14, [x13]
0x00ee7e84: 9f 01 0e 6b           cmp      w12, w14
0x00ee7e88: e2 0a 00 54           b.hs     #0xee7fe4
0x00ee7e8c: ad 09 40 f9           ldr      x13, [x13, #0x10]
0x00ee7e90: 5f 03 0d 6b           cmp      w26, w13
0x00ee7e94: 82 0a 00 54           b.hs     #0xee7fe4
0x00ee7e98: 4a 01 40 f9           ldr      x10, [x10]
0x00ee7e9c: 6a 0a 00 b4           cbz      x10, #0xee7fe8
0x00ee7ea0: ac 6d 0c 9b           madd     x12, x13, x12, x27
0x00ee7ea4: 29 c9 3c 8b           add      x9, x9, w28, sxtw #2
0x00ee7ea8: 6b 09 0c 8b           add      x11, x11, x12, lsl #2
0x00ee7eac: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee7eb0: 6b 21 40 b9           ldr      w11, [x11, #0x20]
0x00ee7eb4: 4c 19 40 b9           ldr      w12, [x10, #0x18]
0x00ee7eb8: 69 01 09 0b           add      w9, w11, w9
0x00ee7ebc: 3f 01 0c 6b           cmp      w9, w12
0x00ee7ec0: 22 09 00 54           b.hs     #0xee7fe4
0x00ee7ec4: 49 c9 29 8b           add      x9, x10, w9, sxtw #2
0x00ee7ec8: 3c 21 40 b9           ldr      w28, [x9, #0x20]
0x00ee7ecc: 9f 07 00 31           cmn      w28, #1
0x00ee7ed0: 20 04 00 54           b.eq     #0xee7f54
0x00ee7ed4: 9f 03 14 6b           cmp      w28, w20
0x00ee7ed8: 60 07 00 54           b.eq     #0xee7fc4
0x00ee7edc: a9 0a 40 f9           ldr      x9, [x21, #0x10]
0x00ee7ee0: 49 08 00 b4           cbz      x9, #0xee7fe8
0x00ee7ee4: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee7ee8: 9f 03 0a 6b           cmp      w28, w10
0x00ee7eec: c2 07 00 54           b.hs     #0xee7fe4
0x00ee7ef0: 8a 7f 40 93           sxtw     x10, w28
0x00ee7ef4: 29 09 0a 8b           add      x9, x9, x10, lsl #2
0x00ee7ef8: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee7efc: 3f 19 00 71           cmp      w9, #6
0x00ee7f00: a1 02 00 54           b.ne     #0xee7f54
0x00ee7f04: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ee7f08: a9 00 00 35           cbnz     w9, #0xee7f1c
0x00ee7f0c: 40 d7 fc 97           bl       #0xe1dc0c
0x00ee7f10: a8 0e 40 f9           ldr      x8, [x21, #0x18]
0x00ee7f14: a8 06 00 b4           cbz      x8, #0xee7fe8
0x00ee7f18: e0 02 40 f9           ldr      x0, [x23]
0x00ee7f1c: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee7f20: df 02 09 eb           cmp      x22, x9
0x00ee7f24: 02 06 00 54           b.hs     #0xee7fe4
0x00ee7f28: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee7f2c: 29 09 40 f9           ldr      x9, [x9, #0x10]
0x00ee7f30: c9 05 00 b4           cbz      x9, #0xee7fe8
0x00ee7f34: 0a 09 16 8b           add      x10, x8, x22, lsl #2
0x00ee7f38: 4a 21 80 b9           ldrsw    x10, [x10, #0x20]
0x00ee7f3c: 2b 19 40 b9           ldr      w11, [x9, #0x18]
0x00ee7f40: 5f 01 0b 6b           cmp      w10, w11
0x00ee7f44: 02 05 00 54           b.hs     #0xee7fe4
0x00ee7f48: 29 01 0a 8b           add      x9, x9, x10
0x00ee7f4c: 29 81 40 39           ldrb     w9, [x9, #0x20]
0x00ee7f50: 09 f7 ff 35           cbnz     w9, #0xee7e30
0x00ee7f54: 5a 07 00 11           add      w26, w26, #1
0x00ee7f58: 9f ff ff 17           b        #0xee7dd4
0x00ee7f5c: c8 0a 00 12           and      w8, w22, #7
0x00ee7f60: 73 01 00 34           cbz      w19, #0xee7f8c
0x00ee7f64: c8 00 00 34           cbz      w8, #0xee7f7c
0x00ee7f68: c9 1e 00 91           add      x9, x22, #7
0x00ee7f6c: 3f 01 18 eb           cmp      x9, x24
0x00ee7f70: a0 02 00 54           b.eq     #0xee7fc4
0x00ee7f74: 1f 1d 00 71           cmp      w8, #7
0x00ee7f78: c0 01 00 54           b.eq     #0xee7fb0
0x00ee7f7c: c8 26 00 91           add      x8, x22, #9
0x00ee7f80: 1f 01 18 eb           cmp      x8, x24
0x00ee7f84: 61 01 00 54           b.ne     #0xee7fb0
0x00ee7f88: 0f 00 00 14           b        #0xee7fc4
0x00ee7f8c: c8 00 00 34           cbz      w8, #0xee7fa4
0x00ee7f90: c9 26 00 d1           sub      x9, x22, #9
0x00ee7f94: 3f 01 19 eb           cmp      x9, x25
0x00ee7f98: 60 01 00 54           b.eq     #0xee7fc4
0x00ee7f9c: 1f 1d 00 71           cmp      w8, #7
0x00ee7fa0: 80 00 00 54           b.eq     #0xee7fb0
0x00ee7fa4: c8 1e 00 d1           sub      x8, x22, #7
0x00ee7fa8: 1f 01 19 eb           cmp      x8, x25
0x00ee7fac: c0 00 00 54           b.eq     #0xee7fc4
0x00ee7fb0: d6 06 00 91           add      x22, x22, #1
0x00ee7fb4: df 02 01 f1           cmp      x22, #0x40
0x00ee7fb8: 41 ee ff 54           b.ne     #0xee7d80
0x00ee7fbc: e0 03 1f 2a           mov      w0, wzr
0x00ee7fc0: 02 00 00 14           b        #0xee7fc8
0x00ee7fc4: 20 00 80 52           mov      w0, #1
0x00ee7fc8: f4 4f 45 a9           ldp      x20, x19, [sp, #0x50]
0x00ee7fcc: f6 57 44 a9           ldp      x22, x21, [sp, #0x40]
0x00ee7fd0: f8 5f 43 a9           ldp      x24, x23, [sp, #0x30]
0x00ee7fd4: fa 67 42 a9           ldp      x26, x25, [sp, #0x20]
0x00ee7fd8: fc 6f 41 a9           ldp      x28, x27, [sp, #0x10]
0x00ee7fdc: fe 07 46 f8           ldr      x30, [sp], #0x60
0x00ee7fe0: c0 03 5f d6           ret      
