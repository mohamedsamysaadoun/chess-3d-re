// Function: MainScript_SetupUIFunctions
// RVA: 0xec312c
// Description: Setup UI functions
// Size: 3472 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ec312c: fe 67 bc a9           stp      x30, x25, [sp, #-0x40]!
0x00ec3130: f8 5f 01 a9           stp      x24, x23, [sp, #0x10]
0x00ec3134: f6 57 02 a9           stp      x22, x21, [sp, #0x20]
0x00ec3138: f4 4f 03 a9           stp      x20, x19, [sp, #0x30]
0x00ec313c: 94 9e 00 d0           adrp     x20, #0x2295000
0x00ec3140: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3144: 88 b6 55 39           ldrb     w8, [x20, #0x56d]
0x00ec3148: b5 fa 44 f9           ldr      x21, [x21, #0x9f0]
0x00ec314c: f3 03 00 aa           mov      x19, x0
0x00ec3150: 88 13 00 37           tbnz     w8, #0, #0xec33c0
0x00ec3154: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3158: 00 00 41 f9           ldr      x0, [x0, #0x200]
0x00ec315c: 6a 6a fd 97           bl       #0xe1db04
0x00ec3160: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3164: 00 04 41 f9           ldr      x0, [x0, #0x208]
0x00ec3168: 67 6a fd 97           bl       #0xe1db04
0x00ec316c: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3170: 00 00 45 f9           ldr      x0, [x0, #0xa00]
0x00ec3174: 64 6a fd 97           bl       #0xe1db04
0x00ec3178: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec317c: 00 04 45 f9           ldr      x0, [x0, #0xa08]
0x00ec3180: 61 6a fd 97           bl       #0xe1db04
0x00ec3184: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3188: 00 08 45 f9           ldr      x0, [x0, #0xa10]
0x00ec318c: 5e 6a fd 97           bl       #0xe1db04
0x00ec3190: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3194: 00 0c 45 f9           ldr      x0, [x0, #0xa18]
0x00ec3198: 5b 6a fd 97           bl       #0xe1db04
0x00ec319c: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec31a0: 00 10 45 f9           ldr      x0, [x0, #0xa20]
0x00ec31a4: 58 6a fd 97           bl       #0xe1db04
0x00ec31a8: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec31ac: 00 14 45 f9           ldr      x0, [x0, #0xa28]
0x00ec31b0: 55 6a fd 97           bl       #0xe1db04
0x00ec31b4: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec31b8: 00 18 45 f9           ldr      x0, [x0, #0xa30]
0x00ec31bc: 52 6a fd 97           bl       #0xe1db04
0x00ec31c0: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec31c4: 00 1c 45 f9           ldr      x0, [x0, #0xa38]
0x00ec31c8: 4f 6a fd 97           bl       #0xe1db04
0x00ec31cc: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec31d0: 00 20 45 f9           ldr      x0, [x0, #0xa40]
0x00ec31d4: 4c 6a fd 97           bl       #0xe1db04
0x00ec31d8: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec31dc: 00 24 45 f9           ldr      x0, [x0, #0xa48]
0x00ec31e0: 49 6a fd 97           bl       #0xe1db04
0x00ec31e4: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec31e8: 00 28 45 f9           ldr      x0, [x0, #0xa50]
0x00ec31ec: 46 6a fd 97           bl       #0xe1db04
0x00ec31f0: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec31f4: 00 2c 45 f9           ldr      x0, [x0, #0xa58]
0x00ec31f8: 43 6a fd 97           bl       #0xe1db04
0x00ec31fc: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3200: 00 30 45 f9           ldr      x0, [x0, #0xa60]
0x00ec3204: 40 6a fd 97           bl       #0xe1db04
0x00ec3208: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec320c: 00 34 45 f9           ldr      x0, [x0, #0xa68]
0x00ec3210: 3d 6a fd 97           bl       #0xe1db04
0x00ec3214: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3218: 00 38 45 f9           ldr      x0, [x0, #0xa70]
0x00ec321c: 3a 6a fd 97           bl       #0xe1db04
0x00ec3220: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3224: 00 3c 45 f9           ldr      x0, [x0, #0xa78]
0x00ec3228: 37 6a fd 97           bl       #0xe1db04
0x00ec322c: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3230: 00 40 45 f9           ldr      x0, [x0, #0xa80]
0x00ec3234: 34 6a fd 97           bl       #0xe1db04
0x00ec3238: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec323c: 00 44 45 f9           ldr      x0, [x0, #0xa88]
0x00ec3240: 31 6a fd 97           bl       #0xe1db04
0x00ec3244: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3248: 00 48 45 f9           ldr      x0, [x0, #0xa90]
0x00ec324c: 2e 6a fd 97           bl       #0xe1db04
0x00ec3250: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3254: 00 4c 45 f9           ldr      x0, [x0, #0xa98]
0x00ec3258: 2b 6a fd 97           bl       #0xe1db04
0x00ec325c: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3260: 00 50 45 f9           ldr      x0, [x0, #0xaa0]
0x00ec3264: 28 6a fd 97           bl       #0xe1db04
0x00ec3268: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec326c: 00 54 45 f9           ldr      x0, [x0, #0xaa8]
0x00ec3270: 25 6a fd 97           bl       #0xe1db04
0x00ec3274: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3278: 00 58 45 f9           ldr      x0, [x0, #0xab0]
0x00ec327c: 22 6a fd 97           bl       #0xe1db04
0x00ec3280: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3284: 00 5c 45 f9           ldr      x0, [x0, #0xab8]
0x00ec3288: 1f 6a fd 97           bl       #0xe1db04
0x00ec328c: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3290: 00 18 41 f9           ldr      x0, [x0, #0x230]
0x00ec3294: 1c 6a fd 97           bl       #0xe1db04
0x00ec3298: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec329c: 00 60 45 f9           ldr      x0, [x0, #0xac0]
0x00ec32a0: 19 6a fd 97           bl       #0xe1db04
0x00ec32a4: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec32a8: 00 64 45 f9           ldr      x0, [x0, #0xac8]
0x00ec32ac: 16 6a fd 97           bl       #0xe1db04
0x00ec32b0: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec32b4: 00 68 45 f9           ldr      x0, [x0, #0xad0]
0x00ec32b8: 13 6a fd 97           bl       #0xe1db04
0x00ec32bc: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec32c0: 00 6c 45 f9           ldr      x0, [x0, #0xad8]
0x00ec32c4: 10 6a fd 97           bl       #0xe1db04
0x00ec32c8: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec32cc: 00 70 45 f9           ldr      x0, [x0, #0xae0]
0x00ec32d0: 0d 6a fd 97           bl       #0xe1db04
0x00ec32d4: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec32d8: 00 74 45 f9           ldr      x0, [x0, #0xae8]
0x00ec32dc: 0a 6a fd 97           bl       #0xe1db04
0x00ec32e0: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec32e4: 00 78 45 f9           ldr      x0, [x0, #0xaf0]
0x00ec32e8: 07 6a fd 97           bl       #0xe1db04
0x00ec32ec: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec32f0: 00 7c 45 f9           ldr      x0, [x0, #0xaf8]
0x00ec32f4: 04 6a fd 97           bl       #0xe1db04
0x00ec32f8: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec32fc: 00 80 45 f9           ldr      x0, [x0, #0xb00]
0x00ec3300: 01 6a fd 97           bl       #0xe1db04
0x00ec3304: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3308: 00 84 45 f9           ldr      x0, [x0, #0xb08]
0x00ec330c: fe 69 fd 97           bl       #0xe1db04
0x00ec3310: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3314: 00 88 45 f9           ldr      x0, [x0, #0xb10]
0x00ec3318: fb 69 fd 97           bl       #0xe1db04
0x00ec331c: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3320: 00 f0 44 f9           ldr      x0, [x0, #0x9e0]
0x00ec3324: f8 69 fd 97           bl       #0xe1db04
0x00ec3328: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec332c: 00 8c 45 f9           ldr      x0, [x0, #0xb18]
0x00ec3330: f5 69 fd 97           bl       #0xe1db04
0x00ec3334: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3338: 00 90 45 f9           ldr      x0, [x0, #0xb20]
0x00ec333c: f2 69 fd 97           bl       #0xe1db04
0x00ec3340: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3344: 00 f8 44 f9           ldr      x0, [x0, #0x9f0]
0x00ec3348: ef 69 fd 97           bl       #0xe1db04
0x00ec334c: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3350: 00 fc 44 f9           ldr      x0, [x0, #0x9f8]
0x00ec3354: ec 69 fd 97           bl       #0xe1db04
0x00ec3358: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec335c: 00 94 45 f9           ldr      x0, [x0, #0xb28]
0x00ec3360: e9 69 fd 97           bl       #0xe1db04
0x00ec3364: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3368: 00 98 45 f9           ldr      x0, [x0, #0xb30]
0x00ec336c: e6 69 fd 97           bl       #0xe1db04
0x00ec3370: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3374: 00 9c 45 f9           ldr      x0, [x0, #0xb38]
0x00ec3378: e3 69 fd 97           bl       #0xe1db04
0x00ec337c: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3380: 00 a0 45 f9           ldr      x0, [x0, #0xb40]
0x00ec3384: e0 69 fd 97           bl       #0xe1db04
0x00ec3388: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec338c: 00 a4 45 f9           ldr      x0, [x0, #0xb48]
0x00ec3390: dd 69 fd 97           bl       #0xe1db04
0x00ec3394: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec3398: 00 a8 45 f9           ldr      x0, [x0, #0xb50]
0x00ec339c: da 69 fd 97           bl       #0xe1db04
0x00ec33a0: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec33a4: 00 ac 45 f9           ldr      x0, [x0, #0xb58]
0x00ec33a8: d7 69 fd 97           bl       #0xe1db04
0x00ec33ac: a0 92 00 f0           adrp     x0, #0x211a000
0x00ec33b0: 00 b0 45 f9           ldr      x0, [x0, #0xb60]
0x00ec33b4: d4 69 fd 97           bl       #0xe1db04
0x00ec33b8: 28 00 80 52           mov      w8, #1
0x00ec33bc: 88 b6 15 39           strb     w8, [x20, #0x56d]
0x00ec33c0: a0 02 40 f9           ldr      x0, [x21]
0x00ec33c4: e1 03 1f aa           mov      x1, xzr
0x00ec33c8: 2b 13 3c 94           bl       #0x1dc8074
0x00ec33cc: 60 57 00 b4           cbz      x0, #0xec3eb8
0x00ec33d0: b8 92 00 f0           adrp     x24, #0x211a000
0x00ec33d4: 18 03 41 f9           ldr      x24, [x24, #0x200]
0x00ec33d8: 01 03 40 f9           ldr      x1, [x24]
0x00ec33dc: 71 4f 02 94           bl       #0xf571a0
0x00ec33e0: c0 56 00 b4           cbz      x0, #0xec3eb8
0x00ec33e4: b7 92 00 f0           adrp     x23, #0x211a000
0x00ec33e8: f7 1a 41 f9           ldr      x23, [x23, #0x230]
0x00ec33ec: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec33f0: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec33f4: e0 02 40 f9           ldr      x0, [x23]
0x00ec33f8: b5 02 45 f9           ldr      x21, [x21, #0xa00]
0x00ec33fc: 49 6a fd 97           bl       #0xe1dd20
0x00ec3400: a2 02 40 f9           ldr      x2, [x21]
0x00ec3404: e1 03 13 aa           mov      x1, x19
0x00ec3408: e3 03 1f aa           mov      x3, xzr
0x00ec340c: f5 03 00 aa           mov      x21, x0
0x00ec3410: a9 40 3c 94           bl       #0x1dd36b4
0x00ec3414: 34 55 00 b4           cbz      x20, #0xec3eb8
0x00ec3418: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec341c: d6 62 45 f9           ldr      x22, [x22, #0xac0]
0x00ec3420: e0 03 14 aa           mov      x0, x20
0x00ec3424: e1 03 15 aa           mov      x1, x21
0x00ec3428: e2 03 1f aa           mov      x2, xzr
0x00ec342c: cb 40 3c 94           bl       #0x1dd3758
0x00ec3430: c0 02 40 f9           ldr      x0, [x22]
0x00ec3434: e1 03 1f aa           mov      x1, xzr
0x00ec3438: 0f 13 3c 94           bl       #0x1dc8074
0x00ec343c: e0 53 00 b4           cbz      x0, #0xec3eb8
0x00ec3440: 01 03 40 f9           ldr      x1, [x24]
0x00ec3444: 57 4f 02 94           bl       #0xf571a0
0x00ec3448: 80 53 00 b4           cbz      x0, #0xec3eb8
0x00ec344c: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec3450: e0 02 40 f9           ldr      x0, [x23]
0x00ec3454: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3458: b5 16 45 f9           ldr      x21, [x21, #0xa28]
0x00ec345c: 31 6a fd 97           bl       #0xe1dd20
0x00ec3460: a2 02 40 f9           ldr      x2, [x21]
0x00ec3464: e1 03 13 aa           mov      x1, x19
0x00ec3468: e3 03 1f aa           mov      x3, xzr
0x00ec346c: f5 03 00 aa           mov      x21, x0
0x00ec3470: 91 40 3c 94           bl       #0x1dd36b4
0x00ec3474: 34 52 00 b4           cbz      x20, #0xec3eb8
0x00ec3478: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec347c: d6 72 45 f9           ldr      x22, [x22, #0xae0]
0x00ec3480: e0 03 14 aa           mov      x0, x20
0x00ec3484: e1 03 15 aa           mov      x1, x21
0x00ec3488: e2 03 1f aa           mov      x2, xzr
0x00ec348c: b3 40 3c 94           bl       #0x1dd3758
0x00ec3490: c0 02 40 f9           ldr      x0, [x22]
0x00ec3494: e1 03 1f aa           mov      x1, xzr
0x00ec3498: f7 12 3c 94           bl       #0x1dc8074
0x00ec349c: e0 50 00 b4           cbz      x0, #0xec3eb8
0x00ec34a0: 01 03 40 f9           ldr      x1, [x24]
0x00ec34a4: 3f 4f 02 94           bl       #0xf571a0
0x00ec34a8: 80 50 00 b4           cbz      x0, #0xec3eb8
0x00ec34ac: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec34b0: e0 02 40 f9           ldr      x0, [x23]
0x00ec34b4: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec34b8: b5 26 45 f9           ldr      x21, [x21, #0xa48]
0x00ec34bc: 19 6a fd 97           bl       #0xe1dd20
0x00ec34c0: a2 02 40 f9           ldr      x2, [x21]
0x00ec34c4: e1 03 13 aa           mov      x1, x19
0x00ec34c8: e3 03 1f aa           mov      x3, xzr
0x00ec34cc: f5 03 00 aa           mov      x21, x0
0x00ec34d0: 79 40 3c 94           bl       #0x1dd36b4
0x00ec34d4: 34 4f 00 b4           cbz      x20, #0xec3eb8
0x00ec34d8: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec34dc: d6 92 45 f9           ldr      x22, [x22, #0xb20]
0x00ec34e0: e0 03 14 aa           mov      x0, x20
0x00ec34e4: e1 03 15 aa           mov      x1, x21
0x00ec34e8: e2 03 1f aa           mov      x2, xzr
0x00ec34ec: 9b 40 3c 94           bl       #0x1dd3758
0x00ec34f0: c0 02 40 f9           ldr      x0, [x22]
0x00ec34f4: e1 03 1f aa           mov      x1, xzr
0x00ec34f8: df 12 3c 94           bl       #0x1dc8074
0x00ec34fc: e0 4d 00 b4           cbz      x0, #0xec3eb8
0x00ec3500: 01 03 40 f9           ldr      x1, [x24]
0x00ec3504: 27 4f 02 94           bl       #0xf571a0
0x00ec3508: 80 4d 00 b4           cbz      x0, #0xec3eb8
0x00ec350c: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec3510: e0 02 40 f9           ldr      x0, [x23]
0x00ec3514: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3518: b5 2a 45 f9           ldr      x21, [x21, #0xa50]
0x00ec351c: 01 6a fd 97           bl       #0xe1dd20
0x00ec3520: a2 02 40 f9           ldr      x2, [x21]
0x00ec3524: e1 03 13 aa           mov      x1, x19
0x00ec3528: e3 03 1f aa           mov      x3, xzr
0x00ec352c: f5 03 00 aa           mov      x21, x0
0x00ec3530: 61 40 3c 94           bl       #0x1dd36b4
0x00ec3534: 34 4c 00 b4           cbz      x20, #0xec3eb8
0x00ec3538: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec353c: d6 96 45 f9           ldr      x22, [x22, #0xb28]
0x00ec3540: e0 03 14 aa           mov      x0, x20
0x00ec3544: e1 03 15 aa           mov      x1, x21
0x00ec3548: e2 03 1f aa           mov      x2, xzr
0x00ec354c: 83 40 3c 94           bl       #0x1dd3758
0x00ec3550: c0 02 40 f9           ldr      x0, [x22]
0x00ec3554: e1 03 1f aa           mov      x1, xzr
0x00ec3558: c7 12 3c 94           bl       #0x1dc8074
0x00ec355c: e0 4a 00 b4           cbz      x0, #0xec3eb8
0x00ec3560: 01 03 40 f9           ldr      x1, [x24]
0x00ec3564: 0f 4f 02 94           bl       #0xf571a0
0x00ec3568: 80 4a 00 b4           cbz      x0, #0xec3eb8
0x00ec356c: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec3570: e0 02 40 f9           ldr      x0, [x23]
0x00ec3574: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3578: b5 2e 45 f9           ldr      x21, [x21, #0xa58]
0x00ec357c: e9 69 fd 97           bl       #0xe1dd20
0x00ec3580: a2 02 40 f9           ldr      x2, [x21]
0x00ec3584: e1 03 13 aa           mov      x1, x19
0x00ec3588: e3 03 1f aa           mov      x3, xzr
0x00ec358c: f5 03 00 aa           mov      x21, x0
0x00ec3590: 49 40 3c 94           bl       #0x1dd36b4
0x00ec3594: 34 49 00 b4           cbz      x20, #0xec3eb8
0x00ec3598: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec359c: d6 8e 45 f9           ldr      x22, [x22, #0xb18]
0x00ec35a0: e0 03 14 aa           mov      x0, x20
0x00ec35a4: e1 03 15 aa           mov      x1, x21
0x00ec35a8: e2 03 1f aa           mov      x2, xzr
0x00ec35ac: 6b 40 3c 94           bl       #0x1dd3758
0x00ec35b0: c0 02 40 f9           ldr      x0, [x22]
0x00ec35b4: e1 03 1f aa           mov      x1, xzr
0x00ec35b8: af 12 3c 94           bl       #0x1dc8074
0x00ec35bc: e0 47 00 b4           cbz      x0, #0xec3eb8
0x00ec35c0: 01 03 40 f9           ldr      x1, [x24]
0x00ec35c4: f7 4e 02 94           bl       #0xf571a0
0x00ec35c8: 80 47 00 b4           cbz      x0, #0xec3eb8
0x00ec35cc: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec35d0: e0 02 40 f9           ldr      x0, [x23]
0x00ec35d4: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec35d8: b5 32 45 f9           ldr      x21, [x21, #0xa60]
0x00ec35dc: d1 69 fd 97           bl       #0xe1dd20
0x00ec35e0: a2 02 40 f9           ldr      x2, [x21]
0x00ec35e4: e1 03 13 aa           mov      x1, x19
0x00ec35e8: e3 03 1f aa           mov      x3, xzr
0x00ec35ec: f5 03 00 aa           mov      x21, x0
0x00ec35f0: 31 40 3c 94           bl       #0x1dd36b4
0x00ec35f4: 34 46 00 b4           cbz      x20, #0xec3eb8
0x00ec35f8: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec35fc: d6 f2 44 f9           ldr      x22, [x22, #0x9e0]
0x00ec3600: e0 03 14 aa           mov      x0, x20
0x00ec3604: e1 03 15 aa           mov      x1, x21
0x00ec3608: e2 03 1f aa           mov      x2, xzr
0x00ec360c: 53 40 3c 94           bl       #0x1dd3758
0x00ec3610: c0 02 40 f9           ldr      x0, [x22]
0x00ec3614: e1 03 1f aa           mov      x1, xzr
0x00ec3618: 97 12 3c 94           bl       #0x1dc8074
0x00ec361c: e0 44 00 b4           cbz      x0, #0xec3eb8
0x00ec3620: 01 03 40 f9           ldr      x1, [x24]
0x00ec3624: df 4e 02 94           bl       #0xf571a0
0x00ec3628: 80 44 00 b4           cbz      x0, #0xec3eb8
0x00ec362c: b9 92 00 f0           adrp     x25, #0x211a000
0x00ec3630: 39 5f 45 f9           ldr      x25, [x25, #0xab8]
0x00ec3634: e8 03 00 aa           mov      x8, x0
0x00ec3638: 14 81 40 f9           ldr      x20, [x8, #0x100]
0x00ec363c: 20 03 40 f9           ldr      x0, [x25]
0x00ec3640: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ec3644: 69 00 00 35           cbnz     w9, #0xec3650
0x00ec3648: 71 69 fd 97           bl       #0xe1dc0c
0x00ec364c: 20 03 40 f9           ldr      x0, [x25]
0x00ec3650: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3654: 15 05 40 f9           ldr      x21, [x8, #8]
0x00ec3658: 75 02 00 b5           cbnz     x21, #0xec36a4
0x00ec365c: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ec3660: 68 00 00 35           cbnz     w8, #0xec366c
0x00ec3664: 6a 69 fd 97           bl       #0xe1dc0c
0x00ec3668: 20 03 40 f9           ldr      x0, [x25]
0x00ec366c: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3670: e0 02 40 f9           ldr      x0, [x23]
0x00ec3674: 16 01 40 f9           ldr      x22, [x8]
0x00ec3678: aa 69 fd 97           bl       #0xe1dd20
0x00ec367c: a8 92 00 f0           adrp     x8, #0x211a000
0x00ec3680: 08 59 45 f9           ldr      x8, [x8, #0xab0]
0x00ec3684: e1 03 16 aa           mov      x1, x22
0x00ec3688: e3 03 1f aa           mov      x3, xzr
0x00ec368c: f5 03 00 aa           mov      x21, x0
0x00ec3690: 02 01 40 f9           ldr      x2, [x8]
0x00ec3694: 08 40 3c 94           bl       #0x1dd36b4
0x00ec3698: 28 03 40 f9           ldr      x8, [x25]
0x00ec369c: 08 5d 40 f9           ldr      x8, [x8, #0xb8]
0x00ec36a0: 15 05 00 f9           str      x21, [x8, #8]
0x00ec36a4: b4 40 00 b4           cbz      x20, #0xec3eb8
0x00ec36a8: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec36ac: d6 66 45 f9           ldr      x22, [x22, #0xac8]
0x00ec36b0: e0 03 14 aa           mov      x0, x20
0x00ec36b4: e1 03 15 aa           mov      x1, x21
0x00ec36b8: e2 03 1f aa           mov      x2, xzr
0x00ec36bc: 27 40 3c 94           bl       #0x1dd3758
0x00ec36c0: c0 02 40 f9           ldr      x0, [x22]
0x00ec36c4: e1 03 1f aa           mov      x1, xzr
0x00ec36c8: 6b 12 3c 94           bl       #0x1dc8074
0x00ec36cc: 60 3f 00 b4           cbz      x0, #0xec3eb8
0x00ec36d0: 01 03 40 f9           ldr      x1, [x24]
0x00ec36d4: b3 4e 02 94           bl       #0xf571a0
0x00ec36d8: 00 3f 00 b4           cbz      x0, #0xec3eb8
0x00ec36dc: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec36e0: e0 02 40 f9           ldr      x0, [x23]
0x00ec36e4: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec36e8: b5 36 45 f9           ldr      x21, [x21, #0xa68]
0x00ec36ec: 8d 69 fd 97           bl       #0xe1dd20
0x00ec36f0: a2 02 40 f9           ldr      x2, [x21]
0x00ec36f4: e1 03 13 aa           mov      x1, x19
0x00ec36f8: e3 03 1f aa           mov      x3, xzr
0x00ec36fc: f5 03 00 aa           mov      x21, x0
0x00ec3700: ed 3f 3c 94           bl       #0x1dd36b4
0x00ec3704: b4 3d 00 b4           cbz      x20, #0xec3eb8
0x00ec3708: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec370c: d6 82 45 f9           ldr      x22, [x22, #0xb00]
0x00ec3710: e0 03 14 aa           mov      x0, x20
0x00ec3714: e1 03 15 aa           mov      x1, x21
0x00ec3718: e2 03 1f aa           mov      x2, xzr
0x00ec371c: 0f 40 3c 94           bl       #0x1dd3758
0x00ec3720: c0 02 40 f9           ldr      x0, [x22]
0x00ec3724: e1 03 1f aa           mov      x1, xzr
0x00ec3728: 53 12 3c 94           bl       #0x1dc8074
0x00ec372c: 60 3c 00 b4           cbz      x0, #0xec3eb8
0x00ec3730: 01 03 40 f9           ldr      x1, [x24]
0x00ec3734: 9b 4e 02 94           bl       #0xf571a0
0x00ec3738: 00 3c 00 b4           cbz      x0, #0xec3eb8
0x00ec373c: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec3740: e0 02 40 f9           ldr      x0, [x23]
0x00ec3744: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3748: b5 3a 45 f9           ldr      x21, [x21, #0xa70]
0x00ec374c: 75 69 fd 97           bl       #0xe1dd20
0x00ec3750: a2 02 40 f9           ldr      x2, [x21]
0x00ec3754: e1 03 13 aa           mov      x1, x19
0x00ec3758: e3 03 1f aa           mov      x3, xzr
0x00ec375c: f5 03 00 aa           mov      x21, x0
0x00ec3760: d5 3f 3c 94           bl       #0x1dd36b4
0x00ec3764: b4 3a 00 b4           cbz      x20, #0xec3eb8
0x00ec3768: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec376c: d6 b2 45 f9           ldr      x22, [x22, #0xb60]
0x00ec3770: e0 03 14 aa           mov      x0, x20
0x00ec3774: e1 03 15 aa           mov      x1, x21
0x00ec3778: e2 03 1f aa           mov      x2, xzr
0x00ec377c: f7 3f 3c 94           bl       #0x1dd3758
0x00ec3780: c0 02 40 f9           ldr      x0, [x22]
0x00ec3784: e1 03 1f aa           mov      x1, xzr
0x00ec3788: 3b 12 3c 94           bl       #0x1dc8074
0x00ec378c: 60 39 00 b4           cbz      x0, #0xec3eb8
0x00ec3790: 01 03 40 f9           ldr      x1, [x24]
0x00ec3794: 83 4e 02 94           bl       #0xf571a0
0x00ec3798: 00 39 00 b4           cbz      x0, #0xec3eb8
0x00ec379c: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec37a0: e0 02 40 f9           ldr      x0, [x23]
0x00ec37a4: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec37a8: b5 3e 45 f9           ldr      x21, [x21, #0xa78]
0x00ec37ac: 5d 69 fd 97           bl       #0xe1dd20
0x00ec37b0: a2 02 40 f9           ldr      x2, [x21]
0x00ec37b4: e1 03 13 aa           mov      x1, x19
0x00ec37b8: e3 03 1f aa           mov      x3, xzr
0x00ec37bc: f5 03 00 aa           mov      x21, x0
0x00ec37c0: bd 3f 3c 94           bl       #0x1dd36b4
0x00ec37c4: b4 37 00 b4           cbz      x20, #0xec3eb8
0x00ec37c8: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec37cc: d6 fe 44 f9           ldr      x22, [x22, #0x9f8]
0x00ec37d0: e0 03 14 aa           mov      x0, x20
0x00ec37d4: e1 03 15 aa           mov      x1, x21
0x00ec37d8: e2 03 1f aa           mov      x2, xzr
0x00ec37dc: df 3f 3c 94           bl       #0x1dd3758
0x00ec37e0: c0 02 40 f9           ldr      x0, [x22]
0x00ec37e4: e1 03 1f aa           mov      x1, xzr
0x00ec37e8: 23 12 3c 94           bl       #0x1dc8074
0x00ec37ec: 60 36 00 b4           cbz      x0, #0xec3eb8
0x00ec37f0: 01 03 40 f9           ldr      x1, [x24]
0x00ec37f4: 6b 4e 02 94           bl       #0xf571a0
0x00ec37f8: 00 36 00 b4           cbz      x0, #0xec3eb8
0x00ec37fc: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec3800: e0 02 40 f9           ldr      x0, [x23]
0x00ec3804: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3808: b5 06 45 f9           ldr      x21, [x21, #0xa08]
0x00ec380c: 45 69 fd 97           bl       #0xe1dd20
0x00ec3810: a2 02 40 f9           ldr      x2, [x21]
0x00ec3814: e1 03 13 aa           mov      x1, x19
0x00ec3818: e3 03 1f aa           mov      x3, xzr
0x00ec381c: f5 03 00 aa           mov      x21, x0
0x00ec3820: a5 3f 3c 94           bl       #0x1dd36b4
0x00ec3824: b4 34 00 b4           cbz      x20, #0xec3eb8
0x00ec3828: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec382c: d6 a6 45 f9           ldr      x22, [x22, #0xb48]
0x00ec3830: e0 03 14 aa           mov      x0, x20
0x00ec3834: e1 03 15 aa           mov      x1, x21
0x00ec3838: e2 03 1f aa           mov      x2, xzr
0x00ec383c: c7 3f 3c 94           bl       #0x1dd3758
0x00ec3840: c0 02 40 f9           ldr      x0, [x22]
0x00ec3844: e1 03 1f aa           mov      x1, xzr
0x00ec3848: 0b 12 3c 94           bl       #0x1dc8074
0x00ec384c: 60 33 00 b4           cbz      x0, #0xec3eb8
0x00ec3850: 01 03 40 f9           ldr      x1, [x24]
0x00ec3854: 53 4e 02 94           bl       #0xf571a0
0x00ec3858: 00 33 00 b4           cbz      x0, #0xec3eb8
0x00ec385c: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec3860: e0 02 40 f9           ldr      x0, [x23]
0x00ec3864: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3868: b5 0a 45 f9           ldr      x21, [x21, #0xa10]
0x00ec386c: 2d 69 fd 97           bl       #0xe1dd20
0x00ec3870: a2 02 40 f9           ldr      x2, [x21]
0x00ec3874: e1 03 13 aa           mov      x1, x19
0x00ec3878: e3 03 1f aa           mov      x3, xzr
0x00ec387c: f5 03 00 aa           mov      x21, x0
0x00ec3880: 8d 3f 3c 94           bl       #0x1dd36b4
0x00ec3884: b4 31 00 b4           cbz      x20, #0xec3eb8
0x00ec3888: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec388c: d6 ae 45 f9           ldr      x22, [x22, #0xb58]
0x00ec3890: e0 03 14 aa           mov      x0, x20
0x00ec3894: e1 03 15 aa           mov      x1, x21
0x00ec3898: e2 03 1f aa           mov      x2, xzr
0x00ec389c: af 3f 3c 94           bl       #0x1dd3758
0x00ec38a0: c0 02 40 f9           ldr      x0, [x22]
0x00ec38a4: e1 03 1f aa           mov      x1, xzr
0x00ec38a8: f3 11 3c 94           bl       #0x1dc8074
0x00ec38ac: 60 30 00 b4           cbz      x0, #0xec3eb8
0x00ec38b0: 01 03 40 f9           ldr      x1, [x24]
0x00ec38b4: 3b 4e 02 94           bl       #0xf571a0
0x00ec38b8: 00 30 00 b4           cbz      x0, #0xec3eb8
0x00ec38bc: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec38c0: e0 02 40 f9           ldr      x0, [x23]
0x00ec38c4: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec38c8: b5 0e 45 f9           ldr      x21, [x21, #0xa18]
0x00ec38cc: 15 69 fd 97           bl       #0xe1dd20
0x00ec38d0: a2 02 40 f9           ldr      x2, [x21]
0x00ec38d4: e1 03 13 aa           mov      x1, x19
0x00ec38d8: e3 03 1f aa           mov      x3, xzr
0x00ec38dc: f5 03 00 aa           mov      x21, x0
0x00ec38e0: 75 3f 3c 94           bl       #0x1dd36b4
0x00ec38e4: b4 2e 00 b4           cbz      x20, #0xec3eb8
0x00ec38e8: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec38ec: d6 6a 45 f9           ldr      x22, [x22, #0xad0]
0x00ec38f0: e0 03 14 aa           mov      x0, x20
0x00ec38f4: e1 03 15 aa           mov      x1, x21
0x00ec38f8: e2 03 1f aa           mov      x2, xzr
0x00ec38fc: 97 3f 3c 94           bl       #0x1dd3758
0x00ec3900: c0 02 40 f9           ldr      x0, [x22]
0x00ec3904: e1 03 1f aa           mov      x1, xzr
0x00ec3908: db 11 3c 94           bl       #0x1dc8074
0x00ec390c: 60 2d 00 b4           cbz      x0, #0xec3eb8
0x00ec3910: 01 03 40 f9           ldr      x1, [x24]
0x00ec3914: 23 4e 02 94           bl       #0xf571a0
0x00ec3918: 00 2d 00 b4           cbz      x0, #0xec3eb8
0x00ec391c: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec3920: e0 02 40 f9           ldr      x0, [x23]
0x00ec3924: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3928: b5 12 45 f9           ldr      x21, [x21, #0xa20]
0x00ec392c: fd 68 fd 97           bl       #0xe1dd20
0x00ec3930: a2 02 40 f9           ldr      x2, [x21]
0x00ec3934: e1 03 13 aa           mov      x1, x19
0x00ec3938: e3 03 1f aa           mov      x3, xzr
0x00ec393c: f5 03 00 aa           mov      x21, x0
0x00ec3940: 5d 3f 3c 94           bl       #0x1dd36b4
0x00ec3944: b4 2b 00 b4           cbz      x20, #0xec3eb8
0x00ec3948: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec394c: d6 7a 45 f9           ldr      x22, [x22, #0xaf0]
0x00ec3950: e0 03 14 aa           mov      x0, x20
0x00ec3954: e1 03 15 aa           mov      x1, x21
0x00ec3958: e2 03 1f aa           mov      x2, xzr
0x00ec395c: 7f 3f 3c 94           bl       #0x1dd3758
0x00ec3960: c0 02 40 f9           ldr      x0, [x22]
0x00ec3964: e1 03 1f aa           mov      x1, xzr
0x00ec3968: c3 11 3c 94           bl       #0x1dc8074
0x00ec396c: 60 2a 00 b4           cbz      x0, #0xec3eb8
0x00ec3970: a8 92 00 f0           adrp     x8, #0x211a000
0x00ec3974: 08 05 41 f9           ldr      x8, [x8, #0x208]
0x00ec3978: 01 01 40 f9           ldr      x1, [x8]
0x00ec397c: 09 4e 02 94           bl       #0xf571a0
0x00ec3980: c0 29 00 b4           cbz      x0, #0xec3eb8
0x00ec3984: a9 92 00 f0           adrp     x9, #0x211a000
0x00ec3988: 08 00 40 f9           ldr      x8, [x0]
0x00ec398c: 29 89 45 f9           ldr      x9, [x9, #0xb10]
0x00ec3990: 02 f9 42 f9           ldr      x2, [x8, #0x5f0]
0x00ec3994: 21 01 40 f9           ldr      x1, [x9]
0x00ec3998: 09 f5 42 f9           ldr      x9, [x8, #0x5e8]
0x00ec399c: 20 01 3f d6           blr      x9
0x00ec39a0: c0 02 40 f9           ldr      x0, [x22]
0x00ec39a4: e1 03 1f aa           mov      x1, xzr
0x00ec39a8: b3 11 3c 94           bl       #0x1dc8074
0x00ec39ac: 60 28 00 b4           cbz      x0, #0xec3eb8
0x00ec39b0: 01 03 40 f9           ldr      x1, [x24]
0x00ec39b4: fb 4d 02 94           bl       #0xf571a0
0x00ec39b8: 00 28 00 b4           cbz      x0, #0xec3eb8
0x00ec39bc: e8 03 00 aa           mov      x8, x0
0x00ec39c0: 20 03 40 f9           ldr      x0, [x25]
0x00ec39c4: 14 81 40 f9           ldr      x20, [x8, #0x100]
0x00ec39c8: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ec39cc: 69 00 00 35           cbnz     w9, #0xec39d8
0x00ec39d0: 8f 68 fd 97           bl       #0xe1dc0c
0x00ec39d4: 20 03 40 f9           ldr      x0, [x25]
0x00ec39d8: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec39dc: 15 09 40 f9           ldr      x21, [x8, #0x10]
0x00ec39e0: 75 02 00 b5           cbnz     x21, #0xec3a2c
0x00ec39e4: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ec39e8: 68 00 00 35           cbnz     w8, #0xec39f4
0x00ec39ec: 88 68 fd 97           bl       #0xe1dc0c
0x00ec39f0: 20 03 40 f9           ldr      x0, [x25]
0x00ec39f4: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec39f8: e0 02 40 f9           ldr      x0, [x23]
0x00ec39fc: 16 01 40 f9           ldr      x22, [x8]
0x00ec3a00: c8 68 fd 97           bl       #0xe1dd20
0x00ec3a04: a8 92 00 f0           adrp     x8, #0x211a000
0x00ec3a08: 08 41 45 f9           ldr      x8, [x8, #0xa80]
0x00ec3a0c: e1 03 16 aa           mov      x1, x22
0x00ec3a10: e3 03 1f aa           mov      x3, xzr
0x00ec3a14: f5 03 00 aa           mov      x21, x0
0x00ec3a18: 02 01 40 f9           ldr      x2, [x8]
0x00ec3a1c: 26 3f 3c 94           bl       #0x1dd36b4
0x00ec3a20: 28 03 40 f9           ldr      x8, [x25]
0x00ec3a24: 08 5d 40 f9           ldr      x8, [x8, #0xb8]
0x00ec3a28: 15 09 00 f9           str      x21, [x8, #0x10]
0x00ec3a2c: 74 24 00 b4           cbz      x20, #0xec3eb8
0x00ec3a30: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec3a34: d6 86 45 f9           ldr      x22, [x22, #0xb08]
0x00ec3a38: e0 03 14 aa           mov      x0, x20
0x00ec3a3c: e1 03 15 aa           mov      x1, x21
0x00ec3a40: e2 03 1f aa           mov      x2, xzr
0x00ec3a44: 45 3f 3c 94           bl       #0x1dd3758
0x00ec3a48: c0 02 40 f9           ldr      x0, [x22]
0x00ec3a4c: e1 03 1f aa           mov      x1, xzr
0x00ec3a50: 89 11 3c 94           bl       #0x1dc8074
0x00ec3a54: 20 23 00 b4           cbz      x0, #0xec3eb8
0x00ec3a58: 01 03 40 f9           ldr      x1, [x24]
0x00ec3a5c: d1 4d 02 94           bl       #0xf571a0
0x00ec3a60: c0 22 00 b4           cbz      x0, #0xec3eb8
0x00ec3a64: e8 03 00 aa           mov      x8, x0
0x00ec3a68: 20 03 40 f9           ldr      x0, [x25]
0x00ec3a6c: 14 81 40 f9           ldr      x20, [x8, #0x100]
0x00ec3a70: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ec3a74: 69 00 00 35           cbnz     w9, #0xec3a80
0x00ec3a78: 65 68 fd 97           bl       #0xe1dc0c
0x00ec3a7c: 20 03 40 f9           ldr      x0, [x25]
0x00ec3a80: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3a84: 15 0d 40 f9           ldr      x21, [x8, #0x18]
0x00ec3a88: 75 02 00 b5           cbnz     x21, #0xec3ad4
0x00ec3a8c: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ec3a90: 68 00 00 35           cbnz     w8, #0xec3a9c
0x00ec3a94: 5e 68 fd 97           bl       #0xe1dc0c
0x00ec3a98: 20 03 40 f9           ldr      x0, [x25]
0x00ec3a9c: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3aa0: e0 02 40 f9           ldr      x0, [x23]
0x00ec3aa4: 16 01 40 f9           ldr      x22, [x8]
0x00ec3aa8: 9e 68 fd 97           bl       #0xe1dd20
0x00ec3aac: a8 92 00 f0           adrp     x8, #0x211a000
0x00ec3ab0: 08 45 45 f9           ldr      x8, [x8, #0xa88]
0x00ec3ab4: e1 03 16 aa           mov      x1, x22
0x00ec3ab8: e3 03 1f aa           mov      x3, xzr
0x00ec3abc: f5 03 00 aa           mov      x21, x0
0x00ec3ac0: 02 01 40 f9           ldr      x2, [x8]
0x00ec3ac4: fc 3e 3c 94           bl       #0x1dd36b4
0x00ec3ac8: 28 03 40 f9           ldr      x8, [x25]
0x00ec3acc: 08 5d 40 f9           ldr      x8, [x8, #0xb8]
0x00ec3ad0: 15 0d 00 f9           str      x21, [x8, #0x18]
0x00ec3ad4: 34 1f 00 b4           cbz      x20, #0xec3eb8
0x00ec3ad8: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec3adc: d6 7e 45 f9           ldr      x22, [x22, #0xaf8]
0x00ec3ae0: e0 03 14 aa           mov      x0, x20
0x00ec3ae4: e1 03 15 aa           mov      x1, x21
0x00ec3ae8: e2 03 1f aa           mov      x2, xzr
0x00ec3aec: 1b 3f 3c 94           bl       #0x1dd3758
0x00ec3af0: c0 02 40 f9           ldr      x0, [x22]
0x00ec3af4: e1 03 1f aa           mov      x1, xzr
0x00ec3af8: 5f 11 3c 94           bl       #0x1dc8074
0x00ec3afc: e0 1d 00 b4           cbz      x0, #0xec3eb8
0x00ec3b00: 01 03 40 f9           ldr      x1, [x24]
0x00ec3b04: a7 4d 02 94           bl       #0xf571a0
0x00ec3b08: 80 1d 00 b4           cbz      x0, #0xec3eb8
0x00ec3b0c: e8 03 00 aa           mov      x8, x0
0x00ec3b10: 20 03 40 f9           ldr      x0, [x25]
0x00ec3b14: 14 81 40 f9           ldr      x20, [x8, #0x100]
0x00ec3b18: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ec3b1c: 69 00 00 35           cbnz     w9, #0xec3b28
0x00ec3b20: 3b 68 fd 97           bl       #0xe1dc0c
0x00ec3b24: 20 03 40 f9           ldr      x0, [x25]
0x00ec3b28: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3b2c: 15 11 40 f9           ldr      x21, [x8, #0x20]
0x00ec3b30: 75 02 00 b5           cbnz     x21, #0xec3b7c
0x00ec3b34: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ec3b38: 68 00 00 35           cbnz     w8, #0xec3b44
0x00ec3b3c: 34 68 fd 97           bl       #0xe1dc0c
0x00ec3b40: 20 03 40 f9           ldr      x0, [x25]
0x00ec3b44: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3b48: e0 02 40 f9           ldr      x0, [x23]
0x00ec3b4c: 16 01 40 f9           ldr      x22, [x8]
0x00ec3b50: 74 68 fd 97           bl       #0xe1dd20
0x00ec3b54: a8 92 00 f0           adrp     x8, #0x211a000
0x00ec3b58: 08 49 45 f9           ldr      x8, [x8, #0xa90]
0x00ec3b5c: e1 03 16 aa           mov      x1, x22
0x00ec3b60: e3 03 1f aa           mov      x3, xzr
0x00ec3b64: f5 03 00 aa           mov      x21, x0
0x00ec3b68: 02 01 40 f9           ldr      x2, [x8]
0x00ec3b6c: d2 3e 3c 94           bl       #0x1dd36b4
0x00ec3b70: 28 03 40 f9           ldr      x8, [x25]
0x00ec3b74: 08 5d 40 f9           ldr      x8, [x8, #0xb8]
0x00ec3b78: 15 11 00 f9           str      x21, [x8, #0x20]
0x00ec3b7c: f4 19 00 b4           cbz      x20, #0xec3eb8
0x00ec3b80: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec3b84: d6 aa 45 f9           ldr      x22, [x22, #0xb50]
0x00ec3b88: e0 03 14 aa           mov      x0, x20
0x00ec3b8c: e1 03 15 aa           mov      x1, x21
0x00ec3b90: e2 03 1f aa           mov      x2, xzr
0x00ec3b94: f1 3e 3c 94           bl       #0x1dd3758
0x00ec3b98: c0 02 40 f9           ldr      x0, [x22]
0x00ec3b9c: e1 03 1f aa           mov      x1, xzr
0x00ec3ba0: 35 11 3c 94           bl       #0x1dc8074
0x00ec3ba4: a0 18 00 b4           cbz      x0, #0xec3eb8
0x00ec3ba8: 01 03 40 f9           ldr      x1, [x24]
0x00ec3bac: 7d 4d 02 94           bl       #0xf571a0
0x00ec3bb0: 40 18 00 b4           cbz      x0, #0xec3eb8
0x00ec3bb4: e8 03 00 aa           mov      x8, x0
0x00ec3bb8: 20 03 40 f9           ldr      x0, [x25]
0x00ec3bbc: 14 81 40 f9           ldr      x20, [x8, #0x100]
0x00ec3bc0: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ec3bc4: 69 00 00 35           cbnz     w9, #0xec3bd0
0x00ec3bc8: 11 68 fd 97           bl       #0xe1dc0c
0x00ec3bcc: 20 03 40 f9           ldr      x0, [x25]
0x00ec3bd0: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3bd4: 15 15 40 f9           ldr      x21, [x8, #0x28]
0x00ec3bd8: 75 02 00 b5           cbnz     x21, #0xec3c24
0x00ec3bdc: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ec3be0: 68 00 00 35           cbnz     w8, #0xec3bec
0x00ec3be4: 0a 68 fd 97           bl       #0xe1dc0c
0x00ec3be8: 20 03 40 f9           ldr      x0, [x25]
0x00ec3bec: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3bf0: e0 02 40 f9           ldr      x0, [x23]
0x00ec3bf4: 16 01 40 f9           ldr      x22, [x8]
0x00ec3bf8: 4a 68 fd 97           bl       #0xe1dd20
0x00ec3bfc: a8 92 00 f0           adrp     x8, #0x211a000
0x00ec3c00: 08 4d 45 f9           ldr      x8, [x8, #0xa98]
0x00ec3c04: e1 03 16 aa           mov      x1, x22
0x00ec3c08: e3 03 1f aa           mov      x3, xzr
0x00ec3c0c: f5 03 00 aa           mov      x21, x0
0x00ec3c10: 02 01 40 f9           ldr      x2, [x8]
0x00ec3c14: a8 3e 3c 94           bl       #0x1dd36b4
0x00ec3c18: 28 03 40 f9           ldr      x8, [x25]
0x00ec3c1c: 08 5d 40 f9           ldr      x8, [x8, #0xb8]
0x00ec3c20: 15 15 00 f9           str      x21, [x8, #0x28]
0x00ec3c24: b4 14 00 b4           cbz      x20, #0xec3eb8
0x00ec3c28: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec3c2c: d6 76 45 f9           ldr      x22, [x22, #0xae8]
0x00ec3c30: e0 03 14 aa           mov      x0, x20
0x00ec3c34: e1 03 15 aa           mov      x1, x21
0x00ec3c38: e2 03 1f aa           mov      x2, xzr
0x00ec3c3c: c7 3e 3c 94           bl       #0x1dd3758
0x00ec3c40: c0 02 40 f9           ldr      x0, [x22]
0x00ec3c44: e1 03 1f aa           mov      x1, xzr
0x00ec3c48: 0b 11 3c 94           bl       #0x1dc8074
0x00ec3c4c: 60 13 00 b4           cbz      x0, #0xec3eb8
0x00ec3c50: 01 03 40 f9           ldr      x1, [x24]
0x00ec3c54: 53 4d 02 94           bl       #0xf571a0
0x00ec3c58: 00 13 00 b4           cbz      x0, #0xec3eb8
0x00ec3c5c: e8 03 00 aa           mov      x8, x0
0x00ec3c60: 20 03 40 f9           ldr      x0, [x25]
0x00ec3c64: 14 81 40 f9           ldr      x20, [x8, #0x100]
0x00ec3c68: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ec3c6c: 69 00 00 35           cbnz     w9, #0xec3c78
0x00ec3c70: e7 67 fd 97           bl       #0xe1dc0c
0x00ec3c74: 20 03 40 f9           ldr      x0, [x25]
0x00ec3c78: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3c7c: 15 19 40 f9           ldr      x21, [x8, #0x30]
0x00ec3c80: 75 02 00 b5           cbnz     x21, #0xec3ccc
0x00ec3c84: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ec3c88: 68 00 00 35           cbnz     w8, #0xec3c94
0x00ec3c8c: e0 67 fd 97           bl       #0xe1dc0c
0x00ec3c90: 20 03 40 f9           ldr      x0, [x25]
0x00ec3c94: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3c98: e0 02 40 f9           ldr      x0, [x23]
0x00ec3c9c: 16 01 40 f9           ldr      x22, [x8]
0x00ec3ca0: 20 68 fd 97           bl       #0xe1dd20
0x00ec3ca4: a8 92 00 f0           adrp     x8, #0x211a000
0x00ec3ca8: 08 51 45 f9           ldr      x8, [x8, #0xaa0]
0x00ec3cac: e1 03 16 aa           mov      x1, x22
0x00ec3cb0: e3 03 1f aa           mov      x3, xzr
0x00ec3cb4: f5 03 00 aa           mov      x21, x0
0x00ec3cb8: 02 01 40 f9           ldr      x2, [x8]
0x00ec3cbc: 7e 3e 3c 94           bl       #0x1dd36b4
0x00ec3cc0: 28 03 40 f9           ldr      x8, [x25]
0x00ec3cc4: 08 5d 40 f9           ldr      x8, [x8, #0xb8]
0x00ec3cc8: 15 19 00 f9           str      x21, [x8, #0x30]
0x00ec3ccc: 74 0f 00 b4           cbz      x20, #0xec3eb8
0x00ec3cd0: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec3cd4: d6 6e 45 f9           ldr      x22, [x22, #0xad8]
0x00ec3cd8: e0 03 14 aa           mov      x0, x20
0x00ec3cdc: e1 03 15 aa           mov      x1, x21
0x00ec3ce0: e2 03 1f aa           mov      x2, xzr
0x00ec3ce4: 9d 3e 3c 94           bl       #0x1dd3758
0x00ec3ce8: c0 02 40 f9           ldr      x0, [x22]
0x00ec3cec: e1 03 1f aa           mov      x1, xzr
0x00ec3cf0: e1 10 3c 94           bl       #0x1dc8074
0x00ec3cf4: 20 0e 00 b4           cbz      x0, #0xec3eb8
0x00ec3cf8: 01 03 40 f9           ldr      x1, [x24]
0x00ec3cfc: 29 4d 02 94           bl       #0xf571a0
0x00ec3d00: c0 0d 00 b4           cbz      x0, #0xec3eb8
0x00ec3d04: e8 03 00 aa           mov      x8, x0
0x00ec3d08: 20 03 40 f9           ldr      x0, [x25]
0x00ec3d0c: 14 81 40 f9           ldr      x20, [x8, #0x100]
0x00ec3d10: 09 e0 40 b9           ldr      w9, [x0, #0xe0]
0x00ec3d14: 69 00 00 35           cbnz     w9, #0xec3d20
0x00ec3d18: bd 67 fd 97           bl       #0xe1dc0c
0x00ec3d1c: 20 03 40 f9           ldr      x0, [x25]
0x00ec3d20: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3d24: 15 1d 40 f9           ldr      x21, [x8, #0x38]
0x00ec3d28: 75 02 00 b5           cbnz     x21, #0xec3d74
0x00ec3d2c: 08 e0 40 b9           ldr      w8, [x0, #0xe0]
0x00ec3d30: 68 00 00 35           cbnz     w8, #0xec3d3c
0x00ec3d34: b6 67 fd 97           bl       #0xe1dc0c
0x00ec3d38: 20 03 40 f9           ldr      x0, [x25]
0x00ec3d3c: 08 5c 40 f9           ldr      x8, [x0, #0xb8]
0x00ec3d40: e0 02 40 f9           ldr      x0, [x23]
0x00ec3d44: 16 01 40 f9           ldr      x22, [x8]
0x00ec3d48: f6 67 fd 97           bl       #0xe1dd20
0x00ec3d4c: a8 92 00 f0           adrp     x8, #0x211a000
0x00ec3d50: 08 55 45 f9           ldr      x8, [x8, #0xaa8]
0x00ec3d54: e1 03 16 aa           mov      x1, x22
0x00ec3d58: e3 03 1f aa           mov      x3, xzr
0x00ec3d5c: f5 03 00 aa           mov      x21, x0
0x00ec3d60: 02 01 40 f9           ldr      x2, [x8]
0x00ec3d64: 54 3e 3c 94           bl       #0x1dd36b4
0x00ec3d68: 28 03 40 f9           ldr      x8, [x25]
0x00ec3d6c: 08 5d 40 f9           ldr      x8, [x8, #0xb8]
0x00ec3d70: 15 1d 00 f9           str      x21, [x8, #0x38]
0x00ec3d74: 34 0a 00 b4           cbz      x20, #0xec3eb8
0x00ec3d78: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec3d7c: d6 9a 45 f9           ldr      x22, [x22, #0xb30]
0x00ec3d80: e0 03 14 aa           mov      x0, x20
0x00ec3d84: e1 03 15 aa           mov      x1, x21
0x00ec3d88: e2 03 1f aa           mov      x2, xzr
0x00ec3d8c: 73 3e 3c 94           bl       #0x1dd3758
0x00ec3d90: c0 02 40 f9           ldr      x0, [x22]
0x00ec3d94: e1 03 1f aa           mov      x1, xzr
0x00ec3d98: b7 10 3c 94           bl       #0x1dc8074
0x00ec3d9c: e0 08 00 b4           cbz      x0, #0xec3eb8
0x00ec3da0: 01 03 40 f9           ldr      x1, [x24]
0x00ec3da4: ff 4c 02 94           bl       #0xf571a0
0x00ec3da8: 80 08 00 b4           cbz      x0, #0xec3eb8
0x00ec3dac: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec3db0: e0 02 40 f9           ldr      x0, [x23]
0x00ec3db4: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3db8: b5 1a 45 f9           ldr      x21, [x21, #0xa30]
0x00ec3dbc: d9 67 fd 97           bl       #0xe1dd20
0x00ec3dc0: a2 02 40 f9           ldr      x2, [x21]
0x00ec3dc4: e1 03 13 aa           mov      x1, x19
0x00ec3dc8: e3 03 1f aa           mov      x3, xzr
0x00ec3dcc: f5 03 00 aa           mov      x21, x0
0x00ec3dd0: 39 3e 3c 94           bl       #0x1dd36b4
0x00ec3dd4: 34 07 00 b4           cbz      x20, #0xec3eb8
0x00ec3dd8: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec3ddc: d6 9e 45 f9           ldr      x22, [x22, #0xb38]
0x00ec3de0: e0 03 14 aa           mov      x0, x20
0x00ec3de4: e1 03 15 aa           mov      x1, x21
0x00ec3de8: e2 03 1f aa           mov      x2, xzr
0x00ec3dec: 5b 3e 3c 94           bl       #0x1dd3758
0x00ec3df0: c0 02 40 f9           ldr      x0, [x22]
0x00ec3df4: e1 03 1f aa           mov      x1, xzr
0x00ec3df8: 9f 10 3c 94           bl       #0x1dc8074
0x00ec3dfc: e0 05 00 b4           cbz      x0, #0xec3eb8
0x00ec3e00: 01 03 40 f9           ldr      x1, [x24]
0x00ec3e04: e7 4c 02 94           bl       #0xf571a0
0x00ec3e08: 80 05 00 b4           cbz      x0, #0xec3eb8
0x00ec3e0c: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec3e10: e0 02 40 f9           ldr      x0, [x23]
0x00ec3e14: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3e18: b5 1e 45 f9           ldr      x21, [x21, #0xa38]
0x00ec3e1c: c1 67 fd 97           bl       #0xe1dd20
0x00ec3e20: a2 02 40 f9           ldr      x2, [x21]
0x00ec3e24: e1 03 13 aa           mov      x1, x19
0x00ec3e28: e3 03 1f aa           mov      x3, xzr
0x00ec3e2c: f5 03 00 aa           mov      x21, x0
0x00ec3e30: 21 3e 3c 94           bl       #0x1dd36b4
0x00ec3e34: 34 04 00 b4           cbz      x20, #0xec3eb8
0x00ec3e38: b6 92 00 f0           adrp     x22, #0x211a000
0x00ec3e3c: d6 a2 45 f9           ldr      x22, [x22, #0xb40]
0x00ec3e40: e0 03 14 aa           mov      x0, x20
0x00ec3e44: e1 03 15 aa           mov      x1, x21
0x00ec3e48: e2 03 1f aa           mov      x2, xzr
0x00ec3e4c: 43 3e 3c 94           bl       #0x1dd3758
0x00ec3e50: c0 02 40 f9           ldr      x0, [x22]
0x00ec3e54: e1 03 1f aa           mov      x1, xzr
0x00ec3e58: 87 10 3c 94           bl       #0x1dc8074
0x00ec3e5c: e0 02 00 b4           cbz      x0, #0xec3eb8
0x00ec3e60: 01 03 40 f9           ldr      x1, [x24]
0x00ec3e64: cf 4c 02 94           bl       #0xf571a0
0x00ec3e68: 80 02 00 b4           cbz      x0, #0xec3eb8
0x00ec3e6c: 14 80 40 f9           ldr      x20, [x0, #0x100]
0x00ec3e70: e0 02 40 f9           ldr      x0, [x23]
0x00ec3e74: b5 92 00 f0           adrp     x21, #0x211a000
0x00ec3e78: b5 22 45 f9           ldr      x21, [x21, #0xa40]
0x00ec3e7c: a9 67 fd 97           bl       #0xe1dd20
0x00ec3e80: a2 02 40 f9           ldr      x2, [x21]
0x00ec3e84: e1 03 13 aa           mov      x1, x19
0x00ec3e88: e3 03 1f aa           mov      x3, xzr
0x00ec3e8c: f5 03 00 aa           mov      x21, x0
0x00ec3e90: 09 3e 3c 94           bl       #0x1dd36b4
0x00ec3e94: 34 01 00 b4           cbz      x20, #0xec3eb8
0x00ec3e98: e0 03 14 aa           mov      x0, x20
0x00ec3e9c: e1 03 15 aa           mov      x1, x21
0x00ec3ea0: f4 4f 43 a9           ldp      x20, x19, [sp, #0x30]
0x00ec3ea4: f6 57 42 a9           ldp      x22, x21, [sp, #0x20]
0x00ec3ea8: f8 5f 41 a9           ldp      x24, x23, [sp, #0x10]
0x00ec3eac: e2 03 1f aa           mov      x2, xzr
0x00ec3eb0: fe 67 c4 a8           ldp      x30, x25, [sp], #0x40
0x00ec3eb4: 29 3e 3c 14           b        #0x1dd3758
0x00ec3eb8: 9b 67 fd 97           bl       #0xe1dd24
