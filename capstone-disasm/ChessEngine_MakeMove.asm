// Function: ChessEngine_MakeMove
// RVA: 0xee6570
// Description: Make move
// Size: 1320 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee6570: ff 03 01 d1           sub      sp, sp, #0x40
0x00ee6574: fe 5f 01 a9           stp      x30, x23, [sp, #0x10]
0x00ee6578: f6 57 02 a9           stp      x22, x21, [sp, #0x20]
0x00ee657c: f4 4f 03 a9           stp      x20, x19, [sp, #0x30]
0x00ee6580: 75 9d 00 f0           adrp     x21, #0x2295000
0x00ee6584: a8 32 5a 39           ldrb     w8, [x21, #0x68c]
0x00ee6588: f4 03 01 aa           mov      x20, x1
0x00ee658c: f3 03 00 aa           mov      x19, x0
0x00ee6590: c8 00 00 37           tbnz     w8, #0, #0xee65a8
0x00ee6594: a0 91 00 b0           adrp     x0, #0x211b000
0x00ee6598: 00 70 41 f9           ldr      x0, [x0, #0x2e0]
0x00ee659c: 5a dd fc 97           bl       #0xe1db04
0x00ee65a0: 28 00 80 52           mov      w8, #1
0x00ee65a4: a8 32 1a 39           strb     w8, [x21, #0x68c]
0x00ee65a8: 95 fe 58 d3           lsr      x21, x20, #0x18
0x00ee65ac: 96 fe 48 d3           lsr      x22, x20, #8
0x00ee65b0: 35 08 08 37           tbnz     w21, #1, #0xee66b4
0x00ee65b4: 68 26 40 f9           ldr      x8, [x19, #0x48]
0x00ee65b8: e8 26 00 b4           cbz      x8, #0xee6a94
0x00ee65bc: 69 36 80 b9           ldrsw    x9, [x19, #0x34]
0x00ee65c0: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee65c4: 3f 01 0a 6b           cmp      w9, w10
0x00ee65c8: 42 26 00 54           b.hs     #0xee6a90
0x00ee65cc: 8b 02 80 52           mov      w11, #0x14
0x00ee65d0: 8a fe 50 d3           lsr      x10, x20, #0x10
0x00ee65d4: 28 21 0b 9b           madd     x8, x9, x11, x8
0x00ee65d8: 14 81 00 39           strb     w20, [x8, #0x20]
0x00ee65dc: 16 85 00 39           strb     w22, [x8, #0x21]
0x00ee65e0: 0a 89 00 39           strb     w10, [x8, #0x22]
0x00ee65e4: 15 8d 00 39           strb     w21, [x8, #0x23]
0x00ee65e8: 68 26 40 f9           ldr      x8, [x19, #0x48]
0x00ee65ec: 48 25 00 b4           cbz      x8, #0xee6a94
0x00ee65f0: 69 0e 40 f9           ldr      x9, [x19, #0x18]
0x00ee65f4: 09 25 00 b4           cbz      x9, #0xee6a94
0x00ee65f8: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee65fc: 96 3e 48 d3           ubfx     x22, x20, #8, #8
0x00ee6600: df 02 0a 6b           cmp      w22, w10
0x00ee6604: 62 24 00 54           b.hs     #0xee6a90
0x00ee6608: 6a 36 80 b9           ldrsw    x10, [x19, #0x34]
0x00ee660c: 0b 19 40 b9           ldr      w11, [x8, #0x18]
0x00ee6610: 5f 01 0b 6b           cmp      w10, w11
0x00ee6614: e2 23 00 54           b.hs     #0xee6a90
0x00ee6618: 29 09 16 8b           add      x9, x9, x22, lsl #2
0x00ee661c: 29 21 40 b9           ldr      w9, [x9, #0x20]
0x00ee6620: 8b 02 80 52           mov      w11, #0x14
0x00ee6624: 48 21 0b 9b           madd     x8, x10, x11, x8
0x00ee6628: b7 91 00 b0           adrp     x23, #0x211b000
0x00ee662c: 09 25 00 b9           str      w9, [x8, #0x24]
0x00ee6630: 60 16 40 fd           ldr      d0, [x19, #0x28]
0x00ee6634: 4a 05 00 11           add      w10, w10, #1
0x00ee6638: 00 15 00 fd           str      d0, [x8, #0x28]
0x00ee663c: 69 32 40 b9           ldr      w9, [x19, #0x30]
0x00ee6640: f7 72 41 f9           ldr      x23, [x23, #0x2e0]
0x00ee6644: 09 31 00 b9           str      w9, [x8, #0x30]
0x00ee6648: 6a 36 00 b9           str      w10, [x19, #0x34]
0x00ee664c: e0 02 40 f9           ldr      x0, [x23]
0x00ee6650: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee6654: a8 00 00 35           cbnz     w8, #0xee6668
0x00ee6658: e0 03 80 3d           str      q0, [sp]
0x00ee665c: 6c dd fc 97           bl       #0xe1dc0c
0x00ee6660: e0 03 c0 3d           ldr      q0, [sp]
0x00ee6664: e0 02 40 f9           ldr      x0, [x23]
0x00ee6668: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ee666c: 09 15 40 f9           ldr      x9, [x8, #0x28]
0x00ee6670: 29 21 00 b4           cbz      x9, #0xee6a94
0x00ee6674: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee6678: 88 1e 40 92           and      x8, x20, #0xff
0x00ee667c: 1f 01 0a 6b           cmp      w8, w10
0x00ee6680: 82 20 00 54           b.hs     #0xee6a90
0x00ee6684: df 02 0a 6b           cmp      w22, w10
0x00ee6688: 42 20 00 54           b.hs     #0xee6a90
0x00ee668c: 29 81 00 91           add      x9, x9, #0x20
0x00ee6690: 2a 79 68 b8           ldr      w10, [x9, x8, lsl #2]
0x00ee6694: 29 79 76 b8           ldr      w9, [x9, x22, lsl #2]
0x00ee6698: 0b 00 26 1e           fmov     w11, s0
0x00ee669c: 4a 01 0b 0a           and      w10, w10, w11
0x00ee66a0: 49 01 09 0a           and      w9, w10, w9
0x00ee66a4: 69 2a 00 b9           str      w9, [x19, #0x28]
0x00ee66a8: 35 05 18 37           tbnz     w21, #3, #0xee674c
0x00ee66ac: 09 00 80 12           mov      w9, #-1
0x00ee66b0: 2d 00 00 14           b        #0xee6764
0x00ee66b4: 61 22 40 b9           ldr      w1, [x19, #0x20]
0x00ee66b8: e0 03 13 aa           mov      x0, x19
0x00ee66bc: 9f fd ff 97           bl       #0xee5d38
0x00ee66c0: 20 0e 00 37           tbnz     w0, #0, #0xee6884
0x00ee66c4: 88 1e 78 92           and      x8, x20, #0xff00
0x00ee66c8: 1f fd 1b f1           cmp      x8, #0x6ff
0x00ee66cc: c8 0e 00 54           b.hi     #0xee68a4
0x00ee66d0: c8 1e 00 12           and      w8, w22, #0xff
0x00ee66d4: 1f 09 00 71           cmp      w8, #2
0x00ee66d8: 00 16 00 54           b.eq     #0xee6998
0x00ee66dc: 1f 19 00 71           cmp      w8, #6
0x00ee66e0: 01 12 00 54           b.ne     #0xee6920
0x00ee66e4: 68 0a 40 f9           ldr      x8, [x19, #0x10]
0x00ee66e8: 68 1d 00 b4           cbz      x8, #0xee6a94
0x00ee66ec: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee66f0: 3f 15 00 71           cmp      w9, #5
0x00ee66f4: e9 1c 00 54           b.ls     #0xee6a90
0x00ee66f8: 0a 35 40 b9           ldr      w10, [x8, #0x34]
0x00ee66fc: 5f 19 00 71           cmp      w10, #6
0x00ee6700: 21 0c 00 54           b.ne     #0xee6884
0x00ee6704: 3f 19 00 71           cmp      w9, #6
0x00ee6708: 49 1c 00 54           b.ls     #0xee6a90
0x00ee670c: 08 39 40 b9           ldr      w8, [x8, #0x38]
0x00ee6710: 1f 19 00 71           cmp      w8, #6
0x00ee6714: 81 0b 00 54           b.ne     #0xee6884
0x00ee6718: 62 26 40 b9           ldr      w2, [x19, #0x24]
0x00ee671c: a1 00 80 52           mov      w1, #5
0x00ee6720: e0 03 13 aa           mov      x0, x19
0x00ee6724: 81 05 00 94           bl       #0xee7d28
0x00ee6728: e0 0a 00 37           tbnz     w0, #0, #0xee6884
0x00ee672c: 62 26 40 b9           ldr      w2, [x19, #0x24]
0x00ee6730: c1 00 80 52           mov      w1, #6
0x00ee6734: e0 03 13 aa           mov      x0, x19
0x00ee6738: 7c 05 00 94           bl       #0xee7d28
0x00ee673c: 40 0a 00 37           tbnz     w0, #0, #0xee6884
0x00ee6740: e8 00 80 52           mov      w8, #7
0x00ee6744: b7 00 80 52           mov      w23, #5
0x00ee6748: 78 00 00 14           b        #0xee6928
0x00ee674c: 69 22 40 b9           ldr      w9, [x19, #0x20]
0x00ee6750: 8a 7e 48 d3           ubfx     x10, x20, #8, #0x18
0x00ee6754: 3f 01 00 71           cmp      w9, #0
0x00ee6758: 09 01 80 52           mov      w9, #8
0x00ee675c: 29 05 89 5a           cneg     w9, w9, ne
0x00ee6760: 29 01 2a 0b           add      w9, w9, w10, uxtb
0x00ee6764: 2a 02 80 52           mov      w10, #0x11
0x00ee6768: bf 02 0a 6a           tst      w21, w10
0x00ee676c: 69 2e 00 b9           str      w9, [x19, #0x2c]
0x00ee6770: 60 00 00 54           b.eq     #0xee677c
0x00ee6774: ea 03 1f 2a           mov      w10, wzr
0x00ee6778: 03 00 00 14           b        #0xee6784
0x00ee677c: 69 32 40 b9           ldr      w9, [x19, #0x30]
0x00ee6780: 2a 05 00 11           add      w10, w9, #1
0x00ee6784: 69 0a 40 f9           ldr      x9, [x19, #0x10]
0x00ee6788: 6a 32 00 b9           str      w10, [x19, #0x30]
0x00ee678c: 49 18 00 b4           cbz      x9, #0xee6a94
0x00ee6790: 2b 19 40 b9           ldr      w11, [x9, #0x18]
0x00ee6794: df 02 0b 6b           cmp      w22, w11
0x00ee6798: c2 17 00 54           b.hs     #0xee6a90
0x00ee679c: 6a 22 40 b9           ldr      w10, [x19, #0x20]
0x00ee67a0: 2c 09 16 8b           add      x12, x9, x22, lsl #2
0x00ee67a4: 8a 21 00 b9           str      w10, [x12, #0x20]
0x00ee67a8: 6a 0e 40 f9           ldr      x10, [x19, #0x18]
0x00ee67ac: 15 01 28 37           tbnz     w21, #5, #0xee67cc
0x00ee67b0: 2a 17 00 b4           cbz      x10, #0xee6a94
0x00ee67b4: 4c 19 40 b9           ldr      w12, [x10, #0x18]
0x00ee67b8: 1f 01 0c 6b           cmp      w8, w12
0x00ee67bc: a2 16 00 54           b.hs     #0xee6a90
0x00ee67c0: 4c 09 08 8b           add      x12, x10, x8, lsl #2
0x00ee67c4: 8d 21 40 b9           ldr      w13, [x12, #0x20]
0x00ee67c8: 03 00 00 14           b        #0xee67d4
0x00ee67cc: 4a 16 00 b4           cbz      x10, #0xee6a94
0x00ee67d0: 8d 5e 10 53           ubfx     w13, w20, #0x10, #8
0x00ee67d4: 4c 19 40 b9           ldr      w12, [x10, #0x18]
0x00ee67d8: df 02 0c 6b           cmp      w22, w12
0x00ee67dc: a2 15 00 54           b.hs     #0xee6a90
0x00ee67e0: 4e 09 16 8b           add      x14, x10, x22, lsl #2
0x00ee67e4: 1f 01 0b 6b           cmp      w8, w11
0x00ee67e8: cd 21 00 b9           str      w13, [x14, #0x20]
0x00ee67ec: 22 15 00 54           b.hs     #0xee6a90
0x00ee67f0: 2e 09 08 8b           add      x14, x9, x8, lsl #2
0x00ee67f4: cd 00 80 52           mov      w13, #6
0x00ee67f8: 1f 01 0c 6b           cmp      w8, w12
0x00ee67fc: cd 21 00 b9           str      w13, [x14, #0x20]
0x00ee6800: 82 14 00 54           b.hs     #0xee6a90
0x00ee6804: 48 09 08 8b           add      x8, x10, x8, lsl #2
0x00ee6808: 0d 21 00 b9           str      w13, [x8, #0x20]
0x00ee680c: b5 02 10 36           tbz      w21, #2, #0xee6860
0x00ee6810: 68 22 40 b9           ldr      w8, [x19, #0x20]
0x00ee6814: 8d 7e 48 d3           ubfx     x13, x20, #8, #0x18
0x00ee6818: 1f 01 00 71           cmp      w8, #0
0x00ee681c: 08 01 80 52           mov      w8, #8
0x00ee6820: 0e 05 88 5a           cneg     w14, w8, ne
0x00ee6824: cd 01 2d 0b           add      w13, w14, w13, uxtb
0x00ee6828: bf 01 0b 6b           cmp      w13, w11
0x00ee682c: 22 13 00 54           b.hs     #0xee6a90
0x00ee6830: 2b c9 2d 8b           add      x11, x9, w13, sxtw #2
0x00ee6834: c9 00 80 52           mov      w9, #6
0x00ee6838: 69 21 00 b9           str      w9, [x11, #0x20]
0x00ee683c: 6b 22 40 b9           ldr      w11, [x19, #0x20]
0x00ee6840: 8d 3e 08 53           ubfx     w13, w20, #8, #8
0x00ee6844: 7f 01 00 71           cmp      w11, #0
0x00ee6848: 08 05 88 5a           cneg     w8, w8, ne
0x00ee684c: 08 01 0d 0b           add      w8, w8, w13
0x00ee6850: 1f 01 0c 6b           cmp      w8, w12
0x00ee6854: e2 11 00 54           b.hs     #0xee6a90
0x00ee6858: 48 c9 28 8b           add      x8, x10, w8, sxtw #2
0x00ee685c: 09 21 00 b9           str      w9, [x8, #0x20]
0x00ee6860: 68 26 44 29           ldp      w8, w9, [x19, #0x20]
0x00ee6864: e0 03 13 aa           mov      x0, x19
0x00ee6868: 08 01 00 52           eor      w8, w8, #1
0x00ee686c: 21 01 00 52           eor      w1, w9, #1
0x00ee6870: 68 06 04 29           stp      w8, w1, [x19, #0x20]
0x00ee6874: 31 fd ff 97           bl       #0xee5d38
0x00ee6878: a0 00 00 36           tbz      w0, #0, #0xee688c
0x00ee687c: e0 03 13 aa           mov      x0, x19
0x00ee6880: 86 00 00 94           bl       #0xee6a98
0x00ee6884: e0 03 1f 2a           mov      w0, wzr
0x00ee6888: 02 00 00 14           b        #0xee6890
0x00ee688c: 20 00 80 52           mov      w0, #1
0x00ee6890: f4 4f 43 a9           ldp      x20, x19, [sp, #0x30]
0x00ee6894: f6 57 42 a9           ldp      x22, x21, [sp, #0x20]
0x00ee6898: fe 5f 41 a9           ldp      x30, x23, [sp, #0x10]
0x00ee689c: ff 03 01 91           add      sp, sp, #0x40
0x00ee68a0: c0 03 5f d6           ret      
