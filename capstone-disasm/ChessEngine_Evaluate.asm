// Function: ChessEngine_Evaluate
// RVA: 0xee55ac
// Description: Evaluate position
// Size: 1932 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee55ac: fd 7b ba a9           stp      x29, x30, [sp, #-0x60]!
0x00ee55b0: fc 6f 01 a9           stp      x28, x27, [sp, #0x10]
0x00ee55b4: fa 67 02 a9           stp      x26, x25, [sp, #0x20]
0x00ee55b8: f8 5f 03 a9           stp      x24, x23, [sp, #0x30]
0x00ee55bc: f6 57 04 a9           stp      x22, x21, [sp, #0x40]
0x00ee55c0: f4 4f 05 a9           stp      x20, x19, [sp, #0x50]
0x00ee55c4: 94 9d 00 90           adrp     x20, #0x2295000
0x00ee55c8: b5 91 00 b0           adrp     x21, #0x211a000
0x00ee55cc: 88 1e 5a 39           ldrb     w8, [x20, #0x687]
0x00ee55d0: b5 96 41 f9           ldr      x21, [x21, #0x328]
0x00ee55d4: f3 03 00 aa           mov      x19, x0
0x00ee55d8: 28 01 00 37           tbnz     w8, #0, #0xee55fc
0x00ee55dc: a0 91 00 b0           adrp     x0, #0x211a000
0x00ee55e0: 00 94 41 f9           ldr      x0, [x0, #0x328]
0x00ee55e4: 48 e1 fc 97           bl       #0xe1db04
0x00ee55e8: a0 91 00 d0           adrp     x0, #0x211b000
0x00ee55ec: 00 70 41 f9           ldr      x0, [x0, #0x2e0]
0x00ee55f0: 45 e1 fc 97           bl       #0xe1db04
0x00ee55f4: 28 00 80 52           mov      w8, #1
0x00ee55f8: 88 1e 1a 39           strb     w8, [x20, #0x687]
0x00ee55fc: a0 02 40 f9           ldr      x0, [x21]
0x00ee5600: 41 00 80 52           mov      w1, #2
0x00ee5604: 5e e1 fc 97           bl       #0xe1db7c
0x00ee5608: 68 46 40 f9           ldr      x8, [x19, #0x88]
0x00ee560c: 48 39 00 b4           cbz      x8, #0xee5d34
0x00ee5610: 0a 09 40 f9           ldr      x10, [x8, #0x10]
0x00ee5614: b6 91 00 d0           adrp     x22, #0x211b000
0x00ee5618: f4 03 00 aa           mov      x20, x0
0x00ee561c: e9 03 1f aa           mov      x9, xzr
0x00ee5620: 4b 01 40 b9           ldr      w11, [x10]
0x00ee5624: d6 72 41 f9           ldr      x22, [x22, #0x2e0]
0x00ee5628: 0c 81 00 91           add      x12, x8, #0x20
0x00ee562c: ed 00 80 52           mov      w13, #7
0x00ee5630: 0b 38 00 34           cbz      w11, #0xee5d30
0x00ee5634: 4e 09 40 f9           ldr      x14, [x10, #0x10]
0x00ee5638: 3f 41 2e eb           cmp      x9, w14, uxtw
0x00ee563c: a2 37 00 54           b.hs     #0xee5d30
0x00ee5640: 7f 05 00 71           cmp      w11, #1
0x00ee5644: 9f 79 29 b8           str      wzr, [x12, x9, lsl #2]
0x00ee5648: 49 37 00 54           b.ls     #0xee5d30
0x00ee564c: 2e 01 0e 8b           add      x14, x9, x14
0x00ee5650: 29 05 00 91           add      x9, x9, #1
0x00ee5654: 0e 09 0e 8b           add      x14, x8, x14, lsl #2
0x00ee5658: 3f 29 00 f1           cmp      x9, #0xa
0x00ee565c: cd 21 00 b9           str      w13, [x14, #0x20]
0x00ee5660: 81 fe ff 54           b.ne     #0xee5630
0x00ee5664: 68 4a 40 f9           ldr      x8, [x19, #0x90]
0x00ee5668: 68 36 00 b4           cbz      x8, #0xee5d34
0x00ee566c: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5670: 09 36 00 34           cbz      w9, #0xee5d30
0x00ee5674: 3f 05 00 71           cmp      w9, #1
0x00ee5678: 1f 21 00 b9           str      wzr, [x8, #0x20]
0x00ee567c: a0 35 00 54           b.eq     #0xee5d30
0x00ee5680: 1f 25 00 b9           str      wzr, [x8, #0x24]
0x00ee5684: 68 4e 40 f9           ldr      x8, [x19, #0x98]
0x00ee5688: 68 35 00 b4           cbz      x8, #0xee5d34
0x00ee568c: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5690: 09 35 00 34           cbz      w9, #0xee5d30
0x00ee5694: 3f 05 00 71           cmp      w9, #1
0x00ee5698: 1f 21 00 b9           str      wzr, [x8, #0x20]
0x00ee569c: a0 34 00 54           b.eq     #0xee5d30
0x00ee56a0: 15 01 80 52           mov      w21, #8
0x00ee56a4: 1f 25 00 b9           str      wzr, [x8, #0x24]
0x00ee56a8: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee56ac: 48 34 00 b4           cbz      x8, #0xee5d34
0x00ee56b0: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee56b4: b7 22 00 d1           sub      x23, x21, #8
0x00ee56b8: ff 02 09 eb           cmp      x23, x9
0x00ee56bc: a2 33 00 54           b.hs     #0xee5d30
0x00ee56c0: 09 79 b5 b8           ldrsw    x9, [x8, x21, lsl #2]
0x00ee56c4: 3f 19 00 71           cmp      w9, #6
0x00ee56c8: 60 0a 00 54           b.eq     #0xee5814
0x00ee56cc: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee56d0: 28 33 00 b4           cbz      x8, #0xee5d34
0x00ee56d4: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee56d8: ff 02 0a eb           cmp      x23, x10
0x00ee56dc: a2 32 00 54           b.hs     #0xee5d30
0x00ee56e0: 0a 79 75 b8           ldr      w10, [x8, x21, lsl #2]
0x00ee56e4: ca 03 00 34           cbz      w10, #0xee575c
0x00ee56e8: 6a 4a 40 f9           ldr      x10, [x19, #0x90]
0x00ee56ec: 4a 32 00 b4           cbz      x10, #0xee5d34
0x00ee56f0: 4b 19 40 b9           ldr      w11, [x10, #0x18]
0x00ee56f4: 3f 01 0b 6b           cmp      w9, w11
0x00ee56f8: c2 31 00 54           b.hs     #0xee5d30
0x00ee56fc: 58 09 09 8b           add      x24, x10, x9, lsl #2
0x00ee5700: 19 0f 42 b8           ldr      w25, [x24, #0x20]!
0x00ee5704: c0 02 40 f9           ldr      x0, [x22]
0x00ee5708: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ee570c: a9 00 00 35           cbnz     w9, #0xee5720
0x00ee5710: 3f e1 fc 97           bl       #0xe1dc0c
0x00ee5714: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee5718: e8 30 00 b4           cbz      x8, #0xee5d34
0x00ee571c: c0 02 40 f9           ldr      x0, [x22]
0x00ee5720: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5724: ff 02 09 eb           cmp      x23, x9
0x00ee5728: 42 30 00 54           b.hs     #0xee5d30
0x00ee572c: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee5730: 29 1d 40 f9           ldr      x9, [x9, #0x38]
0x00ee5734: 09 30 00 b4           cbz      x9, #0xee5d34
0x00ee5738: 08 79 b5 b8           ldrsw    x8, [x8, x21, lsl #2]
0x00ee573c: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee5740: 1f 01 0a 6b           cmp      w8, w10
0x00ee5744: 62 2f 00 54           b.hs     #0xee5d30
0x00ee5748: 28 09 08 8b           add      x8, x9, x8, lsl #2
0x00ee574c: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5750: 08 01 19 0b           add      w8, w8, w25
0x00ee5754: 08 03 00 b9           str      w8, [x24]
0x00ee5758: 2f 00 00 14           b        #0xee5814
0x00ee575c: 68 4e 40 f9           ldr      x8, [x19, #0x98]
0x00ee5760: a8 2e 00 b4           cbz      x8, #0xee5d34
0x00ee5764: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee5768: 3f 01 0a 6b           cmp      w9, w10
0x00ee576c: 22 2e 00 54           b.hs     #0xee5d30
0x00ee5770: 18 09 09 8b           add      x24, x8, x9, lsl #2
0x00ee5774: 19 0f 42 b8           ldr      w25, [x24, #0x20]!
0x00ee5778: c0 02 40 f9           ldr      x0, [x22]
0x00ee577c: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee5780: 68 00 00 35           cbnz     w8, #0xee578c
0x00ee5784: 22 e1 fc 97           bl       #0xe1dc0c
0x00ee5788: c0 02 40 f9           ldr      x0, [x22]
0x00ee578c: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ee5790: 08 1d 40 f9           ldr      x8, [x8, #0x38]
0x00ee5794: 08 2d 00 b4           cbz      x8, #0xee5d34
0x00ee5798: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee579c: a9 2c 00 34           cbz      w9, #0xee5d30
0x00ee57a0: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee57a4: 08 01 19 0b           add      w8, w8, w25
0x00ee57a8: 08 03 00 b9           str      w8, [x24]
0x00ee57ac: 69 0a 40 f9           ldr      x9, [x19, #0x10]
0x00ee57b0: 29 2c 00 b4           cbz      x9, #0xee5d34
0x00ee57b4: 28 19 40 b9           ldr      w8, [x9, #0x18]
0x00ee57b8: ff 02 08 eb           cmp      x23, x8
0x00ee57bc: a2 2b 00 54           b.hs     #0xee5d30
0x00ee57c0: 68 46 40 f9           ldr      x8, [x19, #0x88]
0x00ee57c4: 88 2b 00 b4           cbz      x8, #0xee5d34
0x00ee57c8: 0a 09 40 f9           ldr      x10, [x8, #0x10]
0x00ee57cc: 2d 79 75 b8           ldr      w13, [x9, x21, lsl #2]
0x00ee57d0: e9 0a 00 12           and      w9, w23, #7
0x00ee57d4: 2b 05 00 11           add      w11, w9, #1
0x00ee57d8: 4c 01 40 b9           ldr      w12, [x10]
0x00ee57dc: e9 03 0b 2a           mov      w9, w11
0x00ee57e0: 2d 02 00 34           cbz      w13, #0xee5824
0x00ee57e4: 9f 05 00 71           cmp      w12, #1
0x00ee57e8: 49 2a 00 54           b.ls     #0xee5d30
0x00ee57ec: 4a 09 40 f9           ldr      x10, [x10, #0x10]
0x00ee57f0: 7f 01 0a 6b           cmp      w11, w10
0x00ee57f4: e2 29 00 54           b.hs     #0xee5d30
0x00ee57f8: 49 01 09 8b           add      x9, x10, x9
0x00ee57fc: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee5800: 09 0d 42 b8           ldr      w9, [x8, #0x20]!
0x00ee5804: 3f 0d 97 6b           cmp      w9, w23, asr #3
0x00ee5808: 6d 00 00 54           b.le     #0xee5814
0x00ee580c: e9 7e 03 13           asr      w9, w23, #3
0x00ee5810: 09 01 00 b9           str      w9, [x8]
0x00ee5814: b5 06 00 91           add      x21, x21, #1
0x00ee5818: bf 22 01 f1           cmp      x21, #0x48
0x00ee581c: 61 f4 ff 54           b.ne     #0xee56a8
0x00ee5820: 0a 00 00 14           b        #0xee5848
0x00ee5824: 6c 28 00 34           cbz      w12, #0xee5d30
0x00ee5828: 4a 11 40 b9           ldr      w10, [x10, #0x10]
0x00ee582c: 7f 01 0a 6b           cmp      w11, w10
0x00ee5830: 02 28 00 54           b.hs     #0xee5d30
0x00ee5834: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee5838: 09 0d 42 b8           ldr      w9, [x8, #0x20]!
0x00ee583c: 3f 0d 97 6b           cmp      w9, w23, asr #3
0x00ee5840: 6b fe ff 54           b.lt     #0xee580c
0x00ee5844: f4 ff ff 17           b        #0xee5814
0x00ee5848: 68 4a 40 f9           ldr      x8, [x19, #0x90]
0x00ee584c: 48 27 00 b4           cbz      x8, #0xee5d34
0x00ee5850: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee5854: ea 26 00 34           cbz      w10, #0xee5d30
0x00ee5858: 69 4e 40 f9           ldr      x9, [x19, #0x98]
0x00ee585c: c9 26 00 b4           cbz      x9, #0xee5d34
0x00ee5860: 2b 19 40 b9           ldr      w11, [x9, #0x18]
0x00ee5864: 6b 26 00 34           cbz      w11, #0xee5d30
0x00ee5868: 74 26 00 b4           cbz      x20, #0xee5d34
0x00ee586c: 8c 1a 40 b9           ldr      w12, [x20, #0x18]
0x00ee5870: 0c 26 00 34           cbz      w12, #0xee5d30
0x00ee5874: 0d 21 40 b9           ldr      w13, [x8, #0x20]
0x00ee5878: 2e 21 40 b9           ldr      w14, [x9, #0x20]
0x00ee587c: f7 03 14 aa           mov      x23, x20
0x00ee5880: 5f 05 00 71           cmp      w10, #1
0x00ee5884: cd 01 0d 0b           add      w13, w14, w13
0x00ee5888: ed 0e 02 b8           str      w13, [x23, #0x20]!
0x00ee588c: 29 25 00 54           b.ls     #0xee5d30
0x00ee5890: 7f 05 00 71           cmp      w11, #1
0x00ee5894: e9 24 00 54           b.ls     #0xee5d30
0x00ee5898: 9f 05 00 71           cmp      w12, #1
0x00ee589c: a9 24 00 54           b.ls     #0xee5d30
0x00ee58a0: 29 25 40 b9           ldr      w9, [x9, #0x24]
0x00ee58a4: 08 25 40 b9           ldr      w8, [x8, #0x24]
0x00ee58a8: f8 03 14 aa           mov      x24, x20
0x00ee58ac: 59 b3 ff b0           adrp     x25, #0x54e000
0x00ee58b0: 5c b3 ff b0           adrp     x28, #0x54e000
0x00ee58b4: 08 01 09 0b           add      w8, w8, w9
0x00ee58b8: f5 03 1f aa           mov      x21, xzr
0x00ee58bc: 39 07 23 91           add      x25, x25, #0x8c1
0x00ee58c0: 5a 01 80 52           mov      w26, #0xa
0x00ee58c4: fb 01 80 52           mov      w27, #0xf
0x00ee58c8: 08 4f 02 b8           str      w8, [x24, #0x24]!
0x00ee58cc: 9c ef 22 91           add      x28, x28, #0x8bb
0x00ee58d0: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee58d4: 08 23 00 b4           cbz      x8, #0xee5d34
0x00ee58d8: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee58dc: bf 02 09 eb           cmp      x21, x9
0x00ee58e0: 82 22 00 54           b.hs     #0xee5d30
0x00ee58e4: 08 09 15 8b           add      x8, x8, x21, lsl #2
0x00ee58e8: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee58ec: 1f 19 00 71           cmp      w8, #6
0x00ee58f0: e0 1e 00 54           b.eq     #0xee5ccc
0x00ee58f4: 69 0e 40 f9           ldr      x9, [x19, #0x18]
0x00ee58f8: e9 21 00 b4           cbz      x9, #0xee5d34
0x00ee58fc: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee5900: bf 02 0a eb           cmp      x21, x10
0x00ee5904: 62 21 00 54           b.hs     #0xee5d30
0x00ee5908: 29 09 15 8b           add      x9, x9, x21, lsl #2
0x00ee590c: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee5910: 3f 15 00 71           cmp      w9, #5
0x00ee5914: e8 01 00 34           cbz      w8, #0xee5950
0x00ee5918: a8 1d 00 54           b.hi     #0xee5ccc
0x00ee591c: e8 03 09 2a           mov      w8, w9
0x00ee5920: 89 00 00 10           adr      x9, #0xee5930
0x00ee5924: 8a 6b 68 38           ldrb     w10, [x28, x8]
0x00ee5928: 29 09 0a 8b           add      x9, x9, x10, lsl #2
0x00ee592c: 20 01 1f d6           br       x9
0x00ee5930: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee5934: 1f 05 00 71           cmp      w8, #1
0x00ee5938: c9 1f 00 54           b.ls     #0xee5d30
0x00ee593c: 1d 03 40 b9           ldr      w29, [x24]
0x00ee5940: e0 03 13 aa           mov      x0, x19
0x00ee5944: e1 03 15 2a           mov      w1, w21
0x00ee5948: d7 07 00 94           bl       #0xee78a4
0x00ee594c: d8 00 00 14           b        #0xee5cac
0x00ee5950: e8 1b 00 54           b.hi     #0xee5ccc
0x00ee5954: e8 03 09 2a           mov      w8, w9
0x00ee5958: 89 00 00 10           adr      x9, #0xee5968
0x00ee595c: 2a 6b 68 38           ldrb     w10, [x25, x8]
0x00ee5960: 29 09 0a 8b           add      x9, x9, x10, lsl #2
0x00ee5964: 20 01 1f d6           br       x9
0x00ee5968: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee596c: 28 1e 00 34           cbz      w8, #0xee5d30
0x00ee5970: fd 02 40 b9           ldr      w29, [x23]
0x00ee5974: e0 03 13 aa           mov      x0, x19
0x00ee5978: e1 03 15 2a           mov      w1, w21
0x00ee597c: 05 07 00 94           bl       #0xee7590
0x00ee5980: d1 00 00 14           b        #0xee5cc4
0x00ee5984: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee5988: 1f 05 00 71           cmp      w8, #1
0x00ee598c: 29 1d 00 54           b.ls     #0xee5d30
0x00ee5990: c0 02 40 f9           ldr      x0, [x22]
0x00ee5994: 1d 03 40 b9           ldr      w29, [x24]
0x00ee5998: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee599c: 68 00 00 35           cbnz     w8, #0xee59a8
0x00ee59a0: 9b e0 fc 97           bl       #0xe1dc0c
0x00ee59a4: c0 02 40 f9           ldr      x0, [x22]
0x00ee59a8: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee59ac: 28 35 40 f9           ldr      x8, [x9, #0x68]
0x00ee59b0: 28 1c 00 b4           cbz      x8, #0xee5d34
0x00ee59b4: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee59b8: bf 02 0a eb           cmp      x21, x10
0x00ee59bc: a2 1b 00 54           b.hs     #0xee5d30
0x00ee59c0: 29 25 40 f9           ldr      x9, [x9, #0x48]
0x00ee59c4: 69 02 00 b5           cbnz     x9, #0xee5a10
0x00ee59c8: db 00 00 14           b        #0xee5d34
0x00ee59cc: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee59d0: 1f 05 00 71           cmp      w8, #1
0x00ee59d4: e9 1a 00 54           b.ls     #0xee5d30
0x00ee59d8: c0 02 40 f9           ldr      x0, [x22]
0x00ee59dc: 1d 03 40 b9           ldr      w29, [x24]
0x00ee59e0: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee59e4: 68 00 00 35           cbnz     w8, #0xee59f0
0x00ee59e8: 89 e0 fc 97           bl       #0xe1dc0c
0x00ee59ec: c0 02 40 f9           ldr      x0, [x22]
0x00ee59f0: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee59f4: 28 35 40 f9           ldr      x8, [x9, #0x68]
0x00ee59f8: e8 19 00 b4           cbz      x8, #0xee5d34
0x00ee59fc: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee5a00: bf 02 0a eb           cmp      x21, x10
0x00ee5a04: 62 19 00 54           b.hs     #0xee5d30
0x00ee5a08: 29 29 40 f9           ldr      x9, [x9, #0x50]
0x00ee5a0c: 49 19 00 b4           cbz      x9, #0xee5d34
0x00ee5a10: 08 09 15 8b           add      x8, x8, x21, lsl #2
0x00ee5a14: 08 21 80 b9           ldrsw    x8, [x8, #0x20]
0x00ee5a18: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee5a1c: 1f 01 0a 6b           cmp      w8, w10
0x00ee5a20: 82 18 00 54           b.hs     #0xee5d30
0x00ee5a24: 28 09 08 8b           add      x8, x9, x8, lsl #2
0x00ee5a28: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5a2c: 08 01 1d 0b           add      w8, w8, w29
0x00ee5a30: a0 00 00 14           b        #0xee5cb0
0x00ee5a34: 68 46 40 f9           ldr      x8, [x19, #0x88]
0x00ee5a38: e8 17 00 b4           cbz      x8, #0xee5d34
0x00ee5a3c: 09 09 40 f9           ldr      x9, [x8, #0x10]
0x00ee5a40: 2a 01 40 b9           ldr      w10, [x9]
0x00ee5a44: 5f 05 00 71           cmp      w10, #1
0x00ee5a48: 49 17 00 54           b.ls     #0xee5d30
0x00ee5a4c: 2a 09 40 f9           ldr      x10, [x9, #0x10]
0x00ee5a50: a9 0a 00 12           and      w9, w21, #7
0x00ee5a54: 29 05 00 11           add      w9, w9, #1
0x00ee5a58: 3f 01 0a 6b           cmp      w9, w10
0x00ee5a5c: a2 16 00 54           b.hs     #0xee5d30
0x00ee5a60: 4a 01 09 8b           add      x10, x10, x9
0x00ee5a64: 0a 09 0a 8b           add      x10, x8, x10, lsl #2
0x00ee5a68: 4a 21 40 b9           ldr      w10, [x10, #0x20]
0x00ee5a6c: 5f 1d 00 71           cmp      w10, #7
0x00ee5a70: 61 01 00 54           b.ne     #0xee5a9c
0x00ee5a74: 8a 1a 40 b9           ldr      w10, [x20, #0x18]
0x00ee5a78: 5f 05 00 71           cmp      w10, #1
0x00ee5a7c: a9 15 00 54           b.ls     #0xee5d30
0x00ee5a80: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee5a84: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5a88: 09 03 40 b9           ldr      w9, [x24]
0x00ee5a8c: 1f 01 00 71           cmp      w8, #0
0x00ee5a90: 68 03 9a 1a           csel     w8, w27, w26, eq
0x00ee5a94: 08 01 09 0b           add      w8, w8, w9
0x00ee5a98: 08 03 00 b9           str      w8, [x24]
0x00ee5a9c: a8 72 1d 12           and      w8, w21, #0xfffffff8
0x00ee5aa0: 1f c1 00 71           cmp      w8, #0x30
0x00ee5aa4: 41 11 00 54           b.ne     #0xee5ccc
0x00ee5aa8: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee5aac: 1f 05 00 71           cmp      w8, #1
0x00ee5ab0: 09 14 00 54           b.ls     #0xee5d30
0x00ee5ab4: 08 03 40 b9           ldr      w8, [x24]
0x00ee5ab8: 08 51 00 11           add      w8, w8, #0x14
0x00ee5abc: 7d 00 00 14           b        #0xee5cb0
0x00ee5ac0: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee5ac4: 1f 05 00 71           cmp      w8, #1
0x00ee5ac8: 49 13 00 54           b.ls     #0xee5d30
0x00ee5acc: 68 4a 40 f9           ldr      x8, [x19, #0x90]
0x00ee5ad0: 28 13 00 b4           cbz      x8, #0xee5d34
0x00ee5ad4: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5ad8: c9 12 00 34           cbz      w9, #0xee5d30
0x00ee5adc: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5ae0: 1d 03 40 b9           ldr      w29, [x24]
0x00ee5ae4: 1f c5 12 71           cmp      w8, #0x4b1
0x00ee5ae8: ca 0d 00 54           b.ge     #0xee5ca0
0x00ee5aec: c0 02 40 f9           ldr      x0, [x22]
0x00ee5af0: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee5af4: 68 00 00 35           cbnz     w8, #0xee5b00
0x00ee5af8: 45 e0 fc 97           bl       #0xe1dc0c
0x00ee5afc: c0 02 40 f9           ldr      x0, [x22]
0x00ee5b00: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee5b04: 28 35 40 f9           ldr      x8, [x9, #0x68]
0x00ee5b08: 68 11 00 b4           cbz      x8, #0xee5d34
0x00ee5b0c: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee5b10: bf 02 0a eb           cmp      x21, x10
0x00ee5b14: e2 10 00 54           b.hs     #0xee5d30
0x00ee5b18: 29 31 40 f9           ldr      x9, [x9, #0x60]
0x00ee5b1c: c9 10 00 b4           cbz      x9, #0xee5d34
0x00ee5b20: 08 09 15 8b           add      x8, x8, x21, lsl #2
0x00ee5b24: 08 21 80 b9           ldrsw    x8, [x8, #0x20]
0x00ee5b28: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee5b2c: 1f 01 0a 6b           cmp      w8, w10
0x00ee5b30: 02 10 00 54           b.hs     #0xee5d30
0x00ee5b34: 28 09 08 8b           add      x8, x9, x8, lsl #2
0x00ee5b38: 00 21 40 b9           ldr      w0, [x8, #0x20]
0x00ee5b3c: 5c 00 00 14           b        #0xee5cac
0x00ee5b40: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee5b44: 68 0f 00 34           cbz      w8, #0xee5d30
0x00ee5b48: c0 02 40 f9           ldr      x0, [x22]
0x00ee5b4c: fd 02 40 b9           ldr      w29, [x23]
0x00ee5b50: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee5b54: 68 00 00 35           cbnz     w8, #0xee5b60
0x00ee5b58: 2d e0 fc 97           bl       #0xe1dc0c
0x00ee5b5c: c0 02 40 f9           ldr      x0, [x22]
0x00ee5b60: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ee5b64: 08 25 40 f9           ldr      x8, [x8, #0x48]
0x00ee5b68: a8 01 00 b5           cbnz     x8, #0xee5b9c
0x00ee5b6c: 72 00 00 14           b        #0xee5d34
0x00ee5b70: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee5b74: e8 0d 00 34           cbz      w8, #0xee5d30
0x00ee5b78: c0 02 40 f9           ldr      x0, [x22]
0x00ee5b7c: fd 02 40 b9           ldr      w29, [x23]
0x00ee5b80: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee5b84: 68 00 00 35           cbnz     w8, #0xee5b90
0x00ee5b88: 21 e0 fc 97           bl       #0xe1dc0c
0x00ee5b8c: c0 02 40 f9           ldr      x0, [x22]
0x00ee5b90: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ee5b94: 08 29 40 f9           ldr      x8, [x8, #0x50]
0x00ee5b98: e8 0c 00 b4           cbz      x8, #0xee5d34
0x00ee5b9c: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5ba0: bf 02 09 eb           cmp      x21, x9
0x00ee5ba4: 62 0c 00 54           b.hs     #0xee5d30
0x00ee5ba8: 08 09 15 8b           add      x8, x8, x21, lsl #2
0x00ee5bac: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5bb0: 08 01 1d 0b           add      w8, w8, w29
0x00ee5bb4: 45 00 00 14           b        #0xee5cc8
0x00ee5bb8: 68 46 40 f9           ldr      x8, [x19, #0x88]
0x00ee5bbc: c8 0b 00 b4           cbz      x8, #0xee5d34
0x00ee5bc0: 0a 09 40 f9           ldr      x10, [x8, #0x10]
0x00ee5bc4: 49 01 40 b9           ldr      w9, [x10]
0x00ee5bc8: 49 0b 00 34           cbz      w9, #0xee5d30
0x00ee5bcc: 4a 09 40 f9           ldr      x10, [x10, #0x10]
0x00ee5bd0: ab 0a 00 12           and      w11, w21, #7
0x00ee5bd4: 6b 05 00 11           add      w11, w11, #1
0x00ee5bd8: 7f 01 0a 6b           cmp      w11, w10
0x00ee5bdc: a2 0a 00 54           b.hs     #0xee5d30
0x00ee5be0: 0c 09 0b 8b           add      x12, x8, x11, lsl #2
0x00ee5be4: 8c 21 40 b9           ldr      w12, [x12, #0x20]
0x00ee5be8: ac 01 00 35           cbnz     w12, #0xee5c1c
0x00ee5bec: 8c 1a 40 b9           ldr      w12, [x20, #0x18]
0x00ee5bf0: 0c 0a 00 34           cbz      w12, #0xee5d30
0x00ee5bf4: 3f 05 00 71           cmp      w9, #1
0x00ee5bf8: c9 09 00 54           b.ls     #0xee5d30
0x00ee5bfc: 49 01 0b 8b           add      x9, x10, x11
0x00ee5c00: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee5c04: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee5c08: e9 02 40 b9           ldr      w9, [x23]
0x00ee5c0c: 1f 1d 00 71           cmp      w8, #7
0x00ee5c10: 68 03 9a 1a           csel     w8, w27, w26, eq
0x00ee5c14: 08 01 09 0b           add      w8, w8, w9
0x00ee5c18: e8 02 00 b9           str      w8, [x23]
0x00ee5c1c: a8 72 1d 12           and      w8, w21, #0xfffffff8
0x00ee5c20: 1f 21 00 71           cmp      w8, #8
0x00ee5c24: 41 05 00 54           b.ne     #0xee5ccc
0x00ee5c28: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee5c2c: 28 08 00 34           cbz      w8, #0xee5d30
0x00ee5c30: e8 02 40 b9           ldr      w8, [x23]
0x00ee5c34: 08 51 00 11           add      w8, w8, #0x14
0x00ee5c38: 24 00 00 14           b        #0xee5cc8
0x00ee5c3c: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee5c40: 88 07 00 34           cbz      w8, #0xee5d30
0x00ee5c44: 68 4a 40 f9           ldr      x8, [x19, #0x90]
0x00ee5c48: 68 07 00 b4           cbz      x8, #0xee5d34
0x00ee5c4c: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5c50: 3f 05 00 71           cmp      w9, #1
0x00ee5c54: e9 06 00 54           b.ls     #0xee5d30
0x00ee5c58: 08 25 40 b9           ldr      w8, [x8, #0x24]
0x00ee5c5c: fd 02 40 b9           ldr      w29, [x23]
0x00ee5c60: 1f c5 12 71           cmp      w8, #0x4b1
0x00ee5c64: aa 02 00 54           b.ge     #0xee5cb8
0x00ee5c68: c0 02 40 f9           ldr      x0, [x22]
0x00ee5c6c: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee5c70: 68 00 00 35           cbnz     w8, #0xee5c7c
0x00ee5c74: e6 df fc 97           bl       #0xe1dc0c
0x00ee5c78: c0 02 40 f9           ldr      x0, [x22]
0x00ee5c7c: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ee5c80: 08 31 40 f9           ldr      x8, [x8, #0x60]
0x00ee5c84: 88 05 00 b4           cbz      x8, #0xee5d34
0x00ee5c88: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5c8c: bf 02 09 eb           cmp      x21, x9
0x00ee5c90: 02 05 00 54           b.hs     #0xee5d30
0x00ee5c94: 08 09 15 8b           add      x8, x8, x21, lsl #2
0x00ee5c98: 00 21 40 b9           ldr      w0, [x8, #0x20]
0x00ee5c9c: 0a 00 00 14           b        #0xee5cc4
0x00ee5ca0: e0 03 13 aa           mov      x0, x19
0x00ee5ca4: e1 03 15 2a           mov      w1, w21
0x00ee5ca8: 66 07 00 94           bl       #0xee7a40
0x00ee5cac: 08 00 1d 0b           add      w8, w0, w29
0x00ee5cb0: 08 03 00 b9           str      w8, [x24]
0x00ee5cb4: 06 00 00 14           b        #0xee5ccc
0x00ee5cb8: e0 03 13 aa           mov      x0, x19
0x00ee5cbc: e1 03 15 2a           mov      w1, w21
0x00ee5cc0: 94 06 00 94           bl       #0xee7710
0x00ee5cc4: 08 00 1d 0b           add      w8, w0, w29
0x00ee5cc8: e8 02 00 b9           str      w8, [x23]
0x00ee5ccc: b5 06 00 91           add      x21, x21, #1
0x00ee5cd0: bf 02 01 f1           cmp      x21, #0x40
0x00ee5cd4: e1 df ff 54           b.ne     #0xee58d0
0x00ee5cd8: 69 22 40 b9           ldr      w9, [x19, #0x20]
0x00ee5cdc: 88 1a 40 b9           ldr      w8, [x20, #0x18]
0x00ee5ce0: c9 00 00 34           cbz      w9, #0xee5cf8
0x00ee5ce4: 1f 05 00 71           cmp      w8, #1
0x00ee5ce8: e9 03 18 aa           mov      x9, x24
0x00ee5cec: f8 03 17 aa           mov      x24, x23
0x00ee5cf0: c8 00 00 54           b.hi     #0xee5d08
0x00ee5cf4: 0f 00 00 14           b        #0xee5d30
0x00ee5cf8: 1f 05 00 71           cmp      w8, #1
0x00ee5cfc: a0 01 00 54           b.eq     #0xee5d30
0x00ee5d00: e9 03 17 aa           mov      x9, x23
0x00ee5d04: 68 01 00 34           cbz      w8, #0xee5d30
0x00ee5d08: 28 01 40 b9           ldr      w8, [x9]
0x00ee5d0c: 09 03 40 b9           ldr      w9, [x24]
0x00ee5d10: f4 4f 45 a9           ldp      x20, x19, [sp, #0x50]
0x00ee5d14: f6 57 44 a9           ldp      x22, x21, [sp, #0x40]
0x00ee5d18: f8 5f 43 a9           ldp      x24, x23, [sp, #0x30]
0x00ee5d1c: fa 67 42 a9           ldp      x26, x25, [sp, #0x20]
0x00ee5d20: fc 6f 41 a9           ldp      x28, x27, [sp, #0x10]
0x00ee5d24: 00 01 09 4b           sub      w0, w8, w9
0x00ee5d28: fd 7b c6 a8           ldp      x29, x30, [sp], #0x60
0x00ee5d2c: c0 03 5f d6           ret      
