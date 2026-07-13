// Function: ChessEngine_GenerateCaptures
// RVA: 0xee6cb8
// Description: Generate capture moves
// Size: 1448 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee6cb8: fe 0f 1c f8           str      x30, [sp, #-0x40]!
0x00ee6cbc: f8 5f 01 a9           stp      x24, x23, [sp, #0x10]
0x00ee6cc0: f6 57 02 a9           stp      x22, x21, [sp, #0x20]
0x00ee6cc4: f4 4f 03 a9           stp      x20, x19, [sp, #0x30]
0x00ee6cc8: 74 9d 00 f0           adrp     x20, #0x2295000
0x00ee6ccc: 88 1a 5a 39           ldrb     w8, [x20, #0x686]
0x00ee6cd0: f3 03 00 aa           mov      x19, x0
0x00ee6cd4: c8 00 00 37           tbnz     w8, #0, #0xee6cec
0x00ee6cd8: a0 91 00 b0           adrp     x0, #0x211b000
0x00ee6cdc: 00 70 41 f9           ldr      x0, [x0, #0x2e0]
0x00ee6ce0: 89 db fc 97           bl       #0xe1db04
0x00ee6ce4: 28 00 80 52           mov      w8, #1
0x00ee6ce8: 88 1a 1a 39           strb     w8, [x20, #0x686]
0x00ee6cec: 68 36 40 f9           ldr      x8, [x19, #0x68]
0x00ee6cf0: 68 2b 00 b4           cbz      x8, #0xee725c
0x00ee6cf4: 69 36 80 b9           ldrsw    x9, [x19, #0x34]
0x00ee6cf8: 0b 19 40 b9           ldr      w11, [x8, #0x18]
0x00ee6cfc: 3f 01 0b 6b           cmp      w9, w11
0x00ee6d00: c2 2a 00 54           b.hs     #0xee7258
0x00ee6d04: 2a 05 00 11           add      w10, w9, #1
0x00ee6d08: 5f 01 0b 6b           cmp      w10, w11
0x00ee6d0c: 62 2a 00 54           b.hs     #0xee7258
0x00ee6d10: 08 81 00 91           add      x8, x8, #0x20
0x00ee6d14: b6 91 00 b0           adrp     x22, #0x211b000
0x00ee6d18: 09 79 69 b8           ldr      w9, [x8, x9, lsl #2]
0x00ee6d1c: d6 72 41 f9           ldr      x22, [x22, #0x2e0]
0x00ee6d20: f4 03 1f aa           mov      x20, xzr
0x00ee6d24: 09 d9 2a b8           str      w9, [x8, w10, sxtw #2]
0x00ee6d28: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee6d2c: 88 29 00 b4           cbz      x8, #0xee725c
0x00ee6d30: 09 0d 40 f9           ldr      x9, [x8, #0x18]
0x00ee6d34: 9f 42 29 eb           cmp      x20, w9, uxtw
0x00ee6d38: 02 29 00 54           b.hs     #0xee7258
0x00ee6d3c: 0a 09 14 8b           add      x10, x8, x20, lsl #2
0x00ee6d40: 4a 21 40 b9           ldr      w10, [x10, #0x20]
0x00ee6d44: 6b 22 40 b9           ldr      w11, [x19, #0x20]
0x00ee6d48: 5f 01 0b 6b           cmp      w10, w11
0x00ee6d4c: 61 1b 00 54           b.ne     #0xee70b8
0x00ee6d50: 6b 0e 40 f9           ldr      x11, [x19, #0x18]
0x00ee6d54: 4b 28 00 b4           cbz      x11, #0xee725c
0x00ee6d58: 6c 19 40 b9           ldr      w12, [x11, #0x18]
0x00ee6d5c: 9f 02 0c eb           cmp      x20, x12
0x00ee6d60: c2 27 00 54           b.hs     #0xee7258
0x00ee6d64: 6b 09 14 8b           add      x11, x11, x20, lsl #2
0x00ee6d68: 6b 21 40 b9           ldr      w11, [x11, #0x20]
0x00ee6d6c: cb 0d 00 34           cbz      w11, #0xee6f24
0x00ee6d70: 7f 15 00 71           cmp      w11, #5
0x00ee6d74: 2c 1a 00 54           b.gt     #0xee70b8
0x00ee6d78: f7 03 1f 2a           mov      w23, wzr
0x00ee6d7c: c0 02 40 f9           ldr      x0, [x22]
0x00ee6d80: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee6d84: 68 00 00 35           cbnz     w8, #0xee6d90
0x00ee6d88: a1 db fc 97           bl       #0xe1dc0c
0x00ee6d8c: c0 02 40 f9           ldr      x0, [x22]
0x00ee6d90: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee6d94: 48 26 00 b4           cbz      x8, #0xee725c
0x00ee6d98: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee6d9c: 9f 02 09 eb           cmp      x20, x9
0x00ee6da0: c2 25 00 54           b.hs     #0xee7258
0x00ee6da4: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee6da8: 29 0d 40 f9           ldr      x9, [x9, #0x18]
0x00ee6dac: 89 25 00 b4           cbz      x9, #0xee725c
0x00ee6db0: 08 09 14 8b           add      x8, x8, x20, lsl #2
0x00ee6db4: 08 21 80 b9           ldrsw    x8, [x8, #0x20]
0x00ee6db8: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee6dbc: 1f 01 0a 6b           cmp      w8, w10
0x00ee6dc0: c2 24 00 54           b.hs     #0xee7258
0x00ee6dc4: 28 09 08 8b           add      x8, x9, x8, lsl #2
0x00ee6dc8: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee6dcc: ff 02 08 6b           cmp      w23, w8
0x00ee6dd0: 4a 17 00 54           b.ge     #0xee70b8
0x00ee6dd4: f8 7e 40 93           sxtw     x24, w23
0x00ee6dd8: f5 03 14 2a           mov      w21, w20
0x00ee6ddc: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee6de0: 68 00 00 35           cbnz     w8, #0xee6dec
0x00ee6de4: 8a db fc 97           bl       #0xe1dc0c
0x00ee6de8: c0 02 40 f9           ldr      x0, [x22]
0x00ee6dec: 0a 5c 40 f9           ldr      x10, [x0, #0xb8]
0x00ee6df0: 49 05 40 f9           ldr      x9, [x10, #8]
0x00ee6df4: 49 23 00 b4           cbz      x9, #0xee725c
0x00ee6df8: 28 19 40 b9           ldr      w8, [x9, #0x18]
0x00ee6dfc: bf 02 08 6b           cmp      w21, w8
0x00ee6e00: c2 22 00 54           b.hs     #0xee7258
0x00ee6e04: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee6e08: a8 22 00 b4           cbz      x8, #0xee725c
0x00ee6e0c: 0b 19 40 b9           ldr      w11, [x8, #0x18]
0x00ee6e10: 9f 02 0b eb           cmp      x20, x11
0x00ee6e14: 22 22 00 54           b.hs     #0xee7258
0x00ee6e18: 4b 11 40 f9           ldr      x11, [x10, #0x20]
0x00ee6e1c: 0b 22 00 b4           cbz      x11, #0xee725c
0x00ee6e20: 6d 09 40 f9           ldr      x13, [x11, #0x10]
0x00ee6e24: 0c 09 14 8b           add      x12, x8, x20, lsl #2
0x00ee6e28: 8c 21 80 b9           ldrsw    x12, [x12, #0x20]
0x00ee6e2c: ae 01 40 b9           ldr      w14, [x13]
0x00ee6e30: 9f 01 0e 6b           cmp      w12, w14
0x00ee6e34: 22 21 00 54           b.hs     #0xee7258
0x00ee6e38: ad 09 40 f9           ldr      x13, [x13, #0x10]
0x00ee6e3c: ff 02 0d 6b           cmp      w23, w13
0x00ee6e40: c2 20 00 54           b.hs     #0xee7258
0x00ee6e44: 4a 01 40 f9           ldr      x10, [x10]
0x00ee6e48: aa 20 00 b4           cbz      x10, #0xee725c
0x00ee6e4c: ac 61 0c 9b           madd     x12, x13, x12, x24
0x00ee6e50: 29 c9 35 8b           add      x9, x9, w21, sxtw #2
0x00ee6e54: 6b 09 0c 8b           add      x11, x11, x12, lsl #2
0x00ee6e58: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee6e5c: 6b 21 40 b9           ldr      w11, [x11, #0x20]
0x00ee6e60: 4c 19 40 b9           ldr      w12, [x10, #0x18]
0x00ee6e64: 69 01 09 0b           add      w9, w11, w9
0x00ee6e68: 3f 01 0c 6b           cmp      w9, w12
0x00ee6e6c: 62 1f 00 54           b.hs     #0xee7258
0x00ee6e70: 49 c9 29 8b           add      x9, x10, w9, sxtw #2
0x00ee6e74: 35 21 40 b9           ldr      w21, [x9, #0x20]
0x00ee6e78: bf 06 00 31           cmn      w21, #1
0x00ee6e7c: 00 05 00 54           b.eq     #0xee6f1c
0x00ee6e80: 69 0a 40 f9           ldr      x9, [x19, #0x10]
0x00ee6e84: c9 1e 00 b4           cbz      x9, #0xee725c
0x00ee6e88: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee6e8c: bf 02 0a 6b           cmp      w21, w10
0x00ee6e90: 42 1e 00 54           b.hs     #0xee7258
0x00ee6e94: aa 7e 40 93           sxtw     x10, w21
0x00ee6e98: 29 09 0a 8b           add      x9, x9, x10, lsl #2
0x00ee6e9c: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee6ea0: 3f 19 00 71           cmp      w9, #6
0x00ee6ea4: c1 02 00 54           b.ne     #0xee6efc
0x00ee6ea8: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ee6eac: a9 00 00 35           cbnz     w9, #0xee6ec0
0x00ee6eb0: 57 db fc 97           bl       #0xe1dc0c
0x00ee6eb4: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee6eb8: 28 1d 00 b4           cbz      x8, #0xee725c
0x00ee6ebc: c0 02 40 f9           ldr      x0, [x22]
0x00ee6ec0: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee6ec4: 9f 02 09 eb           cmp      x20, x9
0x00ee6ec8: 82 1c 00 54           b.hs     #0xee7258
0x00ee6ecc: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee6ed0: 29 09 40 f9           ldr      x9, [x9, #0x10]
0x00ee6ed4: 49 1c 00 b4           cbz      x9, #0xee725c
0x00ee6ed8: 08 09 14 8b           add      x8, x8, x20, lsl #2
0x00ee6edc: 08 21 80 b9           ldrsw    x8, [x8, #0x20]
0x00ee6ee0: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee6ee4: 1f 01 0a 6b           cmp      w8, w10
0x00ee6ee8: 82 1b 00 54           b.hs     #0xee7258
0x00ee6eec: 28 01 08 8b           add      x8, x9, x8
0x00ee6ef0: 08 81 40 39           ldrb     w8, [x8, #0x20]
0x00ee6ef4: 48 f7 ff 35           cbnz     w8, #0xee6ddc
0x00ee6ef8: 09 00 00 14           b        #0xee6f1c
0x00ee6efc: 68 26 40 b9           ldr      w8, [x19, #0x24]
0x00ee6f00: 3f 01 08 6b           cmp      w9, w8
0x00ee6f04: c1 00 00 54           b.ne     #0xee6f1c
0x00ee6f08: 23 00 80 52           mov      w3, #1
0x00ee6f0c: e0 03 13 aa           mov      x0, x19
0x00ee6f10: e1 03 14 2a           mov      w1, w20
0x00ee6f14: e2 03 15 2a           mov      w2, w21
0x00ee6f18: 2e 01 00 94           bl       #0xee73d0
0x00ee6f1c: f7 06 00 11           add      w23, w23, #1
0x00ee6f20: 97 ff ff 17           b        #0xee6d7c
0x00ee6f24: 2a 06 00 35           cbnz     w10, #0xee6fe8
0x00ee6f28: 95 0a 00 72           ands     w21, w20, #7
0x00ee6f2c: 20 02 00 54           b.eq     #0xee6f70
0x00ee6f30: 8a 26 00 d1           sub      x10, x20, #9
0x00ee6f34: 5f 01 09 6b           cmp      w10, w9
0x00ee6f38: 02 19 00 54           b.hs     #0xee7258
0x00ee6f3c: 08 09 0a 8b           add      x8, x8, x10, lsl #2
0x00ee6f40: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee6f44: 1f 05 00 71           cmp      w8, #1
0x00ee6f48: c1 00 00 54           b.ne     #0xee6f60
0x00ee6f4c: 82 26 00 51           sub      w2, w20, #9
0x00ee6f50: 23 02 80 52           mov      w3, #0x11
0x00ee6f54: e0 03 13 aa           mov      x0, x19
0x00ee6f58: e1 03 14 2a           mov      w1, w20
0x00ee6f5c: 1d 01 00 94           bl       #0xee73d0
0x00ee6f60: bf 1e 00 71           cmp      w21, #7
0x00ee6f64: 00 02 00 54           b.eq     #0xee6fa4
0x00ee6f68: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee6f6c: 88 17 00 b4           cbz      x8, #0xee725c
0x00ee6f70: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee6f74: 89 1e 00 d1           sub      x9, x20, #7
0x00ee6f78: 3f 01 0a 6b           cmp      w9, w10
0x00ee6f7c: e2 16 00 54           b.hs     #0xee7258
0x00ee6f80: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee6f84: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee6f88: 1f 05 00 71           cmp      w8, #1
0x00ee6f8c: c1 00 00 54           b.ne     #0xee6fa4
0x00ee6f90: 82 1e 00 51           sub      w2, w20, #7
0x00ee6f94: 23 02 80 52           mov      w3, #0x11
0x00ee6f98: e0 03 13 aa           mov      x0, x19
0x00ee6f9c: e1 03 14 2a           mov      w1, w20
0x00ee6fa0: 0c 01 00 94           bl       #0xee73d0
0x00ee6fa4: 9f 3e 00 f1           cmp      x20, #0xf
0x00ee6fa8: 08 02 00 54           b.hi     #0xee6fe8
0x00ee6fac: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee6fb0: 68 15 00 b4           cbz      x8, #0xee725c
0x00ee6fb4: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee6fb8: 89 22 00 d1           sub      x9, x20, #8
0x00ee6fbc: 3f 01 0a 6b           cmp      w9, w10
0x00ee6fc0: c2 14 00 54           b.hs     #0xee7258
0x00ee6fc4: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee6fc8: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee6fcc: 1f 19 00 71           cmp      w8, #6
0x00ee6fd0: c1 00 00 54           b.ne     #0xee6fe8
0x00ee6fd4: 82 22 00 51           sub      w2, w20, #8
0x00ee6fd8: 03 02 80 52           mov      w3, #0x10
0x00ee6fdc: e0 03 13 aa           mov      x0, x19
0x00ee6fe0: e1 03 14 2a           mov      w1, w20
0x00ee6fe4: fb 00 00 94           bl       #0xee73d0
0x00ee6fe8: 68 22 40 b9           ldr      w8, [x19, #0x20]
0x00ee6fec: 1f 05 00 71           cmp      w8, #1
0x00ee6ff0: 41 06 00 54           b.ne     #0xee70b8
0x00ee6ff4: 95 0a 00 72           ands     w21, w20, #7
0x00ee6ff8: 20 02 00 54           b.eq     #0xee703c
0x00ee6ffc: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee7000: e8 12 00 b4           cbz      x8, #0xee725c
0x00ee7004: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee7008: 89 1e 00 91           add      x9, x20, #7
0x00ee700c: 3f 01 0a eb           cmp      x9, x10
0x00ee7010: 42 12 00 54           b.hs     #0xee7258
0x00ee7014: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee7018: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee701c: c8 00 00 35           cbnz     w8, #0xee7034
0x00ee7020: 82 1e 00 11           add      w2, w20, #7
0x00ee7024: 23 02 80 52           mov      w3, #0x11
0x00ee7028: e0 03 13 aa           mov      x0, x19
0x00ee702c: e1 03 14 2a           mov      w1, w20
0x00ee7030: e8 00 00 94           bl       #0xee73d0
0x00ee7034: bf 1e 00 71           cmp      w21, #7
0x00ee7038: e0 01 00 54           b.eq     #0xee7074
0x00ee703c: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee7040: e8 10 00 b4           cbz      x8, #0xee725c
0x00ee7044: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee7048: 89 26 00 91           add      x9, x20, #9
0x00ee704c: 3f 01 0a eb           cmp      x9, x10
0x00ee7050: 42 10 00 54           b.hs     #0xee7258
0x00ee7054: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee7058: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee705c: c8 00 00 35           cbnz     w8, #0xee7074
0x00ee7060: 82 26 00 11           add      w2, w20, #9
0x00ee7064: 23 02 80 52           mov      w3, #0x11
0x00ee7068: e0 03 13 aa           mov      x0, x19
0x00ee706c: e1 03 14 2a           mov      w1, w20
0x00ee7070: d8 00 00 94           bl       #0xee73d0
0x00ee7074: 9f c2 00 f1           cmp      x20, #0x30
0x00ee7078: 03 02 00 54           b.lo     #0xee70b8
0x00ee707c: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee7080: e8 0e 00 b4           cbz      x8, #0xee725c
0x00ee7084: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee7088: 89 22 00 91           add      x9, x20, #8
0x00ee708c: 3f 01 0a eb           cmp      x9, x10
0x00ee7090: 42 0e 00 54           b.hs     #0xee7258
0x00ee7094: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee7098: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee709c: 1f 19 00 71           cmp      w8, #6
0x00ee70a0: c1 00 00 54           b.ne     #0xee70b8
0x00ee70a4: 82 22 00 11           add      w2, w20, #8
0x00ee70a8: 03 02 80 52           mov      w3, #0x10
0x00ee70ac: e0 03 13 aa           mov      x0, x19
0x00ee70b0: e1 03 14 2a           mov      w1, w20
0x00ee70b4: c7 00 00 94           bl       #0xee73d0
0x00ee70b8: 94 06 00 91           add      x20, x20, #1
0x00ee70bc: 9f 02 01 f1           cmp      x20, #0x40
0x00ee70c0: 41 e3 ff 54           b.ne     #0xee6d28
0x00ee70c4: 62 2e 40 b9           ldr      w2, [x19, #0x2c]
0x00ee70c8: 5f 04 00 31           cmn      w2, #1
0x00ee70cc: e0 0a 00 54           b.eq     #0xee7228
0x00ee70d0: 69 22 40 b9           ldr      w9, [x19, #0x20]
0x00ee70d4: 48 08 00 12           and      w8, w2, #7
0x00ee70d8: 09 05 00 34           cbz      w9, #0xee7178
0x00ee70dc: 68 03 00 34           cbz      w8, #0xee7148
0x00ee70e0: 69 0a 40 f9           ldr      x9, [x19, #0x10]
0x00ee70e4: c9 0b 00 b4           cbz      x9, #0xee725c
0x00ee70e8: 2b 19 40 b9           ldr      w11, [x9, #0x18]
0x00ee70ec: 4a 24 00 51           sub      w10, w2, #9
0x00ee70f0: 5f 01 0b 6b           cmp      w10, w11
0x00ee70f4: 22 0b 00 54           b.hs     #0xee7258
0x00ee70f8: 41 7d 40 93           sxtw     x1, w10
0x00ee70fc: 29 09 01 8b           add      x9, x9, x1, lsl #2
0x00ee7100: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee7104: 3f 05 00 71           cmp      w9, #1
0x00ee7108: c1 01 00 54           b.ne     #0xee7140
0x00ee710c: 69 0e 40 f9           ldr      x9, [x19, #0x18]
0x00ee7110: 69 0a 00 b4           cbz      x9, #0xee725c
0x00ee7114: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee7118: 3f 00 0a 6b           cmp      w1, w10
0x00ee711c: e2 09 00 54           b.hs     #0xee7258
0x00ee7120: 29 09 01 8b           add      x9, x9, x1, lsl #2
0x00ee7124: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee7128: c9 00 00 35           cbnz     w9, #0xee7140
0x00ee712c: a3 02 80 52           mov      w3, #0x15
0x00ee7130: e0 03 13 aa           mov      x0, x19
0x00ee7134: a7 00 00 94           bl       #0xee73d0
0x00ee7138: 62 2e 40 b9           ldr      w2, [x19, #0x2c]
0x00ee713c: 48 08 00 12           and      w8, w2, #7
0x00ee7140: 1f 1d 00 71           cmp      w8, #7
0x00ee7144: 20 07 00 54           b.eq     #0xee7228
0x00ee7148: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee714c: 88 08 00 b4           cbz      x8, #0xee725c
0x00ee7150: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee7154: 49 1c 00 51           sub      w9, w2, #7
0x00ee7158: 3f 01 0a 6b           cmp      w9, w10
0x00ee715c: e2 07 00 54           b.hs     #0xee7258
0x00ee7160: 21 7d 40 93           sxtw     x1, w9
0x00ee7164: 08 09 01 8b           add      x8, x8, x1, lsl #2
0x00ee7168: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee716c: 1f 05 00 71           cmp      w8, #1
0x00ee7170: c0 04 00 54           b.eq     #0xee7208
0x00ee7174: 2d 00 00 14           b        #0xee7228
0x00ee7178: 48 03 00 34           cbz      w8, #0xee71e0
0x00ee717c: 69 0a 40 f9           ldr      x9, [x19, #0x10]
0x00ee7180: e9 06 00 b4           cbz      x9, #0xee725c
0x00ee7184: 2b 19 40 b9           ldr      w11, [x9, #0x18]
0x00ee7188: 4a 1c 00 11           add      w10, w2, #7
0x00ee718c: 5f 01 0b 6b           cmp      w10, w11
0x00ee7190: 42 06 00 54           b.hs     #0xee7258
0x00ee7194: 41 7d 40 93           sxtw     x1, w10
0x00ee7198: 29 09 01 8b           add      x9, x9, x1, lsl #2
0x00ee719c: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee71a0: c9 01 00 35           cbnz     w9, #0xee71d8
0x00ee71a4: 69 0e 40 f9           ldr      x9, [x19, #0x18]
0x00ee71a8: a9 05 00 b4           cbz      x9, #0xee725c
0x00ee71ac: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee71b0: 3f 00 0a 6b           cmp      w1, w10
0x00ee71b4: 22 05 00 54           b.hs     #0xee7258
0x00ee71b8: 29 09 01 8b           add      x9, x9, x1, lsl #2
0x00ee71bc: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee71c0: c9 00 00 35           cbnz     w9, #0xee71d8
0x00ee71c4: a3 02 80 52           mov      w3, #0x15
0x00ee71c8: e0 03 13 aa           mov      x0, x19
0x00ee71cc: 81 00 00 94           bl       #0xee73d0
0x00ee71d0: 62 2e 40 b9           ldr      w2, [x19, #0x2c]
0x00ee71d4: 48 08 00 12           and      w8, w2, #7
0x00ee71d8: 1f 1d 00 71           cmp      w8, #7
0x00ee71dc: 60 02 00 54           b.eq     #0xee7228
0x00ee71e0: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee71e4: c8 03 00 b4           cbz      x8, #0xee725c
0x00ee71e8: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee71ec: 49 24 00 11           add      w9, w2, #9
0x00ee71f0: 3f 01 0a 6b           cmp      w9, w10
0x00ee71f4: 22 03 00 54           b.hs     #0xee7258
0x00ee71f8: 21 7d 40 93           sxtw     x1, w9
0x00ee71fc: 08 09 01 8b           add      x8, x8, x1, lsl #2
0x00ee7200: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee7204: 28 01 00 35           cbnz     w8, #0xee7228
0x00ee7208: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee720c: 88 02 00 b4           cbz      x8, #0xee725c
0x00ee7210: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee7214: 3f 00 09 6b           cmp      w1, w9
0x00ee7218: 02 02 00 54           b.hs     #0xee7258
0x00ee721c: 08 09 01 8b           add      x8, x8, x1, lsl #2
0x00ee7220: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee7224: c8 00 00 34           cbz      w8, #0xee723c
0x00ee7228: f4 4f 43 a9           ldp      x20, x19, [sp, #0x30]
0x00ee722c: f6 57 42 a9           ldp      x22, x21, [sp, #0x20]
0x00ee7230: f8 5f 41 a9           ldp      x24, x23, [sp, #0x10]
0x00ee7234: fe 07 44 f8           ldr      x30, [sp], #0x40
0x00ee7238: c0 03 5f d6           ret      
