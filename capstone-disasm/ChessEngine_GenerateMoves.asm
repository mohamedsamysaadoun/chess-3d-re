// Function: ChessEngine_GenerateMoves
// RVA: 0xee5db8
// Description: Generate all legal moves
// Size: 1664 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee5db8: fe 0f 1c f8           str      x30, [sp, #-0x40]!
0x00ee5dbc: f8 5f 01 a9           stp      x24, x23, [sp, #0x10]
0x00ee5dc0: f6 57 02 a9           stp      x22, x21, [sp, #0x20]
0x00ee5dc4: f4 4f 03 a9           stp      x20, x19, [sp, #0x30]
0x00ee5dc8: 94 9d 00 90           adrp     x20, #0x2295000
0x00ee5dcc: 88 16 5a 39           ldrb     w8, [x20, #0x685]
0x00ee5dd0: f3 03 00 aa           mov      x19, x0
0x00ee5dd4: c8 00 00 37           tbnz     w8, #0, #0xee5dec
0x00ee5dd8: a0 91 00 d0           adrp     x0, #0x211b000
0x00ee5ddc: 00 70 41 f9           ldr      x0, [x0, #0x2e0]
0x00ee5de0: 49 df fc 97           bl       #0xe1db04
0x00ee5de4: 28 00 80 52           mov      w8, #1
0x00ee5de8: 88 16 1a 39           strb     w8, [x20, #0x685]
0x00ee5dec: 68 36 40 f9           ldr      x8, [x19, #0x68]
0x00ee5df0: 28 32 00 b4           cbz      x8, #0xee6434
0x00ee5df4: 69 36 80 b9           ldrsw    x9, [x19, #0x34]
0x00ee5df8: 0b 19 40 b9           ldr      w11, [x8, #0x18]
0x00ee5dfc: 3f 01 0b 6b           cmp      w9, w11
0x00ee5e00: 82 31 00 54           b.hs     #0xee6430
0x00ee5e04: 2a 05 00 11           add      w10, w9, #1
0x00ee5e08: 5f 01 0b 6b           cmp      w10, w11
0x00ee5e0c: 22 31 00 54           b.hs     #0xee6430
0x00ee5e10: 08 81 00 91           add      x8, x8, #0x20
0x00ee5e14: b6 91 00 d0           adrp     x22, #0x211b000
0x00ee5e18: 09 79 69 b8           ldr      w9, [x8, x9, lsl #2]
0x00ee5e1c: d6 72 41 f9           ldr      x22, [x22, #0x2e0]
0x00ee5e20: f4 03 1f aa           mov      x20, xzr
0x00ee5e24: 09 d9 2a b8           str      w9, [x8, w10, sxtw #2]
0x00ee5e28: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee5e2c: 48 30 00 b4           cbz      x8, #0xee6434
0x00ee5e30: 09 0d 40 f9           ldr      x9, [x8, #0x18]
0x00ee5e34: 9f 42 29 eb           cmp      x20, w9, uxtw
0x00ee5e38: c2 2f 00 54           b.hs     #0xee6430
0x00ee5e3c: 0a 09 14 8b           add      x10, x8, x20, lsl #2
0x00ee5e40: 4a 21 40 b9           ldr      w10, [x10, #0x20]
0x00ee5e44: 6b 22 40 b9           ldr      w11, [x19, #0x20]
0x00ee5e48: 5f 01 0b 6b           cmp      w10, w11
0x00ee5e4c: c1 1e 00 54           b.ne     #0xee6224
0x00ee5e50: 6b 0e 40 f9           ldr      x11, [x19, #0x18]
0x00ee5e54: 0b 2f 00 b4           cbz      x11, #0xee6434
0x00ee5e58: 6c 19 40 b9           ldr      w12, [x11, #0x18]
0x00ee5e5c: 9f 02 0c eb           cmp      x20, x12
0x00ee5e60: 82 2e 00 54           b.hs     #0xee6430
0x00ee5e64: 6b 09 14 8b           add      x11, x11, x20, lsl #2
0x00ee5e68: 6b 21 40 b9           ldr      w11, [x11, #0x20]
0x00ee5e6c: 8b 0e 00 34           cbz      w11, #0xee603c
0x00ee5e70: 7f 15 00 71           cmp      w11, #5
0x00ee5e74: 8c 1d 00 54           b.gt     #0xee6224
0x00ee5e78: f7 03 1f 2a           mov      w23, wzr
0x00ee5e7c: c0 02 40 f9           ldr      x0, [x22]
0x00ee5e80: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee5e84: 68 00 00 35           cbnz     w8, #0xee5e90
0x00ee5e88: 61 df fc 97           bl       #0xe1dc0c
0x00ee5e8c: c0 02 40 f9           ldr      x0, [x22]
0x00ee5e90: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee5e94: 08 2d 00 b4           cbz      x8, #0xee6434
0x00ee5e98: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5e9c: 9f 02 09 eb           cmp      x20, x9
0x00ee5ea0: 82 2c 00 54           b.hs     #0xee6430
0x00ee5ea4: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee5ea8: 29 0d 40 f9           ldr      x9, [x9, #0x18]
0x00ee5eac: 49 2c 00 b4           cbz      x9, #0xee6434
0x00ee5eb0: 08 09 14 8b           add      x8, x8, x20, lsl #2
0x00ee5eb4: 08 21 80 b9           ldrsw    x8, [x8, #0x20]
0x00ee5eb8: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee5ebc: 1f 01 0a 6b           cmp      w8, w10
0x00ee5ec0: 82 2b 00 54           b.hs     #0xee6430
0x00ee5ec4: 28 09 08 8b           add      x8, x9, x8, lsl #2
0x00ee5ec8: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5ecc: ff 02 08 6b           cmp      w23, w8
0x00ee5ed0: aa 1a 00 54           b.ge     #0xee6224
0x00ee5ed4: f8 7e 40 93           sxtw     x24, w23
0x00ee5ed8: f5 03 14 2a           mov      w21, w20
0x00ee5edc: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee5ee0: 68 00 00 35           cbnz     w8, #0xee5eec
0x00ee5ee4: 4a df fc 97           bl       #0xe1dc0c
0x00ee5ee8: c0 02 40 f9           ldr      x0, [x22]
0x00ee5eec: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee5ef0: 28 05 40 f9           ldr      x8, [x9, #8]
0x00ee5ef4: 08 2a 00 b4           cbz      x8, #0xee6434
0x00ee5ef8: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee5efc: bf 02 0a 6b           cmp      w21, w10
0x00ee5f00: 82 29 00 54           b.hs     #0xee6430
0x00ee5f04: 6b 0e 40 f9           ldr      x11, [x19, #0x18]
0x00ee5f08: 6b 29 00 b4           cbz      x11, #0xee6434
0x00ee5f0c: 6a 19 40 b9           ldr      w10, [x11, #0x18]
0x00ee5f10: 9f 02 0a eb           cmp      x20, x10
0x00ee5f14: e2 28 00 54           b.hs     #0xee6430
0x00ee5f18: 2a 11 40 f9           ldr      x10, [x9, #0x20]
0x00ee5f1c: ca 28 00 b4           cbz      x10, #0xee6434
0x00ee5f20: 4c 09 40 f9           ldr      x12, [x10, #0x10]
0x00ee5f24: 6b 09 14 8b           add      x11, x11, x20, lsl #2
0x00ee5f28: 6b 21 80 b9           ldrsw    x11, [x11, #0x20]
0x00ee5f2c: 8d 01 40 b9           ldr      w13, [x12]
0x00ee5f30: 7f 01 0d 6b           cmp      w11, w13
0x00ee5f34: e2 27 00 54           b.hs     #0xee6430
0x00ee5f38: 8c 09 40 f9           ldr      x12, [x12, #0x10]
0x00ee5f3c: ff 02 0c 6b           cmp      w23, w12
0x00ee5f40: 82 27 00 54           b.hs     #0xee6430
0x00ee5f44: 29 01 40 f9           ldr      x9, [x9]
0x00ee5f48: 69 27 00 b4           cbz      x9, #0xee6434
0x00ee5f4c: 8b 61 0b 9b           madd     x11, x12, x11, x24
0x00ee5f50: 08 c9 35 8b           add      x8, x8, w21, sxtw #2
0x00ee5f54: 4a 09 0b 8b           add      x10, x10, x11, lsl #2
0x00ee5f58: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5f5c: 4a 21 40 b9           ldr      w10, [x10, #0x20]
0x00ee5f60: 2b 19 40 b9           ldr      w11, [x9, #0x18]
0x00ee5f64: 48 01 08 0b           add      w8, w10, w8
0x00ee5f68: 1f 01 0b 6b           cmp      w8, w11
0x00ee5f6c: 22 26 00 54           b.hs     #0xee6430
0x00ee5f70: 28 c9 28 8b           add      x8, x9, w8, sxtw #2
0x00ee5f74: 15 21 40 b9           ldr      w21, [x8, #0x20]
0x00ee5f78: bf 06 00 31           cmn      w21, #1
0x00ee5f7c: c0 05 00 54           b.eq     #0xee6034
0x00ee5f80: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee5f84: 88 25 00 b4           cbz      x8, #0xee6434
0x00ee5f88: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5f8c: bf 02 09 6b           cmp      w21, w9
0x00ee5f90: 02 25 00 54           b.hs     #0xee6430
0x00ee5f94: a9 7e 40 93           sxtw     x9, w21
0x00ee5f98: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee5f9c: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5fa0: 1f 19 00 71           cmp      w8, #6
0x00ee5fa4: 81 03 00 54           b.ne     #0xee6014
0x00ee5fa8: e0 03 13 aa           mov      x0, x19
0x00ee5fac: e1 03 14 2a           mov      w1, w20
0x00ee5fb0: e2 03 15 2a           mov      w2, w21
0x00ee5fb4: e3 03 1f 2a           mov      w3, wzr
0x00ee5fb8: 06 05 00 94           bl       #0xee73d0
0x00ee5fbc: c0 02 40 f9           ldr      x0, [x22]
0x00ee5fc0: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee5fc4: 68 00 00 35           cbnz     w8, #0xee5fd0
0x00ee5fc8: 11 df fc 97           bl       #0xe1dc0c
0x00ee5fcc: c0 02 40 f9           ldr      x0, [x22]
0x00ee5fd0: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee5fd4: 08 23 00 b4           cbz      x8, #0xee6434
0x00ee5fd8: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5fdc: 9f 02 09 eb           cmp      x20, x9
0x00ee5fe0: 82 22 00 54           b.hs     #0xee6430
0x00ee5fe4: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee5fe8: 29 09 40 f9           ldr      x9, [x9, #0x10]
0x00ee5fec: 49 22 00 b4           cbz      x9, #0xee6434
0x00ee5ff0: 08 09 14 8b           add      x8, x8, x20, lsl #2
0x00ee5ff4: 08 21 80 b9           ldrsw    x8, [x8, #0x20]
0x00ee5ff8: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee5ffc: 1f 01 0a 6b           cmp      w8, w10
0x00ee6000: 82 21 00 54           b.hs     #0xee6430
0x00ee6004: 28 01 08 8b           add      x8, x9, x8
0x00ee6008: 08 81 40 39           ldrb     w8, [x8, #0x20]
0x00ee600c: 88 f6 ff 35           cbnz     w8, #0xee5edc
0x00ee6010: 09 00 00 14           b        #0xee6034
0x00ee6014: 69 26 40 b9           ldr      w9, [x19, #0x24]
0x00ee6018: 1f 01 09 6b           cmp      w8, w9
0x00ee601c: c1 00 00 54           b.ne     #0xee6034
0x00ee6020: 23 00 80 52           mov      w3, #1
0x00ee6024: e0 03 13 aa           mov      x0, x19
0x00ee6028: e1 03 14 2a           mov      w1, w20
0x00ee602c: e2 03 15 2a           mov      w2, w21
0x00ee6030: e8 04 00 94           bl       #0xee73d0
0x00ee6034: f7 06 00 11           add      w23, w23, #1
0x00ee6038: 91 ff ff 17           b        #0xee5e7c
0x00ee603c: 95 0a 00 12           and      w21, w20, #7
0x00ee6040: 6a 07 00 34           cbz      w10, #0xee612c
0x00ee6044: 35 02 00 34           cbz      w21, #0xee6088
0x00ee6048: 2a 7d 40 92           and      x10, x9, #0xffffffff
0x00ee604c: 89 1e 00 91           add      x9, x20, #7
0x00ee6050: 3f 01 0a eb           cmp      x9, x10
0x00ee6054: e2 1e 00 54           b.hs     #0xee6430
0x00ee6058: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee605c: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee6060: c8 00 00 35           cbnz     w8, #0xee6078
0x00ee6064: 82 1e 00 11           add      w2, w20, #7
0x00ee6068: 23 02 80 52           mov      w3, #0x11
0x00ee606c: e0 03 13 aa           mov      x0, x19
0x00ee6070: e1 03 14 2a           mov      w1, w20
0x00ee6074: d7 04 00 94           bl       #0xee73d0
0x00ee6078: bf 1e 00 71           cmp      w21, #7
0x00ee607c: e0 01 00 54           b.eq     #0xee60b8
0x00ee6080: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee6084: 88 1d 00 b4           cbz      x8, #0xee6434
0x00ee6088: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee608c: 89 26 00 91           add      x9, x20, #9
0x00ee6090: 3f 01 0a eb           cmp      x9, x10
0x00ee6094: e2 1c 00 54           b.hs     #0xee6430
0x00ee6098: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee609c: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee60a0: c8 00 00 35           cbnz     w8, #0xee60b8
0x00ee60a4: 82 26 00 11           add      w2, w20, #9
0x00ee60a8: 23 02 80 52           mov      w3, #0x11
0x00ee60ac: e0 03 13 aa           mov      x0, x19
0x00ee60b0: e1 03 14 2a           mov      w1, w20
0x00ee60b4: c7 04 00 94           bl       #0xee73d0
0x00ee60b8: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee60bc: c8 1b 00 b4           cbz      x8, #0xee6434
0x00ee60c0: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee60c4: 89 22 00 91           add      x9, x20, #8
0x00ee60c8: 3f 01 0a eb           cmp      x9, x10
0x00ee60cc: 22 1b 00 54           b.hs     #0xee6430
0x00ee60d0: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee60d4: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee60d8: 1f 19 00 71           cmp      w8, #6
0x00ee60dc: 41 0a 00 54           b.ne     #0xee6224
0x00ee60e0: 82 22 00 11           add      w2, w20, #8
0x00ee60e4: 03 02 80 52           mov      w3, #0x10
0x00ee60e8: e0 03 13 aa           mov      x0, x19
0x00ee60ec: e1 03 14 2a           mov      w1, w20
0x00ee60f0: b8 04 00 94           bl       #0xee73d0
0x00ee60f4: 9f 3e 00 f1           cmp      x20, #0xf
0x00ee60f8: 68 09 00 54           b.hi     #0xee6224
0x00ee60fc: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee6100: a8 19 00 b4           cbz      x8, #0xee6434
0x00ee6104: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee6108: 89 42 00 91           add      x9, x20, #0x10
0x00ee610c: 3f 01 0a eb           cmp      x9, x10
0x00ee6110: 02 19 00 54           b.hs     #0xee6430
0x00ee6114: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee6118: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee611c: 1f 19 00 71           cmp      w8, #6
0x00ee6120: 21 08 00 54           b.ne     #0xee6224
0x00ee6124: 82 42 00 11           add      w2, w20, #0x10
0x00ee6128: 3b 00 00 14           b        #0xee6214
0x00ee612c: 35 02 00 34           cbz      w21, #0xee6170
0x00ee6130: 8a 26 00 d1           sub      x10, x20, #9
0x00ee6134: 5f 01 09 6b           cmp      w10, w9
0x00ee6138: c2 17 00 54           b.hs     #0xee6430
0x00ee613c: 08 09 0a 8b           add      x8, x8, x10, lsl #2
0x00ee6140: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee6144: 1f 05 00 71           cmp      w8, #1
0x00ee6148: c1 00 00 54           b.ne     #0xee6160
0x00ee614c: 82 26 00 51           sub      w2, w20, #9
0x00ee6150: 23 02 80 52           mov      w3, #0x11
0x00ee6154: e0 03 13 aa           mov      x0, x19
0x00ee6158: e1 03 14 2a           mov      w1, w20
0x00ee615c: 9d 04 00 94           bl       #0xee73d0
0x00ee6160: bf 1e 00 71           cmp      w21, #7
0x00ee6164: 00 02 00 54           b.eq     #0xee61a4
0x00ee6168: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee616c: 48 16 00 b4           cbz      x8, #0xee6434
0x00ee6170: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee6174: 89 1e 00 d1           sub      x9, x20, #7
0x00ee6178: 3f 01 0a 6b           cmp      w9, w10
0x00ee617c: a2 15 00 54           b.hs     #0xee6430
0x00ee6180: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee6184: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee6188: 1f 05 00 71           cmp      w8, #1
0x00ee618c: c1 00 00 54           b.ne     #0xee61a4
0x00ee6190: 82 1e 00 51           sub      w2, w20, #7
0x00ee6194: 23 02 80 52           mov      w3, #0x11
0x00ee6198: e0 03 13 aa           mov      x0, x19
0x00ee619c: e1 03 14 2a           mov      w1, w20
0x00ee61a0: 8c 04 00 94           bl       #0xee73d0
0x00ee61a4: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee61a8: 68 14 00 b4           cbz      x8, #0xee6434
0x00ee61ac: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee61b0: 89 22 00 d1           sub      x9, x20, #8
0x00ee61b4: 3f 01 0a 6b           cmp      w9, w10
0x00ee61b8: c2 13 00 54           b.hs     #0xee6430
0x00ee61bc: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee61c0: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee61c4: 1f 19 00 71           cmp      w8, #6
0x00ee61c8: e1 02 00 54           b.ne     #0xee6224
0x00ee61cc: 82 22 00 51           sub      w2, w20, #8
0x00ee61d0: 03 02 80 52           mov      w3, #0x10
0x00ee61d4: e0 03 13 aa           mov      x0, x19
0x00ee61d8: e1 03 14 2a           mov      w1, w20
0x00ee61dc: 7d 04 00 94           bl       #0xee73d0
0x00ee61e0: 9f c2 00 f1           cmp      x20, #0x30
0x00ee61e4: 03 02 00 54           b.lo     #0xee6224
0x00ee61e8: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee61ec: 48 12 00 b4           cbz      x8, #0xee6434
0x00ee61f0: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee61f4: 89 42 00 d1           sub      x9, x20, #0x10
0x00ee61f8: 3f 01 0a 6b           cmp      w9, w10
0x00ee61fc: a2 11 00 54           b.hs     #0xee6430
0x00ee6200: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee6204: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee6208: 1f 19 00 71           cmp      w8, #6
0x00ee620c: c1 00 00 54           b.ne     #0xee6224
0x00ee6210: 82 42 00 51           sub      w2, w20, #0x10
0x00ee6214: 03 03 80 52           mov      w3, #0x18
0x00ee6218: e0 03 13 aa           mov      x0, x19
0x00ee621c: e1 03 14 2a           mov      w1, w20
0x00ee6220: 6c 04 00 94           bl       #0xee73d0
0x00ee6224: 94 06 00 91           add      x20, x20, #1
0x00ee6228: 9f 02 01 f1           cmp      x20, #0x40
0x00ee622c: e1 df ff 54           b.ne     #0xee5e28
0x00ee6230: 69 22 40 b9           ldr      w9, [x19, #0x20]
0x00ee6234: 68 2a 40 b9           ldr      w8, [x19, #0x28]
0x00ee6238: 89 01 00 34           cbz      w9, #0xee6268
0x00ee623c: e8 00 10 36           tbz      w8, #2, #0xee6258
0x00ee6240: 81 00 80 52           mov      w1, #4
0x00ee6244: c2 00 80 52           mov      w2, #6
0x00ee6248: 43 00 80 52           mov      w3, #2
0x00ee624c: e0 03 13 aa           mov      x0, x19
0x00ee6250: 60 04 00 94           bl       #0xee73d0
0x00ee6254: 68 2a 40 b9           ldr      w8, [x19, #0x28]
0x00ee6258: 28 02 18 36           tbz      w8, #3, #0xee629c
0x00ee625c: 81 00 80 52           mov      w1, #4
0x00ee6260: 42 00 80 52           mov      w2, #2
0x00ee6264: 0b 00 00 14           b        #0xee6290
0x00ee6268: e8 00 00 36           tbz      w8, #0, #0xee6284
0x00ee626c: 81 07 80 52           mov      w1, #0x3c
0x00ee6270: c2 07 80 52           mov      w2, #0x3e
0x00ee6274: 43 00 80 52           mov      w3, #2
0x00ee6278: e0 03 13 aa           mov      x0, x19
0x00ee627c: 55 04 00 94           bl       #0xee73d0
0x00ee6280: 68 2a 40 b9           ldr      w8, [x19, #0x28]
0x00ee6284: c8 00 08 36           tbz      w8, #1, #0xee629c
0x00ee6288: 81 07 80 52           mov      w1, #0x3c
0x00ee628c: 42 07 80 52           mov      w2, #0x3a
0x00ee6290: 43 00 80 52           mov      w3, #2
0x00ee6294: e0 03 13 aa           mov      x0, x19
0x00ee6298: 4e 04 00 94           bl       #0xee73d0
0x00ee629c: 62 2e 40 b9           ldr      w2, [x19, #0x2c]
0x00ee62a0: 5f 04 00 31           cmn      w2, #1
0x00ee62a4: e0 0a 00 54           b.eq     #0xee6400
0x00ee62a8: 69 22 40 b9           ldr      w9, [x19, #0x20]
0x00ee62ac: 48 08 00 12           and      w8, w2, #7
0x00ee62b0: 09 05 00 34           cbz      w9, #0xee6350
0x00ee62b4: 68 03 00 34           cbz      w8, #0xee6320
0x00ee62b8: 69 0a 40 f9           ldr      x9, [x19, #0x10]
0x00ee62bc: c9 0b 00 b4           cbz      x9, #0xee6434
0x00ee62c0: 2b 19 40 b9           ldr      w11, [x9, #0x18]
0x00ee62c4: 4a 24 00 51           sub      w10, w2, #9
0x00ee62c8: 5f 01 0b 6b           cmp      w10, w11
0x00ee62cc: 22 0b 00 54           b.hs     #0xee6430
0x00ee62d0: 41 7d 40 93           sxtw     x1, w10
0x00ee62d4: 29 09 01 8b           add      x9, x9, x1, lsl #2
0x00ee62d8: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee62dc: 3f 05 00 71           cmp      w9, #1
0x00ee62e0: c1 01 00 54           b.ne     #0xee6318
0x00ee62e4: 69 0e 40 f9           ldr      x9, [x19, #0x18]
0x00ee62e8: 69 0a 00 b4           cbz      x9, #0xee6434
0x00ee62ec: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee62f0: 3f 00 0a 6b           cmp      w1, w10
0x00ee62f4: e2 09 00 54           b.hs     #0xee6430
0x00ee62f8: 29 09 01 8b           add      x9, x9, x1, lsl #2
0x00ee62fc: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee6300: c9 00 00 35           cbnz     w9, #0xee6318
0x00ee6304: a3 02 80 52           mov      w3, #0x15
0x00ee6308: e0 03 13 aa           mov      x0, x19
0x00ee630c: 31 04 00 94           bl       #0xee73d0
0x00ee6310: 62 2e 40 b9           ldr      w2, [x19, #0x2c]
0x00ee6314: 48 08 00 12           and      w8, w2, #7
0x00ee6318: 1f 1d 00 71           cmp      w8, #7
0x00ee631c: 20 07 00 54           b.eq     #0xee6400
0x00ee6320: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee6324: 88 08 00 b4           cbz      x8, #0xee6434
0x00ee6328: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee632c: 49 1c 00 51           sub      w9, w2, #7
0x00ee6330: 3f 01 0a 6b           cmp      w9, w10
0x00ee6334: e2 07 00 54           b.hs     #0xee6430
0x00ee6338: 21 7d 40 93           sxtw     x1, w9
0x00ee633c: 08 09 01 8b           add      x8, x8, x1, lsl #2
0x00ee6340: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee6344: 1f 05 00 71           cmp      w8, #1
0x00ee6348: c0 04 00 54           b.eq     #0xee63e0
0x00ee634c: 2d 00 00 14           b        #0xee6400
0x00ee6350: 48 03 00 34           cbz      w8, #0xee63b8
0x00ee6354: 69 0a 40 f9           ldr      x9, [x19, #0x10]
0x00ee6358: e9 06 00 b4           cbz      x9, #0xee6434
0x00ee635c: 2b 19 40 b9           ldr      w11, [x9, #0x18]
0x00ee6360: 4a 1c 00 11           add      w10, w2, #7
0x00ee6364: 5f 01 0b 6b           cmp      w10, w11
0x00ee6368: 42 06 00 54           b.hs     #0xee6430
0x00ee636c: 41 7d 40 93           sxtw     x1, w10
0x00ee6370: 29 09 01 8b           add      x9, x9, x1, lsl #2
0x00ee6374: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee6378: c9 01 00 35           cbnz     w9, #0xee63b0
0x00ee637c: 69 0e 40 f9           ldr      x9, [x19, #0x18]
0x00ee6380: a9 05 00 b4           cbz      x9, #0xee6434
0x00ee6384: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee6388: 3f 00 0a 6b           cmp      w1, w10
0x00ee638c: 22 05 00 54           b.hs     #0xee6430
0x00ee6390: 29 09 01 8b           add      x9, x9, x1, lsl #2
0x00ee6394: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee6398: c9 00 00 35           cbnz     w9, #0xee63b0
0x00ee639c: a3 02 80 52           mov      w3, #0x15
0x00ee63a0: e0 03 13 aa           mov      x0, x19
0x00ee63a4: 0b 04 00 94           bl       #0xee73d0
0x00ee63a8: 62 2e 40 b9           ldr      w2, [x19, #0x2c]
0x00ee63ac: 48 08 00 12           and      w8, w2, #7
0x00ee63b0: 1f 1d 00 71           cmp      w8, #7
0x00ee63b4: 60 02 00 54           b.eq     #0xee6400
0x00ee63b8: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee63bc: c8 03 00 b4           cbz      x8, #0xee6434
0x00ee63c0: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee63c4: 49 24 00 11           add      w9, w2, #9
0x00ee63c8: 3f 01 0a 6b           cmp      w9, w10
0x00ee63cc: 22 03 00 54           b.hs     #0xee6430
0x00ee63d0: 21 7d 40 93           sxtw     x1, w9
0x00ee63d4: 08 09 01 8b           add      x8, x8, x1, lsl #2
0x00ee63d8: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee63dc: 28 01 00 35           cbnz     w8, #0xee6400
0x00ee63e0: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee63e4: 88 02 00 b4           cbz      x8, #0xee6434
0x00ee63e8: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee63ec: 3f 00 09 6b           cmp      w1, w9
0x00ee63f0: 02 02 00 54           b.hs     #0xee6430
0x00ee63f4: 08 09 01 8b           add      x8, x8, x1, lsl #2
0x00ee63f8: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee63fc: c8 00 00 34           cbz      w8, #0xee6414
0x00ee6400: f4 4f 43 a9           ldp      x20, x19, [sp, #0x30]
0x00ee6404: f6 57 42 a9           ldp      x22, x21, [sp, #0x20]
0x00ee6408: f8 5f 41 a9           ldp      x24, x23, [sp, #0x10]
0x00ee640c: fe 07 44 f8           ldr      x30, [sp], #0x40
0x00ee6410: c0 03 5f d6           ret      
