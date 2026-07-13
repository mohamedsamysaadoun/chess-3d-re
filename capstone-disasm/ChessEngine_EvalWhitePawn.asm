// Function: ChessEngine_EvalWhitePawn
// RVA: 0xee7590
// Description: Eval white pawn
// Size: 384 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee7590: fe 0f 1d f8           str      x30, [sp, #-0x30]!
0x00ee7594: f6 57 01 a9           stp      x22, x21, [sp, #0x10]
0x00ee7598: f4 4f 02 a9           stp      x20, x19, [sp, #0x20]
0x00ee759c: 76 9d 00 d0           adrp     x22, #0x2295000
0x00ee75a0: b5 91 00 90           adrp     x21, #0x211b000
0x00ee75a4: c8 22 5a 39           ldrb     w8, [x22, #0x688]
0x00ee75a8: b5 72 41 f9           ldr      x21, [x21, #0x2e0]
0x00ee75ac: f3 03 01 2a           mov      w19, w1
0x00ee75b0: f4 03 00 aa           mov      x20, x0
0x00ee75b4: c8 00 00 37           tbnz     w8, #0, #0xee75cc
0x00ee75b8: a0 91 00 90           adrp     x0, #0x211b000
0x00ee75bc: 00 70 41 f9           ldr      x0, [x0, #0x2e0]
0x00ee75c0: 51 d9 fc 97           bl       #0xe1db04
0x00ee75c4: 28 00 80 52           mov      w8, #1
0x00ee75c8: c8 22 1a 39           strb     w8, [x22, #0x688]
0x00ee75cc: a0 02 40 f9           ldr      x0, [x21]
0x00ee75d0: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee75d4: 68 00 00 35           cbnz     w8, #0xee75e0
0x00ee75d8: 8d d9 fc 97           bl       #0xe1dc0c
0x00ee75dc: a0 02 40 f9           ldr      x0, [x21]
0x00ee75e0: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ee75e4: 0b 21 40 f9           ldr      x11, [x8, #0x40]
0x00ee75e8: 2b 09 00 b4           cbz      x11, #0xee770c
0x00ee75ec: 68 19 40 b9           ldr      w8, [x11, #0x18]
0x00ee75f0: 1f 01 13 6b           cmp      w8, w19
0x00ee75f4: a9 08 00 54           b.ls     #0xee7708
0x00ee75f8: 88 46 40 f9           ldr      x8, [x20, #0x88]
0x00ee75fc: 88 08 00 b4           cbz      x8, #0xee770c
0x00ee7600: 09 09 40 f9           ldr      x9, [x8, #0x10]
0x00ee7604: 2c 01 40 b9           ldr      w12, [x9]
0x00ee7608: 0c 08 00 34           cbz      w12, #0xee7708
0x00ee760c: 29 09 40 f9           ldr      x9, [x9, #0x10]
0x00ee7610: 6a 0a 00 12           and      w10, w19, #7
0x00ee7614: 4d 05 00 11           add      w13, w10, #1
0x00ee7618: bf 01 09 6b           cmp      w13, w9
0x00ee761c: 62 07 00 54           b.hs     #0xee7708
0x00ee7620: 6b c9 33 8b           add      x11, x11, w19, sxtw #2
0x00ee7624: ed 03 0d 2a           mov      w13, w13
0x00ee7628: 0e 81 00 91           add      x14, x8, #0x20
0x00ee762c: 6f 21 40 b9           ldr      w15, [x11, #0x20]
0x00ee7630: d0 79 6d b8           ldr      w16, [x14, x13, lsl #2]
0x00ee7634: ce 59 6a b8           ldr      w14, [x14, w10, uxtw #2]
0x00ee7638: 6b 7e 03 13           asr      w11, w19, #3
0x00ee763c: f1 29 00 51           sub      w17, w15, #0xa
0x00ee7640: 1f 0e 93 6b           cmp      w16, w19, asr #3
0x00ee7644: 20 c2 8f 1a           csel     w0, w17, w15, gt
0x00ee7648: ee 00 00 35           cbnz     w14, #0xee7664
0x00ee764c: 4f 09 00 11           add      w15, w10, #2
0x00ee7650: ff 01 09 6b           cmp      w15, w9
0x00ee7654: a2 05 00 54           b.hs     #0xee7708
0x00ee7658: 0f 49 2f 8b           add      x15, x8, w15, uxtw #2
0x00ee765c: ef 21 40 b9           ldr      w15, [x15, #0x20]
0x00ee7660: 8f 01 00 34           cbz      w15, #0xee7690
0x00ee7664: df 01 0b 6b           cmp      w14, w11
0x00ee7668: 6a 01 00 54           b.ge     #0xee7694
0x00ee766c: 4e 09 00 11           add      w14, w10, #2
0x00ee7670: df 01 09 6b           cmp      w14, w9
0x00ee7674: a2 04 00 54           b.hs     #0xee7708
0x00ee7678: 0e 49 2e 8b           add      x14, x8, w14, uxtw #2
0x00ee767c: ce 21 40 b9           ldr      w14, [x14, #0x20]
0x00ee7680: 0f 20 00 51           sub      w15, w0, #8
0x00ee7684: df 01 0b 6b           cmp      w14, w11
0x00ee7688: e0 b1 80 1a           csel     w0, w15, w0, lt
0x00ee768c: 02 00 00 14           b        #0xee7694
0x00ee7690: 00 50 00 51           sub      w0, w0, #0x14
0x00ee7694: 9f 05 00 71           cmp      w12, #1
0x00ee7698: 89 03 00 54           b.ls     #0xee7708
0x00ee769c: ec 03 0a 2a           mov      w12, w10
0x00ee76a0: 2c 01 0c 8b           add      x12, x9, x12
0x00ee76a4: 0c 09 0c 8b           add      x12, x8, x12, lsl #2
0x00ee76a8: 8c 21 40 b9           ldr      w12, [x12, #0x20]
0x00ee76ac: 9f 01 0b 6b           cmp      w12, w11
0x00ee76b0: 4b 02 00 54           b.lt     #0xee76f8
0x00ee76b4: 2c 01 0d 8b           add      x12, x9, x13
0x00ee76b8: 0c 09 0c 8b           add      x12, x8, x12, lsl #2
0x00ee76bc: 8c 21 40 b9           ldr      w12, [x12, #0x20]
0x00ee76c0: 9f 01 0b 6b           cmp      w12, w11
0x00ee76c4: ab 01 00 54           b.lt     #0xee76f8
0x00ee76c8: 4a 09 00 11           add      w10, w10, #2
0x00ee76cc: 5f 01 09 6b           cmp      w10, w9
0x00ee76d0: c2 01 00 54           b.hs     #0xee7708
0x00ee76d4: 29 41 2a 8b           add      x9, x9, w10, uxtw
0x00ee76d8: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee76dc: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee76e0: 1f 01 0b 6b           cmp      w8, w11
0x00ee76e4: ab 00 00 54           b.lt     #0xee76f8
0x00ee76e8: e8 00 80 52           mov      w8, #7
0x00ee76ec: 08 01 0b 4b           sub      w8, w8, w11
0x00ee76f0: 89 02 80 52           mov      w9, #0x14
0x00ee76f4: 00 01 09 1b           madd     w0, w8, w9, w0
0x00ee76f8: f4 4f 42 a9           ldp      x20, x19, [sp, #0x20]
0x00ee76fc: f6 57 41 a9           ldp      x22, x21, [sp, #0x10]
0x00ee7700: fe 07 43 f8           ldr      x30, [sp], #0x30
0x00ee7704: c0 03 5f d6           ret      
