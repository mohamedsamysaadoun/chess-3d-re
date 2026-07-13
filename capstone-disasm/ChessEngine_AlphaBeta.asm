// Function: ChessEngine_AlphaBeta
// RVA: 0xee4e78
// Description: Alpha-beta search
// Size: 1048 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee4e78: ff c3 01 d1           sub      sp, sp, #0x70
0x00ee4e7c: fd 7b 01 a9           stp      x29, x30, [sp, #0x10]
0x00ee4e80: fc 6f 02 a9           stp      x28, x27, [sp, #0x20]
0x00ee4e84: fa 67 03 a9           stp      x26, x25, [sp, #0x30]
0x00ee4e88: f8 5f 04 a9           stp      x24, x23, [sp, #0x40]
0x00ee4e8c: f6 57 05 a9           stp      x22, x21, [sp, #0x50]
0x00ee4e90: f4 4f 06 a9           stp      x20, x19, [sp, #0x60]
0x00ee4e94: 13 04 42 39           ldrb     w19, [x0, #0x81]
0x00ee4e98: f5 03 04 2a           mov      w21, w4
0x00ee4e9c: f7 03 03 2a           mov      w23, w3
0x00ee4ea0: f6 03 02 2a           mov      w22, w2
0x00ee4ea4: f4 03 00 aa           mov      x20, x0
0x00ee4ea8: fa 03 01 2a           mov      w26, w1
0x00ee4eac: 2a e3 fc 97           bl       #0xe1db54
0x00ee4eb0: 73 1d 00 34           cbz      w19, #0xee525c
0x00ee4eb4: 17 03 00 34           cbz      w23, #0xee4f14
0x00ee4eb8: 88 3e 40 f9           ldr      x8, [x20, #0x78]
0x00ee4ebc: e8 1c 00 b4           cbz      x8, #0xee5258
0x00ee4ec0: 89 36 40 b9           ldr      w9, [x20, #0x34]
0x00ee4ec4: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee4ec8: 3f 01 0a 6b           cmp      w9, w10
0x00ee4ecc: e2 18 00 54           b.hs     #0xee51e8
0x00ee4ed0: 2a 7d 40 93           sxtw     x10, w9
0x00ee4ed4: 08 09 0a 8b           add      x8, x8, x10, lsl #2
0x00ee4ed8: 09 21 00 b9           str      w9, [x8, #0x20]
0x00ee4edc: 88 36 40 b9           ldr      w8, [x20, #0x34]
0x00ee4ee0: 1f 05 00 71           cmp      w8, #1
0x00ee4ee4: 01 03 00 54           b.ne     #0xee4f44
0x00ee4ee8: 88 26 40 f9           ldr      x8, [x20, #0x48]
0x00ee4eec: 68 1b 00 b4           cbz      x8, #0xee5258
0x00ee4ef0: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee4ef4: a9 17 00 34           cbz      w9, #0xee51e8
0x00ee4ef8: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee4efc: 89 52 40 b9           ldr      w9, [x20, #0x50]
0x00ee4f00: 28 01 08 4a           eor      w8, w9, w8
0x00ee4f04: 1f 5d 00 72           tst      w8, #0xffffff
0x00ee4f08: 21 02 00 54           b.ne     #0xee4f4c
0x00ee4f0c: e0 03 1f 2a           mov      w0, wzr
0x00ee4f10: ca 00 00 14           b        #0xee5238
0x00ee4f14: a3 02 00 12           and      w3, w21, #1
0x00ee4f18: e0 03 14 aa           mov      x0, x20
0x00ee4f1c: e1 03 1a 2a           mov      w1, w26
0x00ee4f20: e2 03 16 2a           mov      w2, w22
0x00ee4f24: f4 4f 46 a9           ldp      x20, x19, [sp, #0x60]
0x00ee4f28: f6 57 45 a9           ldp      x22, x21, [sp, #0x50]
0x00ee4f2c: f8 5f 44 a9           ldp      x24, x23, [sp, #0x40]
0x00ee4f30: fa 67 43 a9           ldp      x26, x25, [sp, #0x30]
0x00ee4f34: fc 6f 42 a9           ldp      x28, x27, [sp, #0x20]
0x00ee4f38: fd 7b 41 a9           ldp      x29, x30, [sp, #0x10]
0x00ee4f3c: ff c3 01 91           add      sp, sp, #0x70
0x00ee4f40: d4 00 00 14           b        #0xee5290
0x00ee4f44: 1f 7d 00 71           cmp      w8, #0x1f
0x00ee4f48: ca 15 00 54           b.ge     #0xee5200
0x00ee4f4c: 81 22 40 b9           ldr      w1, [x20, #0x20]
0x00ee4f50: e0 03 14 aa           mov      x0, x20
0x00ee4f54: 79 03 00 94           bl       #0xee5d38
0x00ee4f58: e0 0b 00 b9           str      w0, [sp, #8]
0x00ee4f5c: e0 03 14 aa           mov      x0, x20
0x00ee4f60: 96 03 00 94           bl       #0xee5db8
0x00ee4f64: 88 02 42 39           ldrb     w8, [x20, #0x80]
0x00ee4f68: 68 00 00 34           cbz      w8, #0xee4f74
0x00ee4f6c: e0 03 14 aa           mov      x0, x20
0x00ee4f70: 32 05 00 94           bl       #0xee6438
0x00ee4f74: 88 36 40 f9           ldr      x8, [x20, #0x68]
0x00ee4f78: 08 17 00 b4           cbz      x8, #0xee5258
0x00ee4f7c: 89 36 80 b9           ldrsw    x9, [x20, #0x34]
0x00ee4f80: 0b 19 40 b9           ldr      w11, [x8, #0x18]
0x00ee4f84: 3f 01 0b 6b           cmp      w9, w11
0x00ee4f88: 02 13 00 54           b.hs     #0xee51e8
0x00ee4f8c: 2a 05 00 11           add      w10, w9, #1
0x00ee4f90: 5f 01 0b 6b           cmp      w10, w11
0x00ee4f94: a2 12 00 54           b.hs     #0xee51e8
0x00ee4f98: 08 81 00 91           add      x8, x8, #0x20
0x00ee4f9c: 0a d9 6a b8           ldr      w10, [x8, w10, sxtw #2]
0x00ee4fa0: 01 79 69 b8           ldr      w1, [x8, x9, lsl #2]
0x00ee4fa4: e0 03 14 aa           mov      x0, x20
0x00ee4fa8: 42 05 00 51           sub      w2, w10, #1
0x00ee4fac: 59 05 00 94           bl       #0xee6510
0x00ee4fb0: 88 36 40 f9           ldr      x8, [x20, #0x68]
0x00ee4fb4: 28 15 00 b4           cbz      x8, #0xee5258
0x00ee4fb8: 89 36 40 b9           ldr      w9, [x20, #0x34]
0x00ee4fbc: 0b 0d 40 f9           ldr      x11, [x8, #0x18]
0x00ee4fc0: f6 0f 00 b9           str      w22, [sp, #0xc]
0x00ee4fc4: 3f 01 0b 6b           cmp      w9, w11
0x00ee4fc8: 02 11 00 54           b.hs     #0xee51e8
0x00ee4fcc: 2a 05 00 11           add      w10, w9, #1
0x00ee4fd0: 5f 01 0b 6b           cmp      w10, w11
0x00ee4fd4: a2 10 00 54           b.hs     #0xee51e8
0x00ee4fd8: eb 0b 40 b9           ldr      w11, [sp, #8]
0x00ee4fdc: 2c 7d 40 93           sxtw     x12, w9
0x00ee4fe0: 0c 09 0c 8b           add      x12, x8, x12, lsl #2
0x00ee4fe4: 9b 21 40 b9           ldr      w27, [x12, #0x20]
0x00ee4fe8: 6b 01 00 12           and      w11, w11, #1
0x00ee4fec: 7c 01 17 0b           add      w28, w11, w23
0x00ee4ff0: eb 0f 40 b9           ldr      w11, [sp, #0xc]
0x00ee4ff4: f6 03 1f 2a           mov      w22, wzr
0x00ee4ff8: 98 07 00 51           sub      w24, w28, #1
0x00ee4ffc: f7 03 0b 4b           neg      w23, w11
0x00ee5000: 08 c9 2a 8b           add      x8, x8, w10, sxtw #2
0x00ee5004: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5008: 7f 03 08 6b           cmp      w27, w8
0x00ee500c: 0a 0f 00 54           b.ge     #0xee51ec
0x00ee5010: 88 32 40 f9           ldr      x8, [x20, #0x60]
0x00ee5014: 28 12 00 b4           cbz      x8, #0xee5258
0x00ee5018: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee501c: 7f 03 09 6b           cmp      w27, w9
0x00ee5020: 42 0e 00 54           b.hs     #0xee51e8
0x00ee5024: 73 7f 40 93           sxtw     x19, w27
0x00ee5028: 08 0d 13 8b           add      x8, x8, x19, lsl #3
0x00ee502c: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5030: 29 7f 60 92           and      x9, x25, #0xffffffff00000000
0x00ee5034: e0 03 14 aa           mov      x0, x20
0x00ee5038: 39 01 08 aa           orr      x25, x9, x8
0x00ee503c: e1 03 19 aa           mov      x1, x25
0x00ee5040: 4c 05 00 94           bl       #0xee6570
0x00ee5044: 20 0c 00 36           tbz      w0, #0, #0xee51c8
0x00ee5048: e2 03 1a 4b           neg      w2, w26
0x00ee504c: a4 02 00 12           and      w4, w21, #1
0x00ee5050: e0 03 14 aa           mov      x0, x20
0x00ee5054: e1 03 17 2a           mov      w1, w23
0x00ee5058: e3 03 18 2a           mov      w3, w24
0x00ee505c: 87 ff ff 97           bl       #0xee4e78
0x00ee5060: fd 03 00 4b           neg      w29, w0
0x00ee5064: e0 03 14 aa           mov      x0, x20
0x00ee5068: 8c 06 00 94           bl       #0xee6a98
0x00ee506c: 5f 03 1d 6b           cmp      w26, w29
0x00ee5070: ca 09 00 54           b.ge     #0xee51a8
0x00ee5074: 88 32 40 f9           ldr      x8, [x20, #0x60]
0x00ee5078: 08 0f 00 b4           cbz      x8, #0xee5258
0x00ee507c: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5080: e0 0f 40 b9           ldr      w0, [sp, #0xc]
0x00ee5084: 7f 03 09 6b           cmp      w27, w9
0x00ee5088: 02 0b 00 54           b.hs     #0xee51e8
0x00ee508c: 89 22 40 f9           ldr      x9, [x20, #0x40]
0x00ee5090: 49 0e 00 b4           cbz      x9, #0xee5258
0x00ee5094: 2c 09 40 f9           ldr      x12, [x9, #0x10]
0x00ee5098: 0b 0d 13 8b           add      x11, x8, x19, lsl #3
0x00ee509c: 68 81 00 91           add      x8, x11, #0x20
0x00ee50a0: 0a 01 40 39           ldrb     w10, [x8]
0x00ee50a4: 8d 01 40 b9           ldr      w13, [x12]
0x00ee50a8: 5f 01 0d 6b           cmp      w10, w13
0x00ee50ac: e2 09 00 54           b.hs     #0xee51e8
0x00ee50b0: 6b 85 40 39           ldrb     w11, [x11, #0x21]
0x00ee50b4: 8c 09 40 f9           ldr      x12, [x12, #0x10]
0x00ee50b8: 7f 01 0c 6b           cmp      w11, w12
0x00ee50bc: 62 09 00 54           b.hs     #0xee51e8
0x00ee50c0: 8a 2d 0a 9b           madd     x10, x12, x10, x11
0x00ee50c4: 29 09 0a 8b           add      x9, x9, x10, lsl #2
0x00ee50c8: 2a 21 40 b9           ldr      w10, [x9, #0x20]
0x00ee50cc: bf 03 00 6b           cmp      w29, w0
0x00ee50d0: 4a 01 1c 0b           add      w10, w10, w28
0x00ee50d4: 2a 21 00 b9           str      w10, [x9, #0x20]
0x00ee50d8: 0a 0b 00 54           b.ge     #0xee5238
0x00ee50dc: 89 3a 40 f9           ldr      x9, [x20, #0x70]
0x00ee50e0: c9 0b 00 b4           cbz      x9, #0xee5258
0x00ee50e4: 2b 09 40 f9           ldr      x11, [x9, #0x10]
0x00ee50e8: 8a 36 80 b9           ldrsw    x10, [x20, #0x34]
0x00ee50ec: 6c 01 40 b9           ldr      w12, [x11]
0x00ee50f0: 5f 01 0c 6b           cmp      w10, w12
0x00ee50f4: a2 07 00 54           b.hs     #0xee51e8
0x00ee50f8: 6b 09 40 f9           ldr      x11, [x11, #0x10]
0x00ee50fc: 5f 01 0b 6b           cmp      w10, w11
0x00ee5100: 42 07 00 54           b.hs     #0xee51e8
0x00ee5104: 08 01 40 b9           ldr      w8, [x8]
0x00ee5108: 1f 20 03 d5           nop      
0x00ee510c: 6a 29 0a 9b           madd     x10, x11, x10, x10
0x00ee5110: 29 09 0a 8b           add      x9, x9, x10, lsl #2
0x00ee5114: 28 21 00 b9           str      w8, [x9, #0x20]
0x00ee5118: 8a 3e 40 f9           ldr      x10, [x20, #0x78]
0x00ee511c: ea 09 00 b4           cbz      x10, #0xee5258
0x00ee5120: 88 36 40 b9           ldr      w8, [x20, #0x34]
0x00ee5124: 09 05 00 11           add      w9, w8, #1
0x00ee5128: 29 7d 40 93           sxtw     x9, w9
0x00ee512c: 4c 0d 40 f9           ldr      x12, [x10, #0x18]
0x00ee5130: 0b 05 00 11           add      w11, w8, #1
0x00ee5134: 7f 01 0c 6b           cmp      w11, w12
0x00ee5138: 82 05 00 54           b.hs     #0xee51e8
0x00ee513c: 6b 7d 40 93           sxtw     x11, w11
0x00ee5140: 4d 09 0b 8b           add      x13, x10, x11, lsl #2
0x00ee5144: ad 21 40 b9           ldr      w13, [x13, #0x20]
0x00ee5148: 3f 01 0d 6b           cmp      w9, w13
0x00ee514c: 2a 03 00 54           b.ge     #0xee51b0
0x00ee5150: 8a 3a 40 f9           ldr      x10, [x20, #0x70]
0x00ee5154: 2a 08 00 b4           cbz      x10, #0xee5258
0x00ee5158: 4c 09 40 f9           ldr      x12, [x10, #0x10]
0x00ee515c: 8d 01 40 b9           ldr      w13, [x12]
0x00ee5160: 7f 01 0d 6b           cmp      w11, w13
0x00ee5164: 22 04 00 54           b.hs     #0xee51e8
0x00ee5168: 8c 09 40 f9           ldr      x12, [x12, #0x10]
0x00ee516c: 3f 01 0c 6b           cmp      w9, w12
0x00ee5170: c2 03 00 54           b.hs     #0xee51e8
0x00ee5174: 1f 01 0d 6b           cmp      w8, w13
0x00ee5178: 82 03 00 54           b.hs     #0xee51e8
0x00ee517c: 8b 25 0b 9b           madd     x11, x12, x11, x9
0x00ee5180: 4a 81 00 91           add      x10, x10, #0x20
0x00ee5184: 4b 79 6b b8           ldr      w11, [x10, x11, lsl #2]
0x00ee5188: 08 7d 40 93           sxtw     x8, w8
0x00ee518c: 88 25 08 9b           madd     x8, x12, x8, x9
0x00ee5190: 29 05 00 91           add      x9, x9, #1
0x00ee5194: 4b 79 28 b8           str      w11, [x10, x8, lsl #2]
0x00ee5198: 8a 3e 40 f9           ldr      x10, [x20, #0x78]
0x00ee519c: 88 36 40 b9           ldr      w8, [x20, #0x34]
0x00ee51a0: 6a fc ff b5           cbnz     x10, #0xee512c
0x00ee51a4: 2d 00 00 14           b        #0xee5258
0x00ee51a8: 36 00 80 52           mov      w22, #1
0x00ee51ac: 07 00 00 14           b        #0xee51c8
0x00ee51b0: 1f 01 0c 6b           cmp      w8, w12
0x00ee51b4: a2 01 00 54           b.hs     #0xee51e8
0x00ee51b8: 48 c9 28 8b           add      x8, x10, w8, sxtw #2
0x00ee51bc: 36 00 80 52           mov      w22, #1
0x00ee51c0: fa 03 1d 2a           mov      w26, w29
0x00ee51c4: 0d 21 00 b9           str      w13, [x8, #0x20]
0x00ee51c8: 88 36 40 f9           ldr      x8, [x20, #0x68]
0x00ee51cc: 68 04 00 b4           cbz      x8, #0xee5258
0x00ee51d0: 89 36 40 b9           ldr      w9, [x20, #0x34]
0x00ee51d4: 0b 19 40 b9           ldr      w11, [x8, #0x18]
0x00ee51d8: 7b 07 00 11           add      w27, w27, #1
0x00ee51dc: 2a 05 00 11           add      w10, w9, #1
0x00ee51e0: 5f 01 0b 6b           cmp      w10, w11
0x00ee51e4: e3 f0 ff 54           b.lo     #0xee5000
0x00ee51e8: d1 e2 fc 97           bl       #0xe1dd2c
0x00ee51ec: d6 01 00 36           tbz      w22, #0, #0xee5224
0x00ee51f0: 88 32 40 b9           ldr      w8, [x20, #0x30]
0x00ee51f4: 1f 91 01 71           cmp      w8, #0x64
0x00ee51f8: 40 b3 9f 1a           csel     w0, w26, wzr, lt
0x00ee51fc: 0f 00 00 14           b        #0xee5238
0x00ee5200: e0 03 14 aa           mov      x0, x20
0x00ee5204: f4 4f 46 a9           ldp      x20, x19, [sp, #0x60]
0x00ee5208: f6 57 45 a9           ldp      x22, x21, [sp, #0x50]
0x00ee520c: f8 5f 44 a9           ldp      x24, x23, [sp, #0x40]
0x00ee5210: fa 67 43 a9           ldp      x26, x25, [sp, #0x30]
0x00ee5214: fc 6f 42 a9           ldp      x28, x27, [sp, #0x20]
0x00ee5218: fd 7b 41 a9           ldp      x29, x30, [sp, #0x10]
0x00ee521c: ff c3 01 91           add      sp, sp, #0x70
0x00ee5220: e3 00 00 14           b        #0xee55ac
0x00ee5224: e8 e1 84 12           mov      w8, #-0x2710
0x00ee5228: 28 01 08 0b           add      w8, w9, w8
0x00ee522c: e9 0b 40 b9           ldr      w9, [sp, #8]
0x00ee5230: 3f 01 00 72           tst      w9, #1
0x00ee5234: 00 11 9f 1a           csel     w0, w8, wzr, ne
0x00ee5238: f4 4f 46 a9           ldp      x20, x19, [sp, #0x60]
0x00ee523c: f6 57 45 a9           ldp      x22, x21, [sp, #0x50]
0x00ee5240: f8 5f 44 a9           ldp      x24, x23, [sp, #0x40]
0x00ee5244: fa 67 43 a9           ldp      x26, x25, [sp, #0x30]
0x00ee5248: fc 6f 42 a9           ldp      x28, x27, [sp, #0x20]
0x00ee524c: fd 7b 41 a9           ldp      x29, x30, [sp, #0x10]
0x00ee5250: ff c3 01 91           add      sp, sp, #0x70
0x00ee5254: c0 03 5f d6           ret      
