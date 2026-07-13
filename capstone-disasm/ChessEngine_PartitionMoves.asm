// Function: ChessEngine_PartitionMoves
// RVA: 0xee7260
// Description: Partition moves
// Size: 368 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee7260: fe 0f 1f f8           str      x30, [sp, #-0x10]!
0x00ee7264: 0a 30 40 f9           ldr      x10, [x0, #0x60]
0x00ee7268: 2a 0b 00 b4           cbz      x10, #0xee73cc
0x00ee726c: 48 19 40 b9           ldr      w8, [x10, #0x18]
0x00ee7270: 1f 01 01 6b           cmp      w8, w1
0x00ee7274: a9 0a 00 54           b.ls     #0xee73c8
0x00ee7278: 29 04 00 11           add      w9, w1, #1
0x00ee727c: 3f 01 02 6b           cmp      w9, w2
0x00ee7280: 28 7c 40 93           sxtw     x8, w1
0x00ee7284: 6c 07 00 54           b.gt     #0xee7370
0x00ee7288: 4a 0d 08 8b           add      x10, x10, x8, lsl #3
0x00ee728c: 4a 25 40 b9           ldr      w10, [x10, #0x24]
0x00ee7290: 3f 01 02 6b           cmp      w9, w2
0x00ee7294: ac 01 00 54           b.gt     #0xee72c8
0x00ee7298: 0b 30 40 f9           ldr      x11, [x0, #0x60]
0x00ee729c: 8b 09 00 b4           cbz      x11, #0xee73cc
0x00ee72a0: 6c 19 40 b9           ldr      w12, [x11, #0x18]
0x00ee72a4: 3f 01 0c 6b           cmp      w9, w12
0x00ee72a8: 02 09 00 54           b.hs     #0xee73c8
0x00ee72ac: 6d cd 29 8b           add      x13, x11, w9, sxtw #3
0x00ee72b0: ad 25 40 b9           ldr      w13, [x13, #0x24]
0x00ee72b4: bf 01 0a 6b           cmp      w13, w10
0x00ee72b8: 8d 00 00 54           b.le     #0xee72c8
0x00ee72bc: 29 05 00 11           add      w9, w9, #1
0x00ee72c0: 3f 01 02 6b           cmp      w9, w2
0x00ee72c4: 0d ff ff 54           b.le     #0xee72a4
0x00ee72c8: 3f 01 02 6b           cmp      w9, w2
0x00ee72cc: ac 01 00 54           b.gt     #0xee7300
0x00ee72d0: 0b 30 40 f9           ldr      x11, [x0, #0x60]
0x00ee72d4: cb 07 00 b4           cbz      x11, #0xee73cc
0x00ee72d8: 6c 19 40 b9           ldr      w12, [x11, #0x18]
0x00ee72dc: 5f 00 0c 6b           cmp      w2, w12
0x00ee72e0: 42 07 00 54           b.hs     #0xee73c8
0x00ee72e4: 6d cd 22 8b           add      x13, x11, w2, sxtw #3
0x00ee72e8: ad 25 40 b9           ldr      w13, [x13, #0x24]
0x00ee72ec: bf 01 0a 6b           cmp      w13, w10
0x00ee72f0: 8c 00 00 54           b.gt     #0xee7300
0x00ee72f4: 42 04 00 51           sub      w2, w2, #1
0x00ee72f8: 3f 01 02 6b           cmp      w9, w2
0x00ee72fc: 0d ff ff 54           b.le     #0xee72dc
0x00ee7300: 3f 01 02 6b           cmp      w9, w2
0x00ee7304: ea 02 00 54           b.ge     #0xee7360
0x00ee7308: 0c 30 40 f9           ldr      x12, [x0, #0x60]
0x00ee730c: 0c 06 00 b4           cbz      x12, #0xee73cc
0x00ee7310: 8d 19 40 b9           ldr      w13, [x12, #0x18]
0x00ee7314: 3f 01 0d 6b           cmp      w9, w13
0x00ee7318: 82 05 00 54           b.hs     #0xee73c8
0x00ee731c: 8e cd 29 8b           add      x14, x12, w9, sxtw #3
0x00ee7320: cb 0d 42 f8           ldr      x11, [x14, #0x20]!
0x00ee7324: 5f 00 0d 6b           cmp      w2, w13
0x00ee7328: 02 05 00 54           b.hs     #0xee73c8
0x00ee732c: 4d 7c 40 93           sxtw     x13, w2
0x00ee7330: 8c 0d 0d 8b           add      x12, x12, x13, lsl #3
0x00ee7334: 8c 11 40 f9           ldr      x12, [x12, #0x20]
0x00ee7338: cc 01 00 f9           str      x12, [x14]
0x00ee733c: 0c 30 40 f9           ldr      x12, [x0, #0x60]
0x00ee7340: 6c 04 00 b4           cbz      x12, #0xee73cc
0x00ee7344: 8e 19 40 b9           ldr      w14, [x12, #0x18]
0x00ee7348: 5f 00 0e 6b           cmp      w2, w14
0x00ee734c: e2 03 00 54           b.hs     #0xee73c8
0x00ee7350: 8c 0d 0d 8b           add      x12, x12, x13, lsl #3
0x00ee7354: 29 05 00 11           add      w9, w9, #1
0x00ee7358: 42 04 00 51           sub      w2, w2, #1
0x00ee735c: 8b 11 00 f9           str      x11, [x12, #0x20]
0x00ee7360: 3f 01 02 6b           cmp      w9, w2
0x00ee7364: 6d f9 ff 54           b.le     #0xee7290
0x00ee7368: 0a 30 40 f9           ldr      x10, [x0, #0x60]
0x00ee736c: 0a 03 00 b4           cbz      x10, #0xee73cc
0x00ee7370: 49 19 40 b9           ldr      w9, [x10, #0x18]
0x00ee7374: 3f 01 01 6b           cmp      w9, w1
0x00ee7378: 89 02 00 54           b.ls     #0xee73c8
0x00ee737c: 4b 0d 08 8b           add      x11, x10, x8, lsl #3
0x00ee7380: 68 0d 42 f8           ldr      x8, [x11, #0x20]!
0x00ee7384: 5f 00 09 6b           cmp      w2, w9
0x00ee7388: 02 02 00 54           b.hs     #0xee73c8
0x00ee738c: e9 03 02 2a           mov      w9, w2
0x00ee7390: 29 7d 40 93           sxtw     x9, w9
0x00ee7394: 4a 0d 09 8b           add      x10, x10, x9, lsl #3
0x00ee7398: 4a 11 40 f9           ldr      x10, [x10, #0x20]
0x00ee739c: 6a 01 00 f9           str      x10, [x11]
0x00ee73a0: 0a 30 40 f9           ldr      x10, [x0, #0x60]
0x00ee73a4: 4a 01 00 b4           cbz      x10, #0xee73cc
0x00ee73a8: 4b 19 40 b9           ldr      w11, [x10, #0x18]
0x00ee73ac: 5f 00 0b 6b           cmp      w2, w11
0x00ee73b0: c2 00 00 54           b.hs     #0xee73c8
0x00ee73b4: 49 0d 09 8b           add      x9, x10, x9, lsl #3
0x00ee73b8: 28 11 00 f9           str      x8, [x9, #0x20]
0x00ee73bc: e0 03 02 2a           mov      w0, w2
0x00ee73c0: fe 07 41 f8           ldr      x30, [sp], #0x10
0x00ee73c4: c0 03 5f d6           ret      
