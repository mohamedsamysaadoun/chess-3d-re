// Function: ChessEngine_EvalWhiteKing
// RVA: 0xee7710
// Description: Eval white king
// Size: 404 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee7710: fe 0f 1d f8           str      x30, [sp, #-0x30]!
0x00ee7714: f6 57 01 a9           stp      x22, x21, [sp, #0x10]
0x00ee7718: f4 4f 02 a9           stp      x20, x19, [sp, #0x20]
0x00ee771c: 76 9d 00 d0           adrp     x22, #0x2295000
0x00ee7720: b5 91 00 90           adrp     x21, #0x211b000
0x00ee7724: c8 2a 5a 39           ldrb     w8, [x22, #0x68a]
0x00ee7728: b5 72 41 f9           ldr      x21, [x21, #0x2e0]
0x00ee772c: f4 03 01 2a           mov      w20, w1
0x00ee7730: f3 03 00 aa           mov      x19, x0
0x00ee7734: c8 00 00 37           tbnz     w8, #0, #0xee774c
0x00ee7738: a0 91 00 90           adrp     x0, #0x211b000
0x00ee773c: 00 70 41 f9           ldr      x0, [x0, #0x2e0]
0x00ee7740: f1 d8 fc 97           bl       #0xe1db04
0x00ee7744: 28 00 80 52           mov      w8, #1
0x00ee7748: c8 2a 1a 39           strb     w8, [x22, #0x68a]
0x00ee774c: a0 02 40 f9           ldr      x0, [x21]
0x00ee7750: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee7754: 68 00 00 35           cbnz     w8, #0xee7760
0x00ee7758: 2d d9 fc 97           bl       #0xe1dc0c
0x00ee775c: a0 02 40 f9           ldr      x0, [x21]
0x00ee7760: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ee7764: 08 2d 40 f9           ldr      x8, [x8, #0x58]
0x00ee7768: c8 09 00 b4           cbz      x8, #0xee78a0
0x00ee776c: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee7770: 3f 01 14 6b           cmp      w9, w20
0x00ee7774: 49 09 00 54           b.ls     #0xee789c
0x00ee7778: 08 c9 34 8b           add      x8, x8, w20, sxtw #2
0x00ee777c: 16 21 40 b9           ldr      w22, [x8, #0x20]
0x00ee7780: 88 0a 00 12           and      w8, w20, #7
0x00ee7784: 1f 0d 00 71           cmp      w8, #3
0x00ee7788: e3 03 00 54           b.lo     #0xee7804
0x00ee778c: 1f 11 00 71           cmp      w8, #4
0x00ee7790: 28 04 00 54           b.hi     #0xee7814
0x00ee7794: 68 46 40 f9           ldr      x8, [x19, #0x88]
0x00ee7798: 48 08 00 b4           cbz      x8, #0xee78a0
0x00ee779c: 0a 09 40 f9           ldr      x10, [x8, #0x10]
0x00ee77a0: 8c 0a 00 12           and      w12, w20, #7
0x00ee77a4: 0d 49 2c 8b           add      x13, x8, w12, uxtw #2
0x00ee77a8: e9 03 1f aa           mov      x9, xzr
0x00ee77ac: 4b 01 40 b9           ldr      w11, [x10]
0x00ee77b0: ad 81 00 91           add      x13, x13, #0x20
0x00ee77b4: 4b 07 00 34           cbz      w11, #0xee789c
0x00ee77b8: 4e 09 40 f9           ldr      x14, [x10, #0x10]
0x00ee77bc: 8f 01 09 8b           add      x15, x12, x9
0x00ee77c0: ff 41 2e eb           cmp      x15, w14, uxtw
0x00ee77c4: c2 06 00 54           b.hs     #0xee789c
0x00ee77c8: af 79 69 b8           ldr      w15, [x13, x9, lsl #2]
0x00ee77cc: 4f 01 00 35           cbnz     w15, #0xee77f4
0x00ee77d0: 7f 05 00 71           cmp      w11, #1
0x00ee77d4: 49 06 00 54           b.ls     #0xee789c
0x00ee77d8: 8f 01 09 8b           add      x15, x12, x9
0x00ee77dc: ee 01 0e 8b           add      x14, x15, x14
0x00ee77e0: 0e 09 0e 8b           add      x14, x8, x14, lsl #2
0x00ee77e4: ce 21 40 b9           ldr      w14, [x14, #0x20]
0x00ee77e8: cf 2a 00 51           sub      w15, w22, #0xa
0x00ee77ec: df 1d 00 71           cmp      w14, #7
0x00ee77f0: f6 01 96 1a           csel     w22, w15, w22, eq
0x00ee77f4: 29 05 00 91           add      x9, x9, #1
0x00ee77f8: 3f 0d 00 f1           cmp      x9, #3
0x00ee77fc: c1 fd ff 54           b.ne     #0xee77b4
0x00ee7800: 15 00 00 14           b        #0xee7854
0x00ee7804: 74 00 80 52           mov      w20, #3
0x00ee7808: 55 00 80 52           mov      w21, #2
0x00ee780c: 21 00 80 52           mov      w1, #1
0x00ee7810: 04 00 00 14           b        #0xee7820
0x00ee7814: d4 00 80 52           mov      w20, #6
0x00ee7818: f5 00 80 52           mov      w21, #7
0x00ee781c: 01 01 80 52           mov      w1, #8
0x00ee7820: e0 03 13 aa           mov      x0, x19
0x00ee7824: f2 00 00 94           bl       #0xee7bec
0x00ee7828: 16 00 16 0b           add      w22, w0, w22
0x00ee782c: e0 03 13 aa           mov      x0, x19
0x00ee7830: e1 03 15 2a           mov      w1, w21
0x00ee7834: ee 00 00 94           bl       #0xee7bec
0x00ee7838: d5 02 00 0b           add      w21, w22, w0
0x00ee783c: e0 03 13 aa           mov      x0, x19
0x00ee7840: e1 03 14 2a           mov      w1, w20
0x00ee7844: ea 00 00 94           bl       #0xee7bec
0x00ee7848: 1f 00 00 71           cmp      w0, #0
0x00ee784c: 08 a4 80 1a           cinc     w8, w0, lt
0x00ee7850: b6 06 88 0b           add      w22, w21, w8, asr #1
0x00ee7854: 68 4a 40 f9           ldr      x8, [x19, #0x90]
0x00ee7858: 48 02 00 b4           cbz      x8, #0xee78a0
0x00ee785c: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee7860: 3f 05 00 71           cmp      w9, #1
0x00ee7864: c9 01 00 54           b.ls     #0xee789c
0x00ee7868: 08 25 40 b9           ldr      w8, [x8, #0x24]
0x00ee786c: 69 52 81 52           mov      w9, #0xa93
0x00ee7870: 09 24 b5 72           movk     w9, #0xa920, lsl #16
0x00ee7874: f4 4f 42 a9           ldp      x20, x19, [sp, #0x20]
0x00ee7878: 08 7d 16 1b           mul      w8, w8, w22
0x00ee787c: 09 7d 29 9b           smull    x9, w8, w9
0x00ee7880: 29 fd 60 d3           lsr      x9, x9, #0x20
0x00ee7884: f6 57 41 a9           ldp      x22, x21, [sp, #0x10]
0x00ee7888: 28 01 08 0b           add      w8, w9, w8
0x00ee788c: 09 7d 0b 13           asr      w9, w8, #0xb
0x00ee7890: 20 7d 48 0b           add      w0, w9, w8, lsr #31
0x00ee7894: fe 07 43 f8           ldr      x30, [sp], #0x30
0x00ee7898: c0 03 5f d6           ret      
