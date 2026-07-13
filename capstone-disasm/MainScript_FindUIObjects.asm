// Function: MainScript_FindUIObjects
// RVA: 0xec2fa0
// Description: Find UI objects
// Size: 396 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ec2fa0: fe 0f 1d f8           str      x30, [sp, #-0x30]!
0x00ec2fa4: f6 57 01 a9           stp      x22, x21, [sp, #0x10]
0x00ec2fa8: f4 4f 02 a9           stp      x20, x19, [sp, #0x20]
0x00ec2fac: 94 9e 00 f0           adrp     x20, #0x2295000
0x00ec2fb0: d6 92 00 90           adrp     x22, #0x211a000
0x00ec2fb4: d5 92 00 90           adrp     x21, #0x211a000
0x00ec2fb8: 88 b2 55 39           ldrb     w8, [x20, #0x56c]
0x00ec2fbc: d6 f2 44 f9           ldr      x22, [x22, #0x9e0]
0x00ec2fc0: b5 36 40 f9           ldr      x21, [x21, #0x68]
0x00ec2fc4: f3 03 00 aa           mov      x19, x0
0x00ec2fc8: a8 02 00 37           tbnz     w8, #0, #0xec301c
0x00ec2fcc: c0 92 00 90           adrp     x0, #0x211a000
0x00ec2fd0: 00 34 40 f9           ldr      x0, [x0, #0x68]
0x00ec2fd4: cc 6a fd 97           bl       #0xe1db04
0x00ec2fd8: c0 92 00 90           adrp     x0, #0x211a000
0x00ec2fdc: 00 f4 44 f9           ldr      x0, [x0, #0x9e8]
0x00ec2fe0: c9 6a fd 97           bl       #0xe1db04
0x00ec2fe4: c0 92 00 90           adrp     x0, #0x211a000
0x00ec2fe8: 00 f0 44 f9           ldr      x0, [x0, #0x9e0]
0x00ec2fec: c6 6a fd 97           bl       #0xe1db04
0x00ec2ff0: c0 92 00 90           adrp     x0, #0x211a000
0x00ec2ff4: 00 f8 44 f9           ldr      x0, [x0, #0x9f0]
0x00ec2ff8: c3 6a fd 97           bl       #0xe1db04
0x00ec2ffc: c0 92 00 90           adrp     x0, #0x211a000
0x00ec3000: 00 fc 44 f9           ldr      x0, [x0, #0x9f8]
0x00ec3004: c0 6a fd 97           bl       #0xe1db04
0x00ec3008: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec300c: 00 50 40 f9           ldr      x0, [x0, #0xa0]
0x00ec3010: bd 6a fd 97           bl       #0xe1db04
0x00ec3014: 28 00 80 52           mov      w8, #1
0x00ec3018: 88 b2 15 39           strb     w8, [x20, #0x56c]
0x00ec301c: c0 02 40 f9           ldr      x0, [x22]
0x00ec3020: e1 03 1f aa           mov      x1, xzr
0x00ec3024: 14 14 3c 94           bl       #0x1dc8074
0x00ec3028: a8 02 40 f9           ldr      x8, [x21]
0x00ec302c: f4 03 00 aa           mov      x20, x0
0x00ec3030: 09 e1 40 b9           ldr      w9, [x8, #0xe0]
0x00ec3034: 69 00 00 35           cbnz     w9, #0xec3040
0x00ec3038: e0 03 08 aa           mov      x0, x8
0x00ec303c: f4 6a fd 97           bl       #0xe1dc0c
0x00ec3040: 34 07 00 b4           cbz      x20, #0xec3124
0x00ec3044: a8 02 40 f9           ldr      x8, [x21]
0x00ec3048: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec304c: e0 03 14 aa           mov      x0, x20
0x00ec3050: e2 03 1f aa           mov      x2, xzr
0x00ec3054: 08 5d 40 f9           ldr      x8, [x8, #0xb8]
0x00ec3058: 08 01 40 b9           ldr      w8, [x8]
0x00ec305c: b5 fe 44 f9           ldr      x21, [x21, #0x9f8]
0x00ec3060: 1f 09 00 71           cmp      w8, #2
0x00ec3064: e1 d7 9f 1a           cset     w1, gt
0x00ec3068: 23 13 3c 94           bl       #0x1dc7cf4
0x00ec306c: a0 02 40 f9           ldr      x0, [x21]
0x00ec3070: e1 03 1f aa           mov      x1, xzr
0x00ec3074: 00 14 3c 94           bl       #0x1dc8074
0x00ec3078: 60 05 00 b4           cbz      x0, #0xec3124
0x00ec307c: b4 92 00 f0           adrp     x20, #0x211a000
0x00ec3080: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3084: 94 fa 44 f9           ldr      x20, [x20, #0x9f0]
0x00ec3088: b5 f6 44 f9           ldr      x21, [x21, #0x9e8]
0x00ec308c: e1 03 1f 2a           mov      w1, wzr
0x00ec3090: e2 03 1f aa           mov      x2, xzr
0x00ec3094: 18 13 3c 94           bl       #0x1dc7cf4
0x00ec3098: 80 02 40 f9           ldr      x0, [x20]
0x00ec309c: e1 03 1f aa           mov      x1, xzr
0x00ec30a0: f5 13 3c 94           bl       #0x1dc8074
0x00ec30a4: 60 fa 02 f9           str      x0, [x19, #0x5f0]
0x00ec30a8: e0 03 13 aa           mov      x0, x19
0x00ec30ac: 26 c3 ff 97           bl       #0xeb3d44
0x00ec30b0: a0 02 40 f9           ldr      x0, [x21]
0x00ec30b4: e1 03 1f aa           mov      x1, xzr
0x00ec30b8: ef 13 3c 94           bl       #0x1dc8074
0x00ec30bc: 68 b2 40 f9           ldr      x8, [x19, #0x160]
0x00ec30c0: 60 fe 02 f9           str      x0, [x19, #0x5f8]
0x00ec30c4: 08 03 00 b4           cbz      x8, #0xec3124
0x00ec30c8: 08 0d 40 f9           ldr      x8, [x8, #0x18]
0x00ec30cc: c8 02 00 b4           cbz      x8, #0xec3124
0x00ec30d0: 09 19 40 b9           ldr      w9, [x8, #0x18]
0x00ec30d4: a9 02 00 34           cbz      w9, #0xec3128
0x00ec30d8: a9 92 00 f0           adrp     x9, #0x211a000
0x00ec30dc: 29 51 40 f9           ldr      x9, [x9, #0xa0]
0x00ec30e0: 00 11 40 f9           ldr      x0, [x8, #0x20]
0x00ec30e4: e2 03 1f aa           mov      x2, xzr
0x00ec30e8: 21 01 40 f9           ldr      x1, [x9]
0x00ec30ec: 4f 9a 21 94           bl       #0x1729a28
0x00ec30f0: 20 01 00 36           tbz      w0, #0, #0xec3114
0x00ec30f4: 60 fe 42 f9           ldr      x0, [x19, #0x5f8]
0x00ec30f8: 60 01 00 b4           cbz      x0, #0xec3124
0x00ec30fc: f4 4f 42 a9           ldp      x20, x19, [sp, #0x20]
0x00ec3100: f6 57 41 a9           ldp      x22, x21, [sp, #0x10]
0x00ec3104: e1 03 1f 2a           mov      w1, wzr
0x00ec3108: e2 03 1f aa           mov      x2, xzr
0x00ec310c: fe 07 43 f8           ldr      x30, [sp], #0x30
0x00ec3110: f9 12 3c 14           b        #0x1dc7cf4
0x00ec3114: f4 4f 42 a9           ldp      x20, x19, [sp, #0x20]
0x00ec3118: f6 57 41 a9           ldp      x22, x21, [sp, #0x10]
0x00ec311c: fe 07 43 f8           ldr      x30, [sp], #0x30
0x00ec3120: c0 03 5f d6           ret      
