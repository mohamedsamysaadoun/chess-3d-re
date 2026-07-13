// Function: ChessEngine_QuickSortMoves
// RVA: 0xee6510
// Description: QuickSort moves
// Size: 96 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee6510: fe 0f 1d f8           str      x30, [sp, #-0x30]!
0x00ee6514: f6 57 01 a9           stp      x22, x21, [sp, #0x10]
0x00ee6518: f4 4f 02 a9           stp      x20, x19, [sp, #0x20]
0x00ee651c: 3f 00 02 6b           cmp      w1, w2
0x00ee6520: 0a 02 00 54           b.ge     #0xee6560
0x00ee6524: f3 03 02 2a           mov      w19, w2
0x00ee6528: f5 03 01 2a           mov      w21, w1
0x00ee652c: f4 03 00 aa           mov      x20, x0
0x00ee6530: e0 03 14 aa           mov      x0, x20
0x00ee6534: e1 03 15 2a           mov      w1, w21
0x00ee6538: e2 03 13 2a           mov      w2, w19
0x00ee653c: 49 03 00 94           bl       #0xee7260
0x00ee6540: f6 03 00 2a           mov      w22, w0
0x00ee6544: 02 04 00 51           sub      w2, w0, #1
0x00ee6548: e0 03 14 aa           mov      x0, x20
0x00ee654c: e1 03 15 2a           mov      w1, w21
0x00ee6550: f0 ff ff 97           bl       #0xee6510
0x00ee6554: d5 06 00 11           add      w21, w22, #1
0x00ee6558: bf 02 13 6b           cmp      w21, w19
0x00ee655c: ab fe ff 54           b.lt     #0xee6530
0x00ee6560: f4 4f 42 a9           ldp      x20, x19, [sp, #0x20]
0x00ee6564: f6 57 41 a9           ldp      x22, x21, [sp, #0x10]
0x00ee6568: fe 07 43 f8           ldr      x30, [sp], #0x30
0x00ee656c: c0 03 5f d6           ret      
