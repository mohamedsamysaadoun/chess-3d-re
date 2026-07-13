// Function: ChessEngine_Suru
// RVA: 0xee3ff8
// Description: Initialize/Start
// Size: 312 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee3ff8: fe 0f 1e f8           str      x30, [sp, #-0x20]!
0x00ee3ffc: f4 4f 01 a9           stp      x20, x19, [sp, #0x10]
0x00ee4000: f3 03 00 aa           mov      x19, x0
0x00ee4004: 4b 00 00 94           bl       #0xee4130
0x00ee4008: 60 22 40 f9           ldr      x0, [x19, #0x40]
0x00ee400c: 7f 36 00 b9           str      wzr, [x19, #0x34]
0x00ee4010: e0 08 00 b4           cbz      x0, #0xee412c
0x00ee4014: e1 03 1f aa           mov      x1, xzr
0x00ee4018: b7 c8 26 94           bl       #0x18962f4
0x00ee401c: 1f 04 00 71           cmp      w0, #1
0x00ee4020: ab 02 00 54           b.lt     #0xee4074
0x00ee4024: f4 03 1f 2a           mov      w20, wzr
0x00ee4028: 60 22 40 f9           ldr      x0, [x19, #0x40]
0x00ee402c: 00 08 00 b4           cbz      x0, #0xee412c
0x00ee4030: 09 08 40 f9           ldr      x9, [x0, #0x10]
0x00ee4034: 88 16 00 12           and      w8, w20, #0x3f
0x00ee4038: 2a 01 40 b9           ldr      w10, [x9]
0x00ee403c: 1f 01 0a 6b           cmp      w8, w10
0x00ee4040: 42 07 00 54           b.hs     #0xee4128
0x00ee4044: 29 09 40 f9           ldr      x9, [x9, #0x10]
0x00ee4048: 8a 7e 06 53           lsr      w10, w20, #6
0x00ee404c: 5f 01 09 6b           cmp      w10, w9
0x00ee4050: c2 06 00 54           b.hs     #0xee4128
0x00ee4054: 28 29 08 9b           madd     x8, x9, x8, x10
0x00ee4058: 08 08 08 8b           add      x8, x0, x8, lsl #2
0x00ee405c: e1 03 1f aa           mov      x1, xzr
0x00ee4060: 1f 21 00 b9           str      wzr, [x8, #0x20]
0x00ee4064: 94 06 00 11           add      w20, w20, #1
0x00ee4068: a3 c8 26 94           bl       #0x18962f4
0x00ee406c: 9f 02 00 6b           cmp      w20, w0
0x00ee4070: cb fd ff 54           b.lt     #0xee4028
0x00ee4074: 60 3a 40 f9           ldr      x0, [x19, #0x70]
0x00ee4078: a0 05 00 b4           cbz      x0, #0xee412c
0x00ee407c: f4 03 1f 2a           mov      w20, wzr
0x00ee4080: e1 03 1f aa           mov      x1, xzr
0x00ee4084: 9c c8 26 94           bl       #0x18962f4
0x00ee4088: 9f 02 00 6b           cmp      w20, w0
0x00ee408c: aa 02 00 54           b.ge     #0xee40e0
0x00ee4090: 68 3a 40 f9           ldr      x8, [x19, #0x70]
0x00ee4094: c8 04 00 b4           cbz      x8, #0xee412c
0x00ee4098: 0a 09 40 f9           ldr      x10, [x8, #0x10]
0x00ee409c: 89 12 00 12           and      w9, w20, #0x1f
0x00ee40a0: 4b 01 40 b9           ldr      w11, [x10]
0x00ee40a4: 3f 01 0b 6b           cmp      w9, w11
0x00ee40a8: 02 04 00 54           b.hs     #0xee4128
0x00ee40ac: 4a 09 40 f9           ldr      x10, [x10, #0x10]
0x00ee40b0: 8b 7e 05 53           lsr      w11, w20, #5
0x00ee40b4: 7f 01 0a 6b           cmp      w11, w10
0x00ee40b8: 82 03 00 54           b.hs     #0xee4128
0x00ee40bc: e9 03 09 2a           mov      w9, w9
0x00ee40c0: eb 03 0b 2a           mov      w11, w11
0x00ee40c4: 49 2d 09 9b           madd     x9, x10, x9, x11
0x00ee40c8: 08 09 09 8b           add      x8, x8, x9, lsl #2
0x00ee40cc: 1f 21 00 b9           str      wzr, [x8, #0x20]
0x00ee40d0: 60 3a 40 f9           ldr      x0, [x19, #0x70]
0x00ee40d4: 94 06 00 11           add      w20, w20, #1
0x00ee40d8: 40 fd ff b5           cbnz     x0, #0xee4080
0x00ee40dc: 14 00 00 14           b        #0xee412c
0x00ee40e0: 6b 3e 40 f9           ldr      x11, [x19, #0x78]
0x00ee40e4: 4b 02 00 b4           cbz      x11, #0xee412c
0x00ee40e8: 68 19 40 b9           ldr      w8, [x11, #0x18]
0x00ee40ec: 09 7d 60 d3           lsl      x9, x8, #0x20
0x00ee40f0: 3f 05 00 f1           cmp      x9, #1
0x00ee40f4: 4b 01 00 54           b.lt     #0xee411c
0x00ee40f8: e9 03 1f aa           mov      x9, xzr
0x00ee40fc: 0a 7d 40 93           sxtw     x10, w8
0x00ee4100: 6b 81 00 91           add      x11, x11, #0x20
0x00ee4104: 3f 01 08 eb           cmp      x9, x8
0x00ee4108: 02 01 00 54           b.hs     #0xee4128
0x00ee410c: 7f 79 29 b8           str      wzr, [x11, x9, lsl #2]
0x00ee4110: 29 05 00 91           add      x9, x9, #1
0x00ee4114: 3f 01 0a eb           cmp      x9, x10
0x00ee4118: 6b ff ff 54           b.lt     #0xee4104
0x00ee411c: f4 4f 41 a9           ldp      x20, x19, [sp, #0x10]
0x00ee4120: fe 07 42 f8           ldr      x30, [sp], #0x20
0x00ee4124: c0 03 5f d6           ret      
