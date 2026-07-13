// Function: ChessEngine_AddMove
// RVA: 0xee73d0
// Description: Add move to list
// Size: 308 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee73d0: fe 0f 1f f8           str      x30, [sp, #-0x10]!
0x00ee73d4: a3 00 20 36           tbz      w3, #4, #0xee73e8
0x00ee73d8: 08 20 40 b9           ldr      w8, [x0, #0x20]
0x00ee73dc: 88 08 00 34           cbz      w8, #0xee74ec
0x00ee73e0: 5f e0 00 71           cmp      w2, #0x38
0x00ee73e4: 8a 08 00 54           b.ge     #0xee74f4
0x00ee73e8: 08 34 40 f9           ldr      x8, [x0, #0x68]
0x00ee73ec: a8 08 00 b4           cbz      x8, #0xee7500
0x00ee73f0: 09 34 40 b9           ldr      w9, [x0, #0x34]
0x00ee73f4: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee73f8: 29 05 00 11           add      w9, w9, #1
0x00ee73fc: 3f 01 0a 6b           cmp      w9, w10
0x00ee7400: e2 07 00 54           b.hs     #0xee74fc
0x00ee7404: 09 c9 29 8b           add      x9, x8, w9, sxtw #2
0x00ee7408: 28 21 80 b9           ldrsw    x8, [x9, #0x20]
0x00ee740c: 0a 05 00 11           add      w10, w8, #1
0x00ee7410: 2a 21 00 b9           str      w10, [x9, #0x20]
0x00ee7414: 09 30 40 f9           ldr      x9, [x0, #0x60]
0x00ee7418: 49 07 00 b4           cbz      x9, #0xee7500
0x00ee741c: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee7420: 1f 01 0a 6b           cmp      w8, w10
0x00ee7424: c2 06 00 54           b.hs     #0xee74fc
0x00ee7428: 2a 0d 08 8b           add      x10, x9, x8, lsl #3
0x00ee742c: 41 81 00 39           strb     w1, [x10, #0x20]
0x00ee7430: 42 85 00 39           strb     w2, [x10, #0x21]
0x00ee7434: 5f 89 00 39           strb     wzr, [x10, #0x22]
0x00ee7438: 43 8d 00 39           strb     w3, [x10, #0x23]
0x00ee743c: 0b 08 40 f9           ldr      x11, [x0, #0x10]
0x00ee7440: 0b 06 00 b4           cbz      x11, #0xee7500
0x00ee7444: 6a 19 40 b9           ldr      w10, [x11, #0x18]
0x00ee7448: 5f 01 02 6b           cmp      w10, w2
0x00ee744c: 89 05 00 54           b.ls     #0xee74fc
0x00ee7450: 4a 7c 40 93           sxtw     x10, w2
0x00ee7454: 6b 09 0a 8b           add      x11, x11, x10, lsl #2
0x00ee7458: 6b 21 40 b9           ldr      w11, [x11, #0x20]
0x00ee745c: 7f 19 00 71           cmp      w11, #6
0x00ee7460: e1 01 00 54           b.ne     #0xee749c
0x00ee7464: 0b 20 40 f9           ldr      x11, [x0, #0x40]
0x00ee7468: cb 04 00 b4           cbz      x11, #0xee7500
0x00ee746c: 6c 09 40 f9           ldr      x12, [x11, #0x10]
0x00ee7470: 8d 01 40 b9           ldr      w13, [x12]
0x00ee7474: bf 01 01 6b           cmp      w13, w1
0x00ee7478: 29 04 00 54           b.ls     #0xee74fc
0x00ee747c: 8c 09 40 f9           ldr      x12, [x12, #0x10]
0x00ee7480: 9f 01 02 6b           cmp      w12, w2
0x00ee7484: c9 03 00 54           b.ls     #0xee74fc
0x00ee7488: 2d 7c 40 93           sxtw     x13, w1
0x00ee748c: 8a 29 0d 9b           madd     x10, x12, x13, x10
0x00ee7490: 6a 09 0a 8b           add      x10, x11, x10, lsl #2
0x00ee7494: 4a 21 40 b9           ldr      w10, [x10, #0x20]
0x00ee7498: 11 00 00 14           b        #0xee74dc
0x00ee749c: 0b 0c 40 f9           ldr      x11, [x0, #0x18]
0x00ee74a0: 0b 03 00 b4           cbz      x11, #0xee7500
0x00ee74a4: 6c 19 40 b9           ldr      w12, [x11, #0x18]
0x00ee74a8: 9f 01 02 6b           cmp      w12, w2
0x00ee74ac: 89 02 00 54           b.ls     #0xee74fc
0x00ee74b0: 9f 01 01 6b           cmp      w12, w1
0x00ee74b4: 49 02 00 54           b.ls     #0xee74fc
0x00ee74b8: 6b 81 00 91           add      x11, x11, #0x20
0x00ee74bc: 6c d9 61 b8           ldr      w12, [x11, w1, sxtw #2]
0x00ee74c0: 6a 79 6a b8           ldr      w10, [x11, x10, lsl #2]
0x00ee74c4: 4b 01 80 52           mov      w11, #0xa
0x00ee74c8: ec 03 0c 4b           neg      w12, w12
0x00ee74cc: 4a 31 0b 1b           madd     w10, w10, w11, w12
0x00ee74d0: 0b 48 88 52           mov      w11, #0x4240
0x00ee74d4: eb 01 a0 72           movk     w11, #0xf, lsl #16
0x00ee74d8: 4a 01 0b 0b           add      w10, w10, w11
0x00ee74dc: 28 0d 08 8b           add      x8, x9, x8, lsl #3
0x00ee74e0: 0a 25 00 b9           str      w10, [x8, #0x24]
0x00ee74e4: fe 07 41 f8           ldr      x30, [sp], #0x10
0x00ee74e8: c0 03 5f d6           ret      
