// Function: Move_op_Equality
// RVA: 0xee559c
// Description: Move == operator
// Size: 256 bytes (capped at 4096)
// Analyzed: 2026-07-13 13:58:04
// Binary: libil2cpp.so
// Architecture: AArch64 (ARM64)

// Disassembly:
0x00ee559c: 28 00 00 4a           eor      w8, w1, w0
0x00ee55a0: 1f 5d 40 f2           tst      x8, #0xffffff
0x00ee55a4: e0 17 9f 1a           cset     w0, eq
0x00ee55a8: c0 03 5f d6           ret      
