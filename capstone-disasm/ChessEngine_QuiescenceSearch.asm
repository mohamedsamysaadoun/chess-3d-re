// Function: ChessEngine_QuiescenceSearch
// RVA: 0xee5290
// Description: Quiescence search
// Size: 796 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee5290: fe 0f 1b f8           str      x30, [sp, #-0x50]!
0x00ee5294: fa 67 01 a9           stp      x26, x25, [sp, #0x10]
0x00ee5298: f8 5f 02 a9           stp      x24, x23, [sp, #0x20]
0x00ee529c: f6 57 03 a9           stp      x22, x21, [sp, #0x30]
0x00ee52a0: f4 4f 04 a9           stp      x20, x19, [sp, #0x40]
0x00ee52a4: 17 04 42 39           ldrb     w23, [x0, #0x81]
0x00ee52a8: f6 03 03 2a           mov      w22, w3
0x00ee52ac: f3 03 02 2a           mov      w19, w2
0x00ee52b0: f4 03 00 aa           mov      x20, x0
0x00ee52b4: f5 03 01 2a           mov      w21, w1
0x00ee52b8: 27 e2 fc 97           bl       #0xe1db54
0x00ee52bc: 77 15 00 34           cbz      w23, #0xee5568
0x00ee52c0: 88 3e 40 f9           ldr      x8, [x20, #0x78]
0x00ee52c4: 08 15 00 b4           cbz      x8, #0xee5564
0x00ee52c8: 89 36 40 b9           ldr      w9, [x20, #0x34]
0x00ee52cc: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee52d0: 3f 01 0a 6b           cmp      w9, w10
0x00ee52d4: 62 13 00 54           b.hs     #0xee5540
0x00ee52d8: 2a 7d 40 93           sxtw     x10, w9
0x00ee52dc: 08 09 0a 8b           add      x8, x8, x10, lsl #2
0x00ee52e0: 09 21 00 b9           str      w9, [x8, #0x20]
0x00ee52e4: 16 01 00 36           tbz      w22, #0, #0xee5304
0x00ee52e8: e0 03 14 aa           mov      x0, x20
0x00ee52ec: f4 4f 44 a9           ldp      x20, x19, [sp, #0x40]
0x00ee52f0: f6 57 43 a9           ldp      x22, x21, [sp, #0x30]
0x00ee52f4: f8 5f 42 a9           ldp      x24, x23, [sp, #0x20]
0x00ee52f8: fa 67 41 a9           ldp      x26, x25, [sp, #0x10]
0x00ee52fc: fe 07 45 f8           ldr      x30, [sp], #0x50
0x00ee5300: ab 00 00 14           b        #0xee55ac
0x00ee5304: 96 36 40 b9           ldr      w22, [x20, #0x34]
0x00ee5308: e0 03 14 aa           mov      x0, x20
0x00ee530c: a8 00 00 94           bl       #0xee55ac
0x00ee5310: df 7a 00 71           cmp      w22, #0x1e
0x00ee5314: f7 03 00 2a           mov      w23, w0
0x00ee5318: 8c 11 00 54           b.gt     #0xee5548
0x00ee531c: ff 02 13 6b           cmp      w23, w19
0x00ee5320: 2a 11 00 54           b.ge     #0xee5544
0x00ee5324: ff 02 15 6b           cmp      w23, w21
0x00ee5328: e0 03 14 aa           mov      x0, x20
0x00ee532c: f7 c2 95 1a           csel     w23, w23, w21, gt
0x00ee5330: 62 06 00 94           bl       #0xee6cb8
0x00ee5334: 88 02 42 39           ldrb     w8, [x20, #0x80]
0x00ee5338: 68 00 00 34           cbz      w8, #0xee5344
0x00ee533c: e0 03 14 aa           mov      x0, x20
0x00ee5340: 3e 04 00 94           bl       #0xee6438
0x00ee5344: 88 36 40 f9           ldr      x8, [x20, #0x68]
0x00ee5348: e8 10 00 b4           cbz      x8, #0xee5564
0x00ee534c: 89 36 80 b9           ldrsw    x9, [x20, #0x34]
0x00ee5350: 0b 19 40 b9           ldr      w11, [x8, #0x18]
0x00ee5354: 3f 01 0b 6b           cmp      w9, w11
0x00ee5358: 42 0f 00 54           b.hs     #0xee5540
0x00ee535c: 2a 05 00 11           add      w10, w9, #1
0x00ee5360: 5f 01 0b 6b           cmp      w10, w11
0x00ee5364: e2 0e 00 54           b.hs     #0xee5540
0x00ee5368: 08 81 00 91           add      x8, x8, #0x20
0x00ee536c: 0a d9 6a b8           ldr      w10, [x8, w10, sxtw #2]
0x00ee5370: 01 79 69 b8           ldr      w1, [x8, x9, lsl #2]
0x00ee5374: e0 03 14 aa           mov      x0, x20
0x00ee5378: 42 05 00 51           sub      w2, w10, #1
0x00ee537c: 65 04 00 94           bl       #0xee6510
0x00ee5380: 88 36 40 f9           ldr      x8, [x20, #0x68]
0x00ee5384: 08 0f 00 b4           cbz      x8, #0xee5564
0x00ee5388: 8a 36 80 b9           ldrsw    x10, [x20, #0x34]
0x00ee538c: 0b 0d 40 f9           ldr      x11, [x8, #0x18]
0x00ee5390: 5f 01 0b 6b           cmp      w10, w11
0x00ee5394: 62 0d 00 54           b.hs     #0xee5540
0x00ee5398: 49 05 00 11           add      w9, w10, #1
0x00ee539c: 3f 01 0b 6b           cmp      w9, w11
0x00ee53a0: 02 0d 00 54           b.hs     #0xee5540
0x00ee53a4: 0a 09 0a 8b           add      x10, x8, x10, lsl #2
0x00ee53a8: 58 21 40 b9           ldr      w24, [x10, #0x20]
0x00ee53ac: f5 03 13 4b           neg      w21, w19
0x00ee53b0: 08 c9 29 8b           add      x8, x8, w9, sxtw #2
0x00ee53b4: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee53b8: 1f 03 08 6b           cmp      w24, w8
0x00ee53bc: 6a 0c 00 54           b.ge     #0xee5548
0x00ee53c0: 88 32 40 f9           ldr      x8, [x20, #0x60]
0x00ee53c4: 08 0d 00 b4           cbz      x8, #0xee5564
0x00ee53c8: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee53cc: 1f 03 09 6b           cmp      w24, w9
0x00ee53d0: 82 0b 00 54           b.hs     #0xee5540
0x00ee53d4: 1a 7f 40 93           sxtw     x26, w24
0x00ee53d8: 08 0d 1a 8b           add      x8, x8, x26, lsl #3
0x00ee53dc: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee53e0: c9 7e 60 92           and      x9, x22, #0xffffffff00000000
0x00ee53e4: e0 03 14 aa           mov      x0, x20
0x00ee53e8: 36 01 08 aa           orr      x22, x9, x8
0x00ee53ec: e1 03 16 aa           mov      x1, x22
0x00ee53f0: 60 04 00 94           bl       #0xee6570
0x00ee53f4: 60 09 00 36           tbz      w0, #0, #0xee5520
0x00ee53f8: e2 03 17 4b           neg      w2, w23
0x00ee53fc: e0 03 14 aa           mov      x0, x20
0x00ee5400: e1 03 15 2a           mov      w1, w21
0x00ee5404: e3 03 1f 2a           mov      w3, wzr
0x00ee5408: a2 ff ff 97           bl       #0xee5290
0x00ee540c: f9 03 00 4b           neg      w25, w0
0x00ee5410: e0 03 14 aa           mov      x0, x20
0x00ee5414: a1 05 00 94           bl       #0xee6a98
0x00ee5418: ff 02 19 6b           cmp      w23, w25
0x00ee541c: 2a 08 00 54           b.ge     #0xee5520
0x00ee5420: 3f 03 13 6b           cmp      w25, w19
0x00ee5424: 0a 09 00 54           b.ge     #0xee5544
0x00ee5428: 88 32 40 f9           ldr      x8, [x20, #0x60]
0x00ee542c: c8 09 00 b4           cbz      x8, #0xee5564
0x00ee5430: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee5434: 1f 03 09 6b           cmp      w24, w9
0x00ee5438: 42 08 00 54           b.hs     #0xee5540
0x00ee543c: 89 3a 40 f9           ldr      x9, [x20, #0x70]
0x00ee5440: 29 09 00 b4           cbz      x9, #0xee5564
0x00ee5444: 2b 09 40 f9           ldr      x11, [x9, #0x10]
0x00ee5448: 8a 36 80 b9           ldrsw    x10, [x20, #0x34]
0x00ee544c: 6c 01 40 b9           ldr      w12, [x11]
0x00ee5450: 5f 01 0c 6b           cmp      w10, w12
0x00ee5454: 62 07 00 54           b.hs     #0xee5540
0x00ee5458: 6b 09 40 f9           ldr      x11, [x11, #0x10]
0x00ee545c: 5f 01 0b 6b           cmp      w10, w11
0x00ee5460: 02 07 00 54           b.hs     #0xee5540
0x00ee5464: 08 0d 1a 8b           add      x8, x8, x26, lsl #3
0x00ee5468: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee546c: 1f 20 03 d5           nop      
0x00ee5470: 6a 29 0a 9b           madd     x10, x11, x10, x10
0x00ee5474: 29 09 0a 8b           add      x9, x9, x10, lsl #2
0x00ee5478: 28 21 00 b9           str      w8, [x9, #0x20]
0x00ee547c: 8a 3e 40 f9           ldr      x10, [x20, #0x78]
0x00ee5480: 2a 07 00 b4           cbz      x10, #0xee5564
0x00ee5484: 88 36 40 b9           ldr      w8, [x20, #0x34]
0x00ee5488: 09 05 00 11           add      w9, w8, #1
0x00ee548c: 29 7d 40 93           sxtw     x9, w9
0x00ee5490: 4c 0d 40 f9           ldr      x12, [x10, #0x18]
0x00ee5494: 0b 05 00 11           add      w11, w8, #1
0x00ee5498: 7f 01 0c 6b           cmp      w11, w12
0x00ee549c: 22 05 00 54           b.hs     #0xee5540
0x00ee54a0: 6b 7d 40 93           sxtw     x11, w11
0x00ee54a4: 4d 09 0b 8b           add      x13, x10, x11, lsl #2
0x00ee54a8: ad 21 40 b9           ldr      w13, [x13, #0x20]
0x00ee54ac: 3f 01 0d 6b           cmp      w9, w13
0x00ee54b0: ea 02 00 54           b.ge     #0xee550c
0x00ee54b4: 8a 3a 40 f9           ldr      x10, [x20, #0x70]
0x00ee54b8: 6a 05 00 b4           cbz      x10, #0xee5564
0x00ee54bc: 4c 09 40 f9           ldr      x12, [x10, #0x10]
0x00ee54c0: 8d 01 40 b9           ldr      w13, [x12]
0x00ee54c4: 7f 01 0d 6b           cmp      w11, w13
0x00ee54c8: c2 03 00 54           b.hs     #0xee5540
0x00ee54cc: 8c 09 40 f9           ldr      x12, [x12, #0x10]
0x00ee54d0: 3f 01 0c 6b           cmp      w9, w12
0x00ee54d4: 62 03 00 54           b.hs     #0xee5540
0x00ee54d8: 1f 01 0d 6b           cmp      w8, w13
0x00ee54dc: 22 03 00 54           b.hs     #0xee5540
0x00ee54e0: 8b 25 0b 9b           madd     x11, x12, x11, x9
0x00ee54e4: 4a 81 00 91           add      x10, x10, #0x20
0x00ee54e8: 4b 79 6b b8           ldr      w11, [x10, x11, lsl #2]
0x00ee54ec: 08 7d 40 93           sxtw     x8, w8
0x00ee54f0: 88 25 08 9b           madd     x8, x12, x8, x9
0x00ee54f4: 29 05 00 91           add      x9, x9, #1
0x00ee54f8: 4b 79 28 b8           str      w11, [x10, x8, lsl #2]
0x00ee54fc: 8a 3e 40 f9           ldr      x10, [x20, #0x78]
0x00ee5500: 88 36 40 b9           ldr      w8, [x20, #0x34]
0x00ee5504: 6a fc ff b5           cbnz     x10, #0xee5490
0x00ee5508: 17 00 00 14           b        #0xee5564
0x00ee550c: 1f 01 0c 6b           cmp      w8, w12
0x00ee5510: 82 01 00 54           b.hs     #0xee5540
0x00ee5514: 48 c9 28 8b           add      x8, x10, w8, sxtw #2
0x00ee5518: f7 03 19 2a           mov      w23, w25
0x00ee551c: 0d 21 00 b9           str      w13, [x8, #0x20]
0x00ee5520: 88 36 40 f9           ldr      x8, [x20, #0x68]
0x00ee5524: 08 02 00 b4           cbz      x8, #0xee5564
0x00ee5528: 89 36 40 b9           ldr      w9, [x20, #0x34]
0x00ee552c: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee5530: 18 07 00 11           add      w24, w24, #1
0x00ee5534: 29 05 00 11           add      w9, w9, #1
0x00ee5538: 3f 01 0a 6b           cmp      w9, w10
0x00ee553c: a3 f3 ff 54           b.lo     #0xee53b0
0x00ee5540: fb e1 fc 97           bl       #0xe1dd2c
0x00ee5544: f7 03 13 2a           mov      w23, w19
0x00ee5548: e0 03 17 2a           mov      w0, w23
0x00ee554c: f4 4f 44 a9           ldp      x20, x19, [sp, #0x40]
0x00ee5550: f6 57 43 a9           ldp      x22, x21, [sp, #0x30]
0x00ee5554: f8 5f 42 a9           ldp      x24, x23, [sp, #0x20]
0x00ee5558: fa 67 41 a9           ldp      x26, x25, [sp, #0x10]
0x00ee555c: fe 07 45 f8           ldr      x30, [sp], #0x50
0x00ee5560: c0 03 5f d6           ret      
