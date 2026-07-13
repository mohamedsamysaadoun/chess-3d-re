// Function: ChessEngine_GetBestMove
// RVA: 0xee4948
// Description: PUBLIC API: Get best move
// Size: 1204 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee4948: fe 0f 1c f8           str      x30, [sp, #-0x40]!
0x00ee494c: f8 5f 01 a9           stp      x24, x23, [sp, #0x10]
0x00ee4950: f6 57 02 a9           stp      x22, x21, [sp, #0x20]
0x00ee4954: f4 4f 03 a9           stp      x20, x19, [sp, #0x30]
0x00ee4958: 18 04 42 39           ldrb     w24, [x0, #0x81]
0x00ee495c: f4 03 04 2a           mov      w20, w4
0x00ee4960: f5 03 03 2a           mov      w21, w3
0x00ee4964: f6 03 02 aa           mov      x22, x2
0x00ee4968: f3 03 00 aa           mov      x19, x0
0x00ee496c: f7 03 01 aa           mov      x23, x1
0x00ee4970: 79 e4 fc 97           bl       #0xe1db54
0x00ee4974: 78 00 00 34           cbz      w24, #0xee4980
0x00ee4978: e0 03 1f aa           mov      x0, xzr
0x00ee497c: 32 00 00 14           b        #0xee4a44
0x00ee4980: e0 03 13 aa           mov      x0, x19
0x00ee4984: e1 03 17 aa           mov      x1, x23
0x00ee4988: 9c fd ff 97           bl       #0xee3ff8
0x00ee498c: 68 3a 40 b9           ldr      w8, [x19, #0x38]
0x00ee4990: 1f 15 00 71           cmp      w8, #5
0x00ee4994: 6c 02 00 54           b.gt     #0xee49e0
0x00ee4998: 68 02 40 f9           ldr      x8, [x19]
0x00ee499c: 77 2e 40 f9           ldr      x23, [x19, #0x58]
0x00ee49a0: e0 03 13 aa           mov      x0, x19
0x00ee49a4: 09 85 55 a9           ldp      x9, x1, [x8, #0x158]
0x00ee49a8: 20 01 3f d6           blr      x9
0x00ee49ac: 97 05 00 b4           cbz      x23, #0xee4a5c
0x00ee49b0: e1 03 00 2a           mov      w1, w0
0x00ee49b4: e0 03 17 aa           mov      x0, x23
0x00ee49b8: 95 fc ff 97           bl       #0xee3c0c
0x00ee49bc: 08 3c 00 13           sxth     w8, w0
0x00ee49c0: 1f 05 00 71           cmp      w8, #1
0x00ee49c4: eb 00 00 54           b.lt     #0xee49e0
0x00ee49c8: 09 7d 08 53           lsr      w9, w8, #8
0x00ee49cc: e0 33 00 91           add      x0, sp, #0xc
0x00ee49d0: ff 0f 00 b9           str      wzr, [sp, #0xc]
0x00ee49d4: e9 33 00 39           strb     w9, [sp, #0xc]
0x00ee49d8: e8 37 00 39           strb     w8, [sp, #0xd]
0x00ee49dc: 19 00 00 14           b        #0xee4a40
0x00ee49e0: e0 03 16 aa           mov      x0, x22
0x00ee49e4: bc 00 00 94           bl       #0xee4cd4
0x00ee49e8: bf 2a 00 71           cmp      w21, #0xa
0x00ee49ec: 48 01 80 52           mov      w8, #0xa
0x00ee49f0: b5 b2 88 1a           csel     w21, w21, w8, lt
0x00ee49f4: 60 52 00 b9           str      w0, [x19, #0x50]
0x00ee49f8: 57 e4 fc 97           bl       #0xe1db54
0x00ee49fc: bf 06 00 71           cmp      w21, #1
0x00ee4a00: 28 00 80 52           mov      w8, #1
0x00ee4a04: a1 c6 9f 1a           csinc    w1, w21, wzr, gt
0x00ee4a08: 68 06 02 39           strb     w8, [x19, #0x81]
0x00ee4a0c: 82 02 00 12           and      w2, w20, #1
0x00ee4a10: e0 03 13 aa           mov      x0, x19
0x00ee4a14: fa 00 00 94           bl       #0xee4dfc
0x00ee4a18: 4f e4 fc 97           bl       #0xe1db54
0x00ee4a1c: 7f 06 02 39           strb     wzr, [x19, #0x81]
0x00ee4a20: 68 3a 40 f9           ldr      x8, [x19, #0x70]
0x00ee4a24: c8 01 00 b4           cbz      x8, #0xee4a5c
0x00ee4a28: 09 09 40 f9           ldr      x9, [x8, #0x10]
0x00ee4a2c: 2a 01 40 b9           ldr      w10, [x9]
0x00ee4a30: 4a 01 00 34           cbz      w10, #0xee4a58
0x00ee4a34: 29 11 40 b9           ldr      w9, [x9, #0x10]
0x00ee4a38: 09 01 00 34           cbz      w9, #0xee4a58
0x00ee4a3c: 00 81 00 91           add      x0, x8, #0x20
0x00ee4a40: 5e 00 00 94           bl       #0xee4bb8
0x00ee4a44: f4 4f 43 a9           ldp      x20, x19, [sp, #0x30]
0x00ee4a48: f6 57 42 a9           ldp      x22, x21, [sp, #0x20]
0x00ee4a4c: f8 5f 41 a9           ldp      x24, x23, [sp, #0x10]
0x00ee4a50: fe 07 44 f8           ldr      x30, [sp], #0x40
0x00ee4a54: c0 03 5f d6           ret      
