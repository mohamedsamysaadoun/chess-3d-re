// Function: ChessEngine_AddPromotionMove
// RVA: 0xee7504
// Description: Add promotion move
// Size: 140 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee7504: fe 0f 1f f8           str      x30, [sp, #-0x10]!
0x00ee7508: 08 34 40 f9           ldr      x8, [x0, #0x68]
0x00ee750c: 08 04 00 b4           cbz      x8, #0xee758c
0x00ee7510: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee7514: 4c 49 88 52           mov      w12, #0x424a
0x00ee7518: 6a 00 1b 32           orr      w10, w3, #0x20
0x00ee751c: 2b 00 80 52           mov      w11, #1
0x00ee7520: ec 01 a0 72           movk     w12, #0xf, lsl #16
0x00ee7524: 0d 34 40 b9           ldr      w13, [x0, #0x34]
0x00ee7528: ad 05 00 11           add      w13, w13, #1
0x00ee752c: bf 01 09 6b           cmp      w13, w9
0x00ee7530: c2 02 00 54           b.hs     #0xee7588
0x00ee7534: 0e c9 2d 8b           add      x14, x8, w13, sxtw #2
0x00ee7538: cd 21 80 b9           ldrsw    x13, [x14, #0x20]
0x00ee753c: af 05 00 11           add      w15, w13, #1
0x00ee7540: cf 21 00 b9           str      w15, [x14, #0x20]
0x00ee7544: 0e 30 40 f9           ldr      x14, [x0, #0x60]
0x00ee7548: 2e 02 00 b4           cbz      x14, #0xee758c
0x00ee754c: cf 19 40 b9           ldr      w15, [x14, #0x18]
0x00ee7550: bf 01 0f 6b           cmp      w13, w15
0x00ee7554: a2 01 00 54           b.hs     #0xee7588
0x00ee7558: cd 0d 0d 8b           add      x13, x14, x13, lsl #3
0x00ee755c: ab 89 00 39           strb     w11, [x13, #0x22]
0x00ee7560: 6b 05 00 11           add      w11, w11, #1
0x00ee7564: ac 25 00 b9           str      w12, [x13, #0x24]
0x00ee7568: 7f 15 00 71           cmp      w11, #5
0x00ee756c: 8c 29 00 11           add      w12, w12, #0xa
0x00ee7570: a1 81 00 39           strb     w1, [x13, #0x20]
0x00ee7574: a2 85 00 39           strb     w2, [x13, #0x21]
0x00ee7578: aa 8d 00 39           strb     w10, [x13, #0x23]
0x00ee757c: 41 fd ff 54           b.ne     #0xee7524
0x00ee7580: fe 07 41 f8           ldr      x30, [sp], #0x10
0x00ee7584: c0 03 5f d6           ret      
