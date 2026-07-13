// Function: ChessEngine_ParseFEN
// RVA: 0xee4130
// Description: Parse FEN string
// Size: 2072 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee4130: fd 7b ba a9           stp      x29, x30, [sp, #-0x60]!
0x00ee4134: fc 6f 01 a9           stp      x28, x27, [sp, #0x10]
0x00ee4138: fa 67 02 a9           stp      x26, x25, [sp, #0x20]
0x00ee413c: f8 5f 03 a9           stp      x24, x23, [sp, #0x30]
0x00ee4140: f6 57 04 a9           stp      x22, x21, [sp, #0x40]
0x00ee4144: f4 4f 05 a9           stp      x20, x19, [sp, #0x50]
0x00ee4148: 95 9d 00 b0           adrp     x21, #0x2295000
0x00ee414c: a8 0e 5a 39           ldrb     w8, [x21, #0x683]
0x00ee4150: f4 03 01 aa           mov      x20, x1
0x00ee4154: f3 03 00 aa           mov      x19, x0
0x00ee4158: 28 01 00 37           tbnz     w8, #0, #0xee417c
0x00ee415c: a0 91 00 d0           adrp     x0, #0x211a000
0x00ee4160: 00 9c 43 f9           ldr      x0, [x0, #0x738]
0x00ee4164: 68 e6 fc 97           bl       #0xe1db04
0x00ee4168: c0 91 00 90           adrp     x0, #0x211c000
0x00ee416c: 00 18 43 f9           ldr      x0, [x0, #0x630]
0x00ee4170: 65 e6 fc 97           bl       #0xe1db04
0x00ee4174: 28 00 80 52           mov      w8, #1
0x00ee4178: a8 0e 1a 39           strb     w8, [x21, #0x683]
0x00ee417c: 6a 0a 40 f9           ldr      x10, [x19, #0x10]
0x00ee4180: 6a 27 00 b4           cbz      x10, #0xee466c
0x00ee4184: 49 19 40 b9           ldr      w9, [x10, #0x18]
0x00ee4188: e8 03 1f aa           mov      x8, xzr
0x00ee418c: 4a 81 00 91           add      x10, x10, #0x20
0x00ee4190: cb 00 80 52           mov      w11, #6
0x00ee4194: 1f 01 09 eb           cmp      x8, x9
0x00ee4198: 82 26 00 54           b.hs     #0xee4668
0x00ee419c: 4b 79 28 b8           str      w11, [x10, x8, lsl #2]
0x00ee41a0: 6c 0e 40 f9           ldr      x12, [x19, #0x18]
0x00ee41a4: 4c 26 00 b4           cbz      x12, #0xee466c
0x00ee41a8: 8d 19 40 b9           ldr      w13, [x12, #0x18]
0x00ee41ac: 1f 01 0d eb           cmp      x8, x13
0x00ee41b0: c2 25 00 54           b.hs     #0xee4668
0x00ee41b4: 8c 09 08 8b           add      x12, x12, x8, lsl #2
0x00ee41b8: 08 05 00 91           add      x8, x8, #1
0x00ee41bc: 1f 01 01 f1           cmp      x8, #0x40
0x00ee41c0: 8b 21 00 b9           str      w11, [x12, #0x20]
0x00ee41c4: 81 fe ff 54           b.ne     #0xee4194
0x00ee41c8: 34 25 00 b4           cbz      x20, #0xee466c
0x00ee41cc: e0 03 14 aa           mov      x0, x20
0x00ee41d0: e1 03 1f 2a           mov      w1, wzr
0x00ee41d4: e2 03 1f aa           mov      x2, xzr
0x00ee41d8: 2b 05 21 94           bl       #0x1725684
0x00ee41dc: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee41e0: 1f 81 00 71           cmp      w8, #0x20
0x00ee41e4: f5 03 1f 2a           mov      w21, wzr
0x00ee41e8: 60 12 00 54           b.eq     #0xee4434
0x00ee41ec: bb 91 00 d0           adrp     x27, #0x211a000
0x00ee41f0: 7b 9f 43 f9           ldr      x27, [x27, #0x738]
0x00ee41f4: 59 b3 ff d0           adrp     x25, #0x54e000
0x00ee41f8: 5c b3 ff d0           adrp     x28, #0x54e000
0x00ee41fc: f7 03 1f 2a           mov      w23, wzr
0x00ee4200: f5 03 1f 2a           mov      w21, wzr
0x00ee4204: 39 cf 22 91           add      x25, x25, #0x8b3
0x00ee4208: 98 00 80 52           mov      w24, #4
0x00ee420c: 7a 00 80 52           mov      w26, #3
0x00ee4210: 9c af 22 91           add      x28, x28, #0x8ab
0x00ee4214: e0 03 14 aa           mov      x0, x20
0x00ee4218: e1 03 15 2a           mov      w1, w21
0x00ee421c: e2 03 1f aa           mov      x2, xzr
0x00ee4220: 19 05 21 94           bl       #0x1725684
0x00ee4224: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee4228: 1f c5 00 71           cmp      w8, #0x31
0x00ee422c: 03 01 00 54           b.lo     #0xee424c
0x00ee4230: e0 03 14 aa           mov      x0, x20
0x00ee4234: e1 03 15 2a           mov      w1, w21
0x00ee4238: e2 03 1f aa           mov      x2, xzr
0x00ee423c: 12 05 21 94           bl       #0x1725684
0x00ee4240: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee4244: 1f e1 00 71           cmp      w8, #0x38
0x00ee4248: c9 03 00 54           b.ls     #0xee42c0
0x00ee424c: e0 03 14 aa           mov      x0, x20
0x00ee4250: e1 03 15 2a           mov      w1, w21
0x00ee4254: e2 03 1f aa           mov      x2, xzr
0x00ee4258: 0b 05 21 94           bl       #0x1725684
0x00ee425c: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee4260: 1f 49 01 71           cmp      w8, #0x52
0x00ee4264: 08 01 00 54           b.hi     #0xee4284
0x00ee4268: 09 2d 01 51           sub      w9, w8, #0x4b
0x00ee426c: 3f 1d 00 71           cmp      w9, #7
0x00ee4270: 68 07 00 54           b.hi     #0xee435c
0x00ee4274: 68 01 00 10           adr      x8, #0xee42a0
0x00ee4278: 2a 6b 69 38           ldrb     w10, [x25, x9]
0x00ee427c: 08 09 0a 8b           add      x8, x8, x10, lsl #2
0x00ee4280: 00 01 1f d6           br       x8
0x00ee4284: 09 ad 01 51           sub      w9, w8, #0x6b
0x00ee4288: 3f 1d 00 71           cmp      w9, #7
0x00ee428c: e8 06 00 54           b.hi     #0xee4368
0x00ee4290: 88 00 00 10           adr      x8, #0xee42a0
0x00ee4294: 8a 6b 69 38           ldrb     w10, [x28, x9]
0x00ee4298: 08 09 0a 8b           add      x8, x8, x10, lsl #2
0x00ee429c: 00 01 1f d6           br       x8
0x00ee42a0: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee42a4: 48 1e 00 b4           cbz      x8, #0xee466c
0x00ee42a8: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee42ac: ff 02 09 6b           cmp      w23, w9
0x00ee42b0: c2 1d 00 54           b.hs     #0xee4668
0x00ee42b4: 08 c9 37 8b           add      x8, x8, w23, sxtw #2
0x00ee42b8: a9 00 80 52           mov      w9, #5
0x00ee42bc: 34 00 00 14           b        #0xee438c
0x00ee42c0: e0 03 14 aa           mov      x0, x20
0x00ee42c4: e1 03 15 2a           mov      w1, w21
0x00ee42c8: e2 03 1f aa           mov      x2, xzr
0x00ee42cc: ee 04 21 94           bl       #0x1725684
0x00ee42d0: e8 22 20 0b           add      w8, w23, w0, uxth
0x00ee42d4: 17 c1 00 51           sub      w23, w8, #0x30
0x00ee42d8: 4f 00 00 14           b        #0xee4414
0x00ee42dc: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee42e0: 68 1c 00 b4           cbz      x8, #0xee466c
0x00ee42e4: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee42e8: ff 02 09 6b           cmp      w23, w9
0x00ee42ec: e2 1b 00 54           b.hs     #0xee4668
0x00ee42f0: 08 c9 37 8b           add      x8, x8, w23, sxtw #2
0x00ee42f4: 29 00 80 52           mov      w9, #1
0x00ee42f8: 25 00 00 14           b        #0xee438c
0x00ee42fc: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee4300: 68 1b 00 b4           cbz      x8, #0xee466c
0x00ee4304: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee4308: ff 02 09 6b           cmp      w23, w9
0x00ee430c: e2 1a 00 54           b.hs     #0xee4668
0x00ee4310: 08 c9 37 8b           add      x8, x8, w23, sxtw #2
0x00ee4314: 1f 21 00 b9           str      wzr, [x8, #0x20]
0x00ee4318: 1e 00 00 14           b        #0xee4390
0x00ee431c: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee4320: 68 1a 00 b4           cbz      x8, #0xee466c
0x00ee4324: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee4328: ff 02 09 6b           cmp      w23, w9
0x00ee432c: e2 19 00 54           b.hs     #0xee4668
0x00ee4330: 08 c9 37 8b           add      x8, x8, w23, sxtw #2
0x00ee4334: 18 21 00 b9           str      w24, [x8, #0x20]
0x00ee4338: 16 00 00 14           b        #0xee4390
0x00ee433c: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee4340: 68 19 00 b4           cbz      x8, #0xee466c
0x00ee4344: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee4348: ff 02 09 6b           cmp      w23, w9
0x00ee434c: e2 18 00 54           b.hs     #0xee4668
0x00ee4350: 08 c9 37 8b           add      x8, x8, w23, sxtw #2
0x00ee4354: 1a 21 00 b9           str      w26, [x8, #0x20]
0x00ee4358: 0e 00 00 14           b        #0xee4390
0x00ee435c: 1f 09 01 71           cmp      w8, #0x42
0x00ee4360: 80 00 00 54           b.eq     #0xee4370
0x00ee4364: 0b 00 00 14           b        #0xee4390
0x00ee4368: 1f 89 01 71           cmp      w8, #0x62
0x00ee436c: 21 01 00 54           b.ne     #0xee4390
0x00ee4370: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee4374: c8 17 00 b4           cbz      x8, #0xee466c
0x00ee4378: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee437c: ff 02 09 6b           cmp      w23, w9
0x00ee4380: 42 17 00 54           b.hs     #0xee4668
0x00ee4384: 08 c9 37 8b           add      x8, x8, w23, sxtw #2
0x00ee4388: 49 00 80 52           mov      w9, #2
0x00ee438c: 09 21 00 b9           str      w9, [x8, #0x20]
0x00ee4390: 68 0e 40 f9           ldr      x8, [x19, #0x18]
0x00ee4394: c8 16 00 b4           cbz      x8, #0xee466c
0x00ee4398: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee439c: ff 02 09 6b           cmp      w23, w9
0x00ee43a0: 42 16 00 54           b.hs     #0xee4668
0x00ee43a4: 08 c9 37 8b           add      x8, x8, w23, sxtw #2
0x00ee43a8: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee43ac: 1f 19 00 71           cmp      w8, #6
0x00ee43b0: 20 03 00 54           b.eq     #0xee4414
0x00ee43b4: 7d 0a 40 f9           ldr      x29, [x19, #0x10]
0x00ee43b8: e0 03 14 aa           mov      x0, x20
0x00ee43bc: e1 03 15 2a           mov      w1, w21
0x00ee43c0: e2 03 1f aa           mov      x2, xzr
0x00ee43c4: b0 04 21 94           bl       #0x1725684
0x00ee43c8: 68 03 40 f9           ldr      x8, [x27]
0x00ee43cc: f6 03 00 2a           mov      w22, w0
0x00ee43d0: 09 e1 40 b9           ldr      w9, [x8, #0xe0]
0x00ee43d4: 69 00 00 35           cbnz     w9, #0xee43e0
0x00ee43d8: e0 03 08 aa           mov      x0, x8
0x00ee43dc: 0c e6 fc 97           bl       #0xe1dc0c
0x00ee43e0: e0 03 16 2a           mov      w0, w22
0x00ee43e4: e1 03 1f aa           mov      x1, xzr
0x00ee43e8: d8 cb 24 94           bl       #0x1817348
0x00ee43ec: 1d 14 00 b4           cbz      x29, #0xee466c
0x00ee43f0: a8 1b 40 b9           ldr      w8, [x29, #0x18]
0x00ee43f4: ff 02 08 6b           cmp      w23, w8
0x00ee43f8: 82 13 00 54           b.hs     #0xee4668
0x00ee43fc: e8 7e 40 93           sxtw     x8, w23
0x00ee4400: e9 03 20 2a           mvn      w9, w0
0x00ee4404: f7 06 00 11           add      w23, w23, #1
0x00ee4408: 29 01 00 12           and      w9, w9, #1
0x00ee440c: a8 0b 08 8b           add      x8, x29, x8, lsl #2
0x00ee4410: 09 21 00 b9           str      w9, [x8, #0x20]
0x00ee4414: b5 06 00 11           add      w21, w21, #1
0x00ee4418: e0 03 14 aa           mov      x0, x20
0x00ee441c: e1 03 15 2a           mov      w1, w21
0x00ee4420: e2 03 1f aa           mov      x2, xzr
0x00ee4424: 98 04 21 94           bl       #0x1725684
0x00ee4428: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee442c: 1f 81 00 71           cmp      w8, #0x20
0x00ee4430: 21 ef ff 54           b.ne     #0xee4214
0x00ee4434: b6 06 00 11           add      w22, w21, #1
0x00ee4438: e0 03 14 aa           mov      x0, x20
0x00ee443c: e1 03 16 2a           mov      w1, w22
0x00ee4440: e2 03 1f aa           mov      x2, xzr
0x00ee4444: 90 04 21 94           bl       #0x1725684
0x00ee4448: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee444c: 1f dd 01 71           cmp      w8, #0x77
0x00ee4450: 81 00 00 54           b.ne     #0xee4460
0x00ee4454: 48 b3 ff b0           adrp     x8, #0x54d000
0x00ee4458: 00 fd 43 fd           ldr      d0, [x8, #0x7f8]
0x00ee445c: 0a 00 00 14           b        #0xee4484
0x00ee4460: e0 03 14 aa           mov      x0, x20
0x00ee4464: e1 03 16 2a           mov      w1, w22
0x00ee4468: e2 03 1f aa           mov      x2, xzr
0x00ee446c: 86 04 21 94           bl       #0x1725684
0x00ee4470: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee4474: 1f 89 01 71           cmp      w8, #0x62
0x00ee4478: 81 00 00 54           b.ne     #0xee4488
0x00ee447c: 48 b3 ff b0           adrp     x8, #0x54d000
0x00ee4480: 00 d1 45 fd           ldr      d0, [x8, #0xba0]
0x00ee4484: 60 12 00 fd           str      d0, [x19, #0x20]
0x00ee4488: b6 0e 00 11           add      w22, w21, #3
0x00ee448c: e0 03 14 aa           mov      x0, x20
0x00ee4490: e1 03 16 2a           mov      w1, w22
0x00ee4494: e2 03 1f aa           mov      x2, xzr
0x00ee4498: 7f 2a 00 b9           str      wzr, [x19, #0x28]
0x00ee449c: 7a 04 21 94           bl       #0x1725684
0x00ee44a0: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee44a4: 1f b5 00 71           cmp      w8, #0x2d
0x00ee44a8: 61 00 00 54           b.ne     #0xee44b4
0x00ee44ac: b6 12 00 11           add      w22, w21, #4
0x00ee44b0: 24 00 00 14           b        #0xee4540
0x00ee44b4: e0 03 14 aa           mov      x0, x20
0x00ee44b8: e1 03 16 2a           mov      w1, w22
0x00ee44bc: e2 03 1f aa           mov      x2, xzr
0x00ee44c0: 71 04 21 94           bl       #0x1725684
0x00ee44c4: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee44c8: 1f 45 01 71           cmp      w8, #0x51
0x00ee44cc: 08 01 00 54           b.hi     #0xee44ec
0x00ee44d0: 1f 2d 01 71           cmp      w8, #0x4b
0x00ee44d4: a0 01 00 54           b.eq     #0xee4508
0x00ee44d8: 1f 45 01 71           cmp      w8, #0x51
0x00ee44dc: 21 02 00 54           b.ne     #0xee4520
0x00ee44e0: 68 2a 40 b9           ldr      w8, [x19, #0x28]
0x00ee44e4: 08 09 00 11           add      w8, w8, #2
0x00ee44e8: 0d 00 00 14           b        #0xee451c
0x00ee44ec: 1f ad 01 71           cmp      w8, #0x6b
0x00ee44f0: 20 01 00 54           b.eq     #0xee4514
0x00ee44f4: 1f c5 01 71           cmp      w8, #0x71
0x00ee44f8: 41 01 00 54           b.ne     #0xee4520
0x00ee44fc: 68 2a 40 b9           ldr      w8, [x19, #0x28]
0x00ee4500: 08 21 00 11           add      w8, w8, #8
0x00ee4504: 06 00 00 14           b        #0xee451c
0x00ee4508: 68 2a 40 b9           ldr      w8, [x19, #0x28]
0x00ee450c: 08 05 00 11           add      w8, w8, #1
0x00ee4510: 03 00 00 14           b        #0xee451c
0x00ee4514: 68 2a 40 b9           ldr      w8, [x19, #0x28]
0x00ee4518: 08 11 00 11           add      w8, w8, #4
0x00ee451c: 68 2a 00 b9           str      w8, [x19, #0x28]
0x00ee4520: d6 06 00 11           add      w22, w22, #1
0x00ee4524: e0 03 14 aa           mov      x0, x20
0x00ee4528: e1 03 16 2a           mov      w1, w22
0x00ee452c: e2 03 1f aa           mov      x2, xzr
0x00ee4530: 55 04 21 94           bl       #0x1725684
0x00ee4534: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee4538: 1f 81 00 71           cmp      w8, #0x20
0x00ee453c: c1 fb ff 54           b.ne     #0xee44b4
0x00ee4540: d5 06 00 11           add      w21, w22, #1
0x00ee4544: e0 03 14 aa           mov      x0, x20
0x00ee4548: e1 03 15 2a           mov      w1, w21
0x00ee454c: e2 03 1f aa           mov      x2, xzr
0x00ee4550: 4d 04 21 94           bl       #0x1725684
0x00ee4554: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee4558: 1f b5 00 71           cmp      w8, #0x2d
0x00ee455c: c1 0a 00 11           add      w1, w22, #2
0x00ee4560: 61 00 00 54           b.ne     #0xee456c
0x00ee4564: 08 00 80 12           mov      w8, #-1
0x00ee4568: 0d 00 00 14           b        #0xee459c
0x00ee456c: e0 03 14 aa           mov      x0, x20
0x00ee4570: e2 03 1f aa           mov      x2, xzr
0x00ee4574: 44 04 21 94           bl       #0x1725684
0x00ee4578: f7 03 00 2a           mov      w23, w0
0x00ee457c: e0 03 14 aa           mov      x0, x20
0x00ee4580: e1 03 15 2a           mov      w1, w21
0x00ee4584: e2 03 1f aa           mov      x2, xzr
0x00ee4588: 3f 04 21 94           bl       #0x1725684
0x00ee458c: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee4590: 08 2d 37 4b           sub      w8, w8, w23, uxth #3
0x00ee4594: 08 7d 05 11           add      w8, w8, #0x15f
0x00ee4598: c1 0e 00 11           add      w1, w22, #3
0x00ee459c: 35 04 00 11           add      w21, w1, #1
0x00ee45a0: 01 04 80 52           mov      w1, #0x20
0x00ee45a4: e0 03 14 aa           mov      x0, x20
0x00ee45a8: e2 03 15 2a           mov      w2, w21
0x00ee45ac: e3 03 1f aa           mov      x3, xzr
0x00ee45b0: 68 2e 00 b9           str      w8, [x19, #0x2c]
0x00ee45b4: 8f 26 21 94           bl       #0x172dff0
0x00ee45b8: 02 00 15 4b           sub      w2, w0, w21
0x00ee45bc: e0 03 14 aa           mov      x0, x20
0x00ee45c0: e1 03 15 2a           mov      w1, w21
0x00ee45c4: e3 03 1f aa           mov      x3, xzr
0x00ee45c8: 1c 1c 21 94           bl       #0x172b638
0x00ee45cc: c8 91 00 90           adrp     x8, #0x211c000
0x00ee45d0: 08 19 43 f9           ldr      x8, [x8, #0x630]
0x00ee45d4: f6 03 00 aa           mov      x22, x0
0x00ee45d8: 08 01 40 f9           ldr      x8, [x8]
0x00ee45dc: 09 e1 40 b9           ldr      w9, [x8, #0xe0]
0x00ee45e0: 69 00 00 35           cbnz     w9, #0xee45ec
0x00ee45e4: e0 03 08 aa           mov      x0, x8
0x00ee45e8: 89 e5 fc 97           bl       #0xe1dc0c
0x00ee45ec: e0 03 1f aa           mov      x0, xzr
0x00ee45f0: d5 43 25 94           bl       #0x1835544
0x00ee45f4: e1 03 00 aa           mov      x1, x0
0x00ee45f8: e0 03 16 aa           mov      x0, x22
0x00ee45fc: e2 03 1f aa           mov      x2, xzr
0x00ee4600: 91 60 26 94           bl       #0x187c844
0x00ee4604: 60 32 00 b9           str      w0, [x19, #0x30]
0x00ee4608: 01 04 80 52           mov      w1, #0x20
0x00ee460c: e0 03 14 aa           mov      x0, x20
0x00ee4610: e2 03 15 2a           mov      w2, w21
0x00ee4614: e3 03 1f aa           mov      x3, xzr
0x00ee4618: 76 26 21 94           bl       #0x172dff0
0x00ee461c: 01 04 00 11           add      w1, w0, #1
0x00ee4620: e0 03 14 aa           mov      x0, x20
0x00ee4624: e2 03 1f aa           mov      x2, xzr
0x00ee4628: 3c 24 21 94           bl       #0x172d718
0x00ee462c: f4 03 00 aa           mov      x20, x0
0x00ee4630: e0 03 1f aa           mov      x0, xzr
0x00ee4634: c4 43 25 94           bl       #0x1835544
0x00ee4638: e1 03 00 aa           mov      x1, x0
0x00ee463c: e0 03 14 aa           mov      x0, x20
0x00ee4640: e2 03 1f aa           mov      x2, xzr
0x00ee4644: 80 60 26 94           bl       #0x187c844
0x00ee4648: 60 3a 00 b9           str      w0, [x19, #0x38]
0x00ee464c: f4 4f 45 a9           ldp      x20, x19, [sp, #0x50]
0x00ee4650: f6 57 44 a9           ldp      x22, x21, [sp, #0x40]
0x00ee4654: f8 5f 43 a9           ldp      x24, x23, [sp, #0x30]
0x00ee4658: fa 67 42 a9           ldp      x26, x25, [sp, #0x20]
0x00ee465c: fc 6f 41 a9           ldp      x28, x27, [sp, #0x10]
0x00ee4660: fd 7b c6 a8           ldp      x29, x30, [sp], #0x60
0x00ee4664: c0 03 5f d6           ret      
