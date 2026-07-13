// Function: ChessEngine_UnmakeMove
// RVA: 0xee6a98
// Description: Unmake move
// Size: 544 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee6a98: fe 0f 1f f8           str      x30, [sp, #-0x10]!
0x00ee6a9c: 00 10 40 fd           ldr      d0, [x0, #0x20]
0x00ee6aa0: 08 34 40 b9           ldr      w8, [x0, #0x34]
0x00ee6aa4: 0e 24 40 f9           ldr      x14, [x0, #0x48]
0x00ee6aa8: 21 04 00 0f           movi     v1.2s, #1
0x00ee6aac: 00 1c 21 2e           eor      v0.8b, v0.8b, v1.8b
0x00ee6ab0: 08 05 00 51           sub      w8, w8, #1
0x00ee6ab4: 00 10 00 fd           str      d0, [x0, #0x20]
0x00ee6ab8: 08 34 00 b9           str      w8, [x0, #0x34]
0x00ee6abc: ce 0f 00 b4           cbz      x14, #0xee6cb4
0x00ee6ac0: cf 19 40 b9           ldr      w15, [x14, #0x18]
0x00ee6ac4: 1f 01 0f 6b           cmp      w8, w15
0x00ee6ac8: 42 0f 00 54           b.hs     #0xee6cb0
0x00ee6acc: 89 02 80 52           mov      w9, #0x14
0x00ee6ad0: 09 39 29 9b           smaddl   x9, w8, w9, x14
0x00ee6ad4: 21 15 40 fd           ldr      d1, [x9, #0x28]
0x00ee6ad8: 30 81 40 39           ldrb     w16, [x9, #0x20]
0x00ee6adc: 28 85 40 39           ldrb     w8, [x9, #0x21]
0x00ee6ae0: 2c 8d 40 39           ldrb     w12, [x9, #0x23]
0x00ee6ae4: 01 14 00 fd           str      d1, [x0, #0x28]
0x00ee6ae8: 2a 31 40 b9           ldr      w10, [x9, #0x30]
0x00ee6aec: 09 08 40 f9           ldr      x9, [x0, #0x10]
0x00ee6af0: 0a 30 00 b9           str      w10, [x0, #0x30]
0x00ee6af4: 09 0e 00 b4           cbz      x9, #0xee6cb4
0x00ee6af8: 2b 19 40 b9           ldr      w11, [x9, #0x18]
0x00ee6afc: 1f 02 0b 6b           cmp      w16, w11
0x00ee6b00: 82 0d 00 54           b.hs     #0xee6cb0
0x00ee6b04: 2a 49 30 8b           add      x10, x9, w16, uxtw #2
0x00ee6b08: 40 21 00 bd           str      s0, [x10, #0x20]
0x00ee6b0c: 0a 0c 40 f9           ldr      x10, [x0, #0x18]
0x00ee6b10: 0c 01 28 37           tbnz     w12, #5, #0xee6b30
0x00ee6b14: 0a 0d 00 b4           cbz      x10, #0xee6cb4
0x00ee6b18: 4d 19 40 b9           ldr      w13, [x10, #0x18]
0x00ee6b1c: 1f 01 0d 6b           cmp      w8, w13
0x00ee6b20: 82 0c 00 54           b.hs     #0xee6cb0
0x00ee6b24: 4d 09 08 8b           add      x13, x10, x8, lsl #2
0x00ee6b28: b1 21 40 b9           ldr      w17, [x13, #0x20]
0x00ee6b2c: 03 00 00 14           b        #0xee6b38
0x00ee6b30: 2a 0c 00 b4           cbz      x10, #0xee6cb4
0x00ee6b34: f1 03 1f 2a           mov      w17, wzr
0x00ee6b38: 4d 19 40 b9           ldr      w13, [x10, #0x18]
0x00ee6b3c: 1f 02 0d 6b           cmp      w16, w13
0x00ee6b40: 82 0b 00 54           b.hs     #0xee6cb0
0x00ee6b44: f0 03 10 2a           mov      w16, w16
0x00ee6b48: 50 09 10 8b           add      x16, x10, x16, lsl #2
0x00ee6b4c: 11 22 00 b9           str      w17, [x16, #0x20]
0x00ee6b50: 10 34 80 b9           ldrsw    x16, [x0, #0x34]
0x00ee6b54: 1f 02 0f 6b           cmp      w16, w15
0x00ee6b58: c2 0a 00 54           b.hs     #0xee6cb0
0x00ee6b5c: 91 02 80 52           mov      w17, #0x14
0x00ee6b60: 10 3a 11 9b           madd     x16, x16, x17, x14
0x00ee6b64: 10 26 40 b9           ldr      w16, [x16, #0x24]
0x00ee6b68: 1f 1a 00 71           cmp      w16, #6
0x00ee6b6c: 40 00 00 54           b.eq     #0xee6b74
0x00ee6b70: 10 24 40 b9           ldr      w16, [x0, #0x24]
0x00ee6b74: 1f 01 0b 6b           cmp      w8, w11
0x00ee6b78: c2 09 00 54           b.hs     #0xee6cb0
0x00ee6b7c: 31 09 08 8b           add      x17, x9, x8, lsl #2
0x00ee6b80: 30 22 00 b9           str      w16, [x17, #0x20]
0x00ee6b84: 10 34 80 b9           ldrsw    x16, [x0, #0x34]
0x00ee6b88: 1f 02 0f 6b           cmp      w16, w15
0x00ee6b8c: 22 09 00 54           b.hs     #0xee6cb0
0x00ee6b90: 1f 01 0d 6b           cmp      w8, w13
0x00ee6b94: e2 08 00 54           b.hs     #0xee6cb0
0x00ee6b98: 8f 02 80 52           mov      w15, #0x14
0x00ee6b9c: 0e 3a 0f 9b           madd     x14, x16, x15, x14
0x00ee6ba0: ce 25 40 b9           ldr      w14, [x14, #0x24]
0x00ee6ba4: 4f 09 08 8b           add      x15, x10, x8, lsl #2
0x00ee6ba8: ee 21 00 b9           str      w14, [x15, #0x20]
0x00ee6bac: 8c 05 08 36           tbz      w12, #1, #0xee6c5c
0x00ee6bb0: 1f 19 00 71           cmp      w8, #6
0x00ee6bb4: 08 01 00 54           b.hi     #0xee6bd4
0x00ee6bb8: 1f 09 00 71           cmp      w8, #2
0x00ee6bbc: 00 02 00 54           b.eq     #0xee6bfc
0x00ee6bc0: 1f 19 00 71           cmp      w8, #6
0x00ee6bc4: 61 01 00 54           b.ne     #0xee6bf0
0x00ee6bc8: ae 00 80 52           mov      w14, #5
0x00ee6bcc: ef 00 80 52           mov      w15, #7
0x00ee6bd0: 10 00 00 14           b        #0xee6c10
0x00ee6bd4: 1f e9 00 71           cmp      w8, #0x3a
0x00ee6bd8: 80 01 00 54           b.eq     #0xee6c08
0x00ee6bdc: 1f f9 00 71           cmp      w8, #0x3e
0x00ee6be0: 81 00 00 54           b.ne     #0xee6bf0
0x00ee6be4: ae 07 80 52           mov      w14, #0x3d
0x00ee6be8: ef 07 80 52           mov      w15, #0x3f
0x00ee6bec: 09 00 00 14           b        #0xee6c10
0x00ee6bf0: 0f 00 80 92           mov      x15, #-1
0x00ee6bf4: 0e 00 80 92           mov      x14, #-1
0x00ee6bf8: 06 00 00 14           b        #0xee6c10
0x00ee6bfc: ef 03 1f aa           mov      x15, xzr
0x00ee6c00: 6e 00 80 52           mov      w14, #3
0x00ee6c04: 03 00 00 14           b        #0xee6c10
0x00ee6c08: 6e 07 80 52           mov      w14, #0x3b
0x00ee6c0c: 0f 07 80 52           mov      w15, #0x38
0x00ee6c10: ff 01 0b 6b           cmp      w15, w11
0x00ee6c14: e2 04 00 54           b.hs     #0xee6cb0
0x00ee6c18: 10 20 40 b9           ldr      w16, [x0, #0x20]
0x00ee6c1c: 31 09 0f 8b           add      x17, x9, x15, lsl #2
0x00ee6c20: ff 01 0d 6b           cmp      w15, w13
0x00ee6c24: 30 22 00 b9           str      w16, [x17, #0x20]
0x00ee6c28: 42 04 00 54           b.hs     #0xee6cb0
0x00ee6c2c: 4f 09 0f 8b           add      x15, x10, x15, lsl #2
0x00ee6c30: 70 00 80 52           mov      w16, #3
0x00ee6c34: df 01 0b 6b           cmp      w14, w11
0x00ee6c38: f0 21 00 b9           str      w16, [x15, #0x20]
0x00ee6c3c: a2 03 00 54           b.hs     #0xee6cb0
0x00ee6c40: 30 09 0e 8b           add      x16, x9, x14, lsl #2
0x00ee6c44: cf 00 80 52           mov      w15, #6
0x00ee6c48: df 01 0d 6b           cmp      w14, w13
0x00ee6c4c: 0f 22 00 b9           str      w15, [x16, #0x20]
0x00ee6c50: 02 03 00 54           b.hs     #0xee6cb0
0x00ee6c54: 4e 09 0e 8b           add      x14, x10, x14, lsl #2
0x00ee6c58: cf 21 00 b9           str      w15, [x14, #0x20]
0x00ee6c5c: 6c 02 10 36           tbz      w12, #2, #0xee6ca8
0x00ee6c60: 0c 20 40 b9           ldr      w12, [x0, #0x20]
0x00ee6c64: 9f 01 00 71           cmp      w12, #0
0x00ee6c68: 0c 01 80 52           mov      w12, #8
0x00ee6c6c: 8e 05 8c 5a           cneg     w14, w12, ne
0x00ee6c70: ce 01 08 0b           add      w14, w14, w8
0x00ee6c74: df 01 0b 6b           cmp      w14, w11
0x00ee6c78: c2 01 00 54           b.hs     #0xee6cb0
0x00ee6c7c: 0b 24 40 b9           ldr      w11, [x0, #0x24]
0x00ee6c80: 29 c9 2e 8b           add      x9, x9, w14, sxtw #2
0x00ee6c84: 2b 21 00 b9           str      w11, [x9, #0x20]
0x00ee6c88: 09 20 40 b9           ldr      w9, [x0, #0x20]
0x00ee6c8c: 3f 01 00 71           cmp      w9, #0
0x00ee6c90: 89 05 8c 5a           cneg     w9, w12, ne
0x00ee6c94: 28 01 08 0b           add      w8, w9, w8
0x00ee6c98: 1f 01 0d 6b           cmp      w8, w13
0x00ee6c9c: a2 00 00 54           b.hs     #0xee6cb0
0x00ee6ca0: 48 c9 28 8b           add      x8, x10, w8, sxtw #2
0x00ee6ca4: 1f 21 00 b9           str      wzr, [x8, #0x20]
0x00ee6ca8: fe 07 41 f8           ldr      x30, [sp], #0x10
0x00ee6cac: c0 03 5f d6           ret      
