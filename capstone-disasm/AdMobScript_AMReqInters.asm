// Function: AdMobScript_AMReqInters
// RVA: 0xec9c54
// Description: Request interstitial (PATCHED→RET)
// Size: 168 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ec9c54: fe 0f 1e f8           str      x30, [sp, #-0x20]!
0x00ec9c58: f4 4f 01 a9           stp      x20, x19, [sp, #0x10]
0x00ec9c5c: 74 9e 00 90           adrp     x20, #0x2295000
0x00ec9c60: 93 92 00 b0           adrp     x19, #0x211a000
0x00ec9c64: 88 56 56 39           ldrb     w8, [x20, #0x595]
0x00ec9c68: 73 36 40 f9           ldr      x19, [x19, #0x68]
0x00ec9c6c: c8 00 00 37           tbnz     w8, #0, #0xec9c84
0x00ec9c70: 80 92 00 b0           adrp     x0, #0x211a000
0x00ec9c74: 00 34 40 f9           ldr      x0, [x0, #0x68]
0x00ec9c78: a3 4f fd 97           bl       #0xe1db04
0x00ec9c7c: 28 00 80 52           mov      w8, #1
0x00ec9c80: 88 56 16 39           strb     w8, [x20, #0x595]
0x00ec9c84: 60 02 40 f9           ldr      x0, [x19]
0x00ec9c88: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ec9c8c: 68 00 00 35           cbnz     w8, #0xec9c98
0x00ec9c90: df 4f fd 97           bl       #0xe1dc0c
0x00ec9c94: 60 02 40 f9           ldr      x0, [x19]
0x00ec9c98: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec9c9c: 08 b1 40 39           ldrb     w8, [x8, #0x2c]
0x00ec9ca0: 88 00 00 34           cbz      w8, #0xec9cb0
0x00ec9ca4: f4 4f 41 a9           ldp      x20, x19, [sp, #0x10]
0x00ec9ca8: fe 07 42 f8           ldr      x30, [sp], #0x20
0x00ec9cac: c0 03 5f d6           ret      
