// Function: ChessEngine_EvalBlackKing
// RVA: 0xee7a40
// Description: Eval black king
// Size: 428 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee7a40: fe 0f 1d f8           str      x30, [sp, #-0x30]!
0x00ee7a44: f6 57 01 a9           stp      x22, x21, [sp, #0x10]
0x00ee7a48: f4 4f 02 a9           stp      x20, x19, [sp, #0x20]
0x00ee7a4c: 76 9d 00 d0           adrp     x22, #0x2295000
0x00ee7a50: b5 91 00 90           adrp     x21, #0x211b000
0x00ee7a54: c8 2e 5a 39           ldrb     w8, [x22, #0x68b]
0x00ee7a58: b5 72 41 f9           ldr      x21, [x21, #0x2e0]
0x00ee7a5c: f4 03 01 2a           mov      w20, w1
0x00ee7a60: f3 03 00 aa           mov      x19, x0
0x00ee7a64: c8 00 00 37           tbnz     w8, #0, #0xee7a7c
0x00ee7a68: a0 91 00 90           adrp     x0, #0x211b000
0x00ee7a6c: 00 70 41 f9           ldr      x0, [x0, #0x2e0]
0x00ee7a70: 25 d8 fc 97           bl       #0xe1db04
0x00ee7a74: 28 00 80 52           mov      w8, #1
0x00ee7a78: c8 2e 1a 39           strb     w8, [x22, #0x68b]
0x00ee7a7c: a0 02 40 f9           ldr      x0, [x21]
0x00ee7a80: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ee7a84: 68 00 00 35           cbnz     w8, #0xee7a90
0x00ee7a88: 61 d8 fc 97           bl       #0xe1dc0c
0x00ee7a8c: a0 02 40 f9           ldr      x0, [x21]
0x00ee7a90: 09 5c 40 f9           ldr      x9, [x0, #0xb8]
0x00ee7a94: 28 35 40 f9           ldr      x8, [x9, #0x68]
0x00ee7a98: 88 0a 00 b4           cbz      x8, #0xee7be8
0x00ee7a9c: 0a 19 40 b9           ldr      w10, [x8, #0x18]
0x00ee7aa0: 5f 01 14 6b           cmp      w10, w20
0x00ee7aa4: 09 0a 00 54           b.ls     #0xee7be4
0x00ee7aa8: 29 2d 40 f9           ldr      x9, [x9, #0x58]
0x00ee7aac: e9 09 00 b4           cbz      x9, #0xee7be8
0x00ee7ab0: 08 c9 34 8b           add      x8, x8, w20, sxtw #2
0x00ee7ab4: 08 21 80 b9           ldrsw    x8, [x8, #0x20]
0x00ee7ab8: 2a 19 40 b9           ldr      w10, [x9, #0x18]
0x00ee7abc: 1f 01 0a 6b           cmp      w8, w10
0x00ee7ac0: 22 09 00 54           b.hs     #0xee7be4
0x00ee7ac4: 28 09 08 8b           add      x8, x9, x8, lsl #2
0x00ee7ac8: 16 21 40 b9           ldr      w22, [x8, #0x20]
0x00ee7acc: 88 0a 00 12           and      w8, w20, #7
0x00ee7ad0: 1f 0d 00 71           cmp      w8, #3
0x00ee7ad4: e3 03 00 54           b.lo     #0xee7b50
0x00ee7ad8: 1f 11 00 71           cmp      w8, #4
0x00ee7adc: 28 04 00 54           b.hi     #0xee7b60
0x00ee7ae0: 68 46 40 f9           ldr      x8, [x19, #0x88]
0x00ee7ae4: 28 08 00 b4           cbz      x8, #0xee7be8
0x00ee7ae8: 0a 09 40 f9           ldr      x10, [x8, #0x10]
0x00ee7aec: 8c 0a 00 12           and      w12, w20, #7
0x00ee7af0: 0d 49 2c 8b           add      x13, x8, w12, uxtw #2
0x00ee7af4: e9 03 1f aa           mov      x9, xzr
0x00ee7af8: 4b 01 40 b9           ldr      w11, [x10]
0x00ee7afc: ad 81 00 91           add      x13, x13, #0x20
0x00ee7b00: 2b 07 00 34           cbz      w11, #0xee7be4
0x00ee7b04: 4e 09 40 f9           ldr      x14, [x10, #0x10]
0x00ee7b08: 8f 01 09 8b           add      x15, x12, x9
0x00ee7b0c: ff 41 2e eb           cmp      x15, w14, uxtw
0x00ee7b10: a2 06 00 54           b.hs     #0xee7be4
0x00ee7b14: af 79 69 b8           ldr      w15, [x13, x9, lsl #2]
0x00ee7b18: 4f 01 00 35           cbnz     w15, #0xee7b40
0x00ee7b1c: 7f 05 00 71           cmp      w11, #1
0x00ee7b20: 29 06 00 54           b.ls     #0xee7be4
0x00ee7b24: 8f 01 09 8b           add      x15, x12, x9
0x00ee7b28: ee 01 0e 8b           add      x14, x15, x14
0x00ee7b2c: 0e 09 0e 8b           add      x14, x8, x14, lsl #2
0x00ee7b30: ce 21 40 b9           ldr      w14, [x14, #0x20]
0x00ee7b34: cf 2a 00 51           sub      w15, w22, #0xa
0x00ee7b38: df 1d 00 71           cmp      w14, #7
0x00ee7b3c: f6 01 96 1a           csel     w22, w15, w22, eq
0x00ee7b40: 29 05 00 91           add      x9, x9, #1
0x00ee7b44: 3f 0d 00 f1           cmp      x9, #3
0x00ee7b48: c1 fd ff 54           b.ne     #0xee7b00
0x00ee7b4c: 15 00 00 14           b        #0xee7ba0
0x00ee7b50: 74 00 80 52           mov      w20, #3
0x00ee7b54: 55 00 80 52           mov      w21, #2
0x00ee7b58: 21 00 80 52           mov      w1, #1
0x00ee7b5c: 04 00 00 14           b        #0xee7b6c
0x00ee7b60: d4 00 80 52           mov      w20, #6
0x00ee7b64: f5 00 80 52           mov      w21, #7
0x00ee7b68: 01 01 80 52           mov      w1, #8
0x00ee7b6c: e0 03 13 aa           mov      x0, x19
0x00ee7b70: 47 00 00 94           bl       #0xee7c8c
0x00ee7b74: 16 00 16 0b           add      w22, w0, w22
0x00ee7b78: e0 03 13 aa           mov      x0, x19
0x00ee7b7c: e1 03 15 2a           mov      w1, w21
0x00ee7b80: 43 00 00 94           bl       #0xee7c8c
0x00ee7b84: d5 02 00 0b           add      w21, w22, w0
0x00ee7b88: e0 03 13 aa           mov      x0, x19
0x00ee7b8c: e1 03 14 2a           mov      w1, w20
0x00ee7b90: 3f 00 00 94           bl       #0xee7c8c
0x00ee7b94: 1f 00 00 71           cmp      w0, #0
0x00ee7b98: 08 a4 80 1a           cinc     w8, w0, lt
0x00ee7b9c: b6 06 88 0b           add      w22, w21, w8, asr #1
0x00ee7ba0: 68 4a 40 f9           ldr      x8, [x19, #0x90]
0x00ee7ba4: 28 02 00 b4           cbz      x8, #0xee7be8
0x00ee7ba8: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ee7bac: c9 01 00 34           cbz      w9, #0xee7be4
0x00ee7bb0: 08 21 40 b9           ldr      w8, [x8, #0x20]
0x00ee7bb4: 69 52 81 52           mov      w9, #0xa93
0x00ee7bb8: 09 24 b5 72           movk     w9, #0xa920, lsl #16
0x00ee7bbc: f4 4f 42 a9           ldp      x20, x19, [sp, #0x20]
0x00ee7bc0: 08 7d 16 1b           mul      w8, w8, w22
0x00ee7bc4: 09 7d 29 9b           smull    x9, w8, w9
0x00ee7bc8: 29 fd 60 d3           lsr      x9, x9, #0x20
0x00ee7bcc: f6 57 41 a9           ldp      x22, x21, [sp, #0x10]
0x00ee7bd0: 28 01 08 0b           add      w8, w9, w8
0x00ee7bd4: 09 7d 0b 13           asr      w9, w8, #0xb
0x00ee7bd8: 20 7d 48 0b           add      w0, w9, w8, lsr #31
0x00ee7bdc: fe 07 43 f8           ldr      x30, [sp], #0x30
0x00ee7be0: c0 03 5f d6           ret      
