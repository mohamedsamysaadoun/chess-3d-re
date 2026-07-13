// Function: Move_ParseRegularCAN
// RVA: 0xee4cd4
// Description: Parse CAN notation
// Size: 256 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee4cd4: fe 57 be a9           stp      x30, x21, [sp, #-0x20]!
0x00ee4cd8: f4 4f 01 a9           stp      x20, x19, [sp, #0x10]
0x00ee4cdc: a0 00 00 b4           cbz      x0, #0xee4cf0
0x00ee4ce0: 08 10 40 b9           ldr      w8, [x0, #0x10]
0x00ee4ce4: f3 03 00 aa           mov      x19, x0
0x00ee4ce8: 1f 11 00 71           cmp      w8, #4
0x00ee4cec: 8a 00 00 54           b.ge     #0xee4cfc
0x00ee4cf0: f5 03 1f 2a           mov      w21, wzr
0x00ee4cf4: e8 03 1f 2a           mov      w8, wzr
0x00ee4cf8: 1b 00 00 14           b        #0xee4d64
0x00ee4cfc: 21 00 80 52           mov      w1, #1
0x00ee4d00: e0 03 13 aa           mov      x0, x19
0x00ee4d04: e2 03 1f aa           mov      x2, xzr
0x00ee4d08: 5f 02 21 94           bl       #0x1725684
0x00ee4d0c: f4 03 00 2a           mov      w20, w0
0x00ee4d10: e0 03 13 aa           mov      x0, x19
0x00ee4d14: e1 03 1f 2a           mov      w1, wzr
0x00ee4d18: e2 03 1f aa           mov      x2, xzr
0x00ee4d1c: 5a 02 21 94           bl       #0x1725684
0x00ee4d20: 08 3c 00 12           and      w8, w0, #0xffff
0x00ee4d24: 08 2d 34 4b           sub      w8, w8, w20, uxth #3
0x00ee4d28: 15 7d 05 11           add      w21, w8, #0x15f
0x00ee4d2c: 61 00 80 52           mov      w1, #3
0x00ee4d30: e0 03 13 aa           mov      x0, x19
0x00ee4d34: e2 03 1f aa           mov      x2, xzr
0x00ee4d38: 53 02 21 94           bl       #0x1725684
0x00ee4d3c: f4 03 00 2a           mov      w20, w0
0x00ee4d40: 41 00 80 52           mov      w1, #2
0x00ee4d44: e0 03 13 aa           mov      x0, x19
0x00ee4d48: e2 03 1f aa           mov      x2, xzr
0x00ee4d4c: 4e 02 21 94           bl       #0x1725684
0x00ee4d50: 09 e0 8b 52           mov      w9, #0x5f00
0x00ee4d54: 08 0c 14 4b           sub      w8, w0, w20, lsl #3
0x00ee4d58: 49 00 a0 72           movk     w9, #2, lsl #16
0x00ee4d5c: 28 21 08 0b           add      w8, w9, w8, lsl #8
0x00ee4d60: 08 1d 18 12           and      w8, w8, #0xff00
0x00ee4d64: f4 4f 41 a9           ldp      x20, x19, [sp, #0x10]
0x00ee4d68: a9 1e 00 12           and      w9, w21, #0xff
0x00ee4d6c: 00 01 09 2a           orr      w0, w8, w9
0x00ee4d70: fe 57 c2 a8           ldp      x30, x21, [sp], #0x20
0x00ee4d74: c0 03 5f d6           ret      
