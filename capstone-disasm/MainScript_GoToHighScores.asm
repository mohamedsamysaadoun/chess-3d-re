// Function: MainScript_GoToHighScores
// RVA: 0xec2f20
// Description: Navigate to high scores
// Size: 128 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ec2f20: fe 0f 1e f8           str      x30, [sp, #-0x20]!
0x00ec2f24: f4 4f 01 a9           stp      x20, x19, [sp, #0x10]
0x00ec2f28: e1 00 80 52           mov      w1, #7
0x00ec2f2c: f3 03 00 aa           mov      x19, x0
0x00ec2f30: 19 c6 ff 97           bl       #0xeb4794
0x00ec2f34: 53 03 00 b4           cbz      x19, #0xec2f9c
0x00ec2f38: 08 f0 a7 52           mov      w8, #0x3f800000
0x00ec2f3c: 68 da 05 b9           str      w8, [x19, #0x5d8]
0x00ec2f40: 94 9e 00 f0           adrp     x20, #0x2295000
0x00ec2f44: 88 a6 56 39           ldrb     w8, [x20, #0x5a9]
0x00ec2f48: c8 00 00 35           cbnz     w8, #0xec2f60
0x00ec2f4c: c0 92 00 90           adrp     x0, #0x211a000
0x00ec2f50: 00 d4 43 f9           ldr      x0, [x0, #0x7a8]
0x00ec2f54: ec 6a fd 97           bl       #0xe1db04
0x00ec2f58: 28 00 80 52           mov      w8, #1
0x00ec2f5c: 88 a6 16 39           strb     w8, [x20, #0x5a9]
0x00ec2f60: c8 92 00 90           adrp     x8, #0x211a000
0x00ec2f64: 08 d5 43 f9           ldr      x8, [x8, #0x7a8]
0x00ec2f68: 08 01 40 f9           ldr      x8, [x8]
0x00ec2f6c: 08 5d 40 f9           ldr      x8, [x8, #0xb8]
0x00ec2f70: 00 01 40 f9           ldr      x0, [x8]
0x00ec2f74: 40 01 00 b4           cbz      x0, #0xec2f9c
0x00ec2f78: e1 03 1f aa           mov      x1, xzr
0x00ec2f7c: 24 67 00 94           bl       #0xedcc0c
0x00ec2f80: 60 fe 42 f9           ldr      x0, [x19, #0x5f8]
0x00ec2f84: c0 00 00 b4           cbz      x0, #0xec2f9c
0x00ec2f88: f4 4f 41 a9           ldp      x20, x19, [sp, #0x10]
0x00ec2f8c: e1 03 1f 2a           mov      w1, wzr
0x00ec2f90: e2 03 1f aa           mov      x2, xzr
0x00ec2f94: fe 07 42 f8           ldr      x30, [sp], #0x20
0x00ec2f98: 57 13 3c 14           b        #0x1dc7cf4
0x00ec2f9c: 62 6b fd 97           bl       #0xe1dd24
