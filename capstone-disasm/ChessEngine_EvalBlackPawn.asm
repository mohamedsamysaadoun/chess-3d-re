// Function: ChessEngine_EvalBlackPawn
// RVA: 0xee78a4
// Description: Eval black pawn
// Size: 412 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee78a4: fe 0f 1d f8           str      x30, [sp, #-0x30]!
0x00ee78a8: f6 57 01 a9           stp      x22, x21, [sp, #0x10]
0x00ee78ac: f4 4f 02 a9           stp      x20, x19, [sp, #0x20]
0x00ee78b0: 76 9d 00 d0           adrp     x22, #0x2295000
0x00ee78b4: b5 91 00 90           adrp     x21, #0x211b000
0x00ee78b8: c8 26 5a 39           ldrb     w8, [x22, #0x689]
0x00ee78bc: b5 72 41 f9           ldr      x21, [x21, #0x2e0]
0x00ee78c0: f3 03 01 2a           mov      w19, w1
0x00ee78c4: f4 03 00 aa           mov      x20, x0
0x00ee78c8: c8 00 00 37           tbnz     w8, #0, #0xee78e0
0x00ee78cc: a0 91 00 90           adrp     x0, #0x211b000
0x00ee78d0: 00 70 41 f9           ldr      x0, [x0, #0x2e0]
0x00ee78d4: 8c d8 fc 97           bl       #0xe1db04
0x00ee78d8: 28 00 80 52           mov      w8, #1
0x00ee78dc: c8 26 1a 39           strb     w8, [x22, #0x689]
0x00ee78e0: a0 02 40 f9           ldr      x0, [x21]
0x00ee78e4: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee78e8: 68 00 00 35           cbnz     w8, #0xee78f4
0x00ee78ec: c8 d8 fc 97           bl       #0xe1dc0c
0x00ee78f0: a0 02 40 f9           ldr      x0, [x21]
0x00ee78f4: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee78f8: 28 35 40 f9           ldr      x8, [x9, #0x68]
0x00ee78fc: 08 0a 00 b4           cbz      x8, #0xee7a3c
0x00ee7900: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee7904: 5f 01 13 6b           cmp      w10, w19
0x00ee7908: 89 09 00 54           b.ls     #0xee7a38
0x00ee790c: 2b 21 40 f9           ldr      x11, [x9, #0x40]
0x00ee7910: 6b 09 00 b4           cbz      x11, #0xee7a3c
0x00ee7914: 08 c9 33 8b           add      x8, x8, w19, sxtw #2
0x00ee7918: 0c 21 80 b9           ldrsw    x12, [x8, #0x20]
0x00ee791c: 68 19 40 b9           ldr      w8, [x11, #0x18]
0x00ee7920: 9f 01 08 6b           cmp      w12, w8
0x00ee7924: a2 08 00 54           b.hs     #0xee7a38
0x00ee7928: 88 46 40 f9           ldr      x8, [x20, #0x88]
0x00ee792c: 88 08 00 b4           cbz      x8, #0xee7a3c
0x00ee7930: 09 09 40 f9           ldr      x9, [x8, #0x10]
0x00ee7934: 2a 01 40 b9           ldr      w10, [x9]
0x00ee7938: 5f 05 00 71           cmp      w10, #1
0x00ee793c: e9 07 00 54           b.ls     #0xee7a38
0x00ee7940: 29 09 40 f9           ldr      x9, [x9, #0x10]
0x00ee7944: 6a 0a 00 12           and      w10, w19, #7
0x00ee7948: 4d 05 00 11           add      w13, w10, #1
0x00ee794c: bf 01 09 6b           cmp      w13, w9
0x00ee7950: 42 07 00 54           b.hs     #0xee7a38
0x00ee7954: 6b 09 0c 8b           add      x11, x11, x12, lsl #2
0x00ee7958: ec 03 0d 2a           mov      w12, w13
0x00ee795c: 0d 81 00 91           add      x13, x8, #0x20
0x00ee7960: 2e 01 0c 8b           add      x14, x9, x12
0x00ee7964: 6b 21 40 b9           ldr      w11, [x11, #0x20]
0x00ee7968: ae 79 6e b8           ldr      w14, [x13, x14, lsl #2]
0x00ee796c: 2f 41 2a 8b           add      x15, x9, w10, uxtw
0x00ee7970: ad 79 6f b8           ldr      w13, [x13, x15, lsl #2]
0x00ee7974: 6f 29 00 51           sub      w15, w11, #0xa
0x00ee7978: df 0d 93 6b           cmp      w14, w19, asr #3
0x00ee797c: e0 b1 8b 1a           csel     w0, w15, w11, lt
0x00ee7980: bf 1d 00 71           cmp      w13, #7
0x00ee7984: 6b 7e 03 13           asr      w11, w19, #3
0x00ee7988: 61 01 00 54           b.ne     #0xee79b4
0x00ee798c: 4e 09 00 11           add      w14, w10, #2
0x00ee7990: df 01 09 6b           cmp      w14, w9
0x00ee7994: 22 05 00 54           b.hs     #0xee7a38
0x00ee7998: 2e 41 2e 8b           add      x14, x9, w14, uxtw
0x00ee799c: 0e 09 0e 8b           add      x14, x8, x14, lsl #2
0x00ee79a0: ce 21 40 b9           ldr      w14, [x14, #0x20]
0x00ee79a4: df 1d 00 71           cmp      w14, #7
0x00ee79a8: 61 00 00 54           b.ne     #0xee79b4
0x00ee79ac: 00 50 00 51           sub      w0, w0, #0x14
0x00ee79b0: 0c 00 00 14           b        #0xee79e0
0x00ee79b4: bf 01 0b 6b           cmp      w13, w11
0x00ee79b8: 4d 01 00 54           b.le     #0xee79e0
0x00ee79bc: 4d 09 00 11           add      w13, w10, #2
0x00ee79c0: bf 01 09 6b           cmp      w13, w9
0x00ee79c4: a2 03 00 54           b.hs     #0xee7a38
0x00ee79c8: 2d 41 2d 8b           add      x13, x9, w13, uxtw
0x00ee79cc: 0d 09 0d 8b           add      x13, x8, x13, lsl #2
0x00ee79d0: ad 21 40 b9           ldr      w13, [x13, #0x20]
0x00ee79d4: 0e 20 00 51           sub      w14, w0, #8
0x00ee79d8: bf 01 0b 6b           cmp      w13, w11
0x00ee79dc: c0 c1 80 1a           csel     w0, w14, w0, gt
0x00ee79e0: ed 03 0a 2a           mov      w13, w10
0x00ee79e4: 0d 09 0d 8b           add      x13, x8, x13, lsl #2
0x00ee79e8: ad 21 40 b9           ldr      w13, [x13, #0x20]
0x00ee79ec: bf 01 0b 6b           cmp      w13, w11
0x00ee79f0: cc 01 00 54           b.gt     #0xee7a28
0x00ee79f4: 0c 09 0c 8b           add      x12, x8, x12, lsl #2
0x00ee79f8: 8c 21 40 b9           ldr      w12, [x12, #0x20]
0x00ee79fc: 9f 01 0b 6b           cmp      w12, w11
0x00ee7a00: 4c 01 00 54           b.gt     #0xee7a28
0x00ee7a04: 4a 09 00 11           add      w10, w10, #2
0x00ee7a08: 5f 01 09 6b           cmp      w10, w9
0x00ee7a0c: 62 01 00 54           b.hs     #0xee7a38
0x00ee7a10: 08 49 2a 8b           add      x8, x8, w10, uxtw #2
0x00ee7a14: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee7a18: 1f 01 0b 6b           cmp      w8, w11
0x00ee7a1c: 6c 00 00 54           b.gt     #0xee7a28
0x00ee7a20: 88 02 80 52           mov      w8, #0x14
0x00ee7a24: 60 01 08 1b           madd     w0, w11, w8, w0
0x00ee7a28: f4 4f 42 a9           ldp      x20, x19, [sp, #0x20]
0x00ee7a2c: f6 57 41 a9           ldp      x22, x21, [sp, #0x10]
0x00ee7a30: fe 07 43 f8           ldr      x30, [sp], #0x30
0x00ee7a34: c0 03 5f d6           ret      
