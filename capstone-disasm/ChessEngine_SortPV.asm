// Function: ChessEngine_SortPV
// RVA: 0xee6438
// Description: Sort PV
// Size: 216 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee6438: fe 0f 1f f8           str      x30, [sp, #-0x10]!
0x00ee643c: 09 34 40 f9           ldr      x9, [x0, #0x68]
0x00ee6440: 1f 00 02 39           strb     wzr, [x0, #0x80]
0x00ee6444: 49 06 00 b4           cbz      x9, #0xee650c
0x00ee6448: 08 34 80 b9           ldrsw    x8, [x0, #0x34]
0x00ee644c: 2b 19 40 b9           ldr      w11, [x9, #0x18]
0x00ee6450: 1f 01 0b 6b           cmp      w8, w11
0x00ee6454: a2 05 00 54           b.hs     #0xee6508
0x00ee6458: 0a 05 00 11           add      w10, w8, #1
0x00ee645c: 5f 01 0b 6b           cmp      w10, w11
0x00ee6460: 42 05 00 54           b.hs     #0xee6508
0x00ee6464: 2b 81 00 91           add      x11, x9, #0x20
0x00ee6468: 69 79 68 b8           ldr      w9, [x11, x8, lsl #2]
0x00ee646c: 6a d9 6a b8           ldr      w10, [x11, w10, sxtw #2]
0x00ee6470: 3f 01 0a 6b           cmp      w9, w10
0x00ee6474: 2b c1 8a 1a           csel     w11, w9, w10, gt
0x00ee6478: 4a 04 00 54           b.ge     #0xee6500
0x00ee647c: 0a 30 40 f9           ldr      x10, [x0, #0x60]
0x00ee6480: 6a 04 00 b4           cbz      x10, #0xee650c
0x00ee6484: 4c 19 40 b9           ldr      w12, [x10, #0x18]
0x00ee6488: 3f 01 0c 6b           cmp      w9, w12
0x00ee648c: e2 03 00 54           b.hs     #0xee6508
0x00ee6490: 0c 38 40 f9           ldr      x12, [x0, #0x70]
0x00ee6494: cc 03 00 b4           cbz      x12, #0xee650c
0x00ee6498: 8d 09 40 f9           ldr      x13, [x12, #0x10]
0x00ee649c: ae 01 40 b9           ldr      w14, [x13]
0x00ee64a0: 4e 03 00 34           cbz      w14, #0xee6508
0x00ee64a4: ad 11 40 b9           ldr      w13, [x13, #0x10]
0x00ee64a8: 1f 01 0d 6b           cmp      w8, w13
0x00ee64ac: e2 02 00 54           b.hs     #0xee6508
0x00ee64b0: 4d cd 29 8b           add      x13, x10, w9, sxtw #3
0x00ee64b4: 8c 09 08 8b           add      x12, x12, x8, lsl #2
0x00ee64b8: ad 21 40 b9           ldr      w13, [x13, #0x20]
0x00ee64bc: 8c 21 40 b9           ldr      w12, [x12, #0x20]
0x00ee64c0: 8c 01 0d 4a           eor      w12, w12, w13
0x00ee64c4: 9f 5d 00 72           tst      w12, #0xffffff
0x00ee64c8: a0 00 00 54           b.eq     #0xee64dc
0x00ee64cc: 29 05 00 11           add      w9, w9, #1
0x00ee64d0: 7f 01 09 6b           cmp      w11, w9
0x00ee64d4: 61 fd ff 54           b.ne     #0xee6480
0x00ee64d8: 0a 00 00 14           b        #0xee6500
0x00ee64dc: 28 7d 40 93           sxtw     x8, w9
0x00ee64e0: 29 00 80 52           mov      w9, #1
0x00ee64e4: 09 00 02 39           strb     w9, [x0, #0x80]
0x00ee64e8: 48 0d 08 8b           add      x8, x10, x8, lsl #3
0x00ee64ec: 09 25 40 b9           ldr      w9, [x8, #0x24]
0x00ee64f0: 0a d0 92 52           mov      w10, #0x9680
0x00ee64f4: 0a 13 a0 72           movk     w10, #0x98, lsl #16
0x00ee64f8: 29 01 0a 0b           add      w9, w9, w10
0x00ee64fc: 09 25 00 b9           str      w9, [x8, #0x24]
0x00ee6500: fe 07 41 f8           ldr      x30, [sp], #0x10
0x00ee6504: c0 03 5f d6           ret      
