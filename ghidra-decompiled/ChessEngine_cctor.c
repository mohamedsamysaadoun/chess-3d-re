// Function: ChessEngine_cctor
// RVA: 0xEE7FEC
// Description: Static constructor - initializes all tables
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


void ChessEngine_cctor(undefined8 param_1,undefined1 param_2 [16],undefined1 param_3 [16])

{
  undefined8 in_x9;
  long unaff_x19;
  
  *(long *)(unaff_x19 + 0x20) = param_3._8_8_;
  *(long *)(unaff_x19 + 0x18) = param_3._0_8_;
  *(long *)(unaff_x19 + 0x10) = param_2._8_8_;
  *(long *)(unaff_x19 + 8) = param_2._0_8_;
  *(undefined8 *)(unaff_x19 + 0x28) = param_1;
  *(undefined8 *)(unaff_x19 + 0x30) = in_x9;
  *(undefined8 *)(unaff_x19 + 0x38) = in_x9;
  *(undefined8 *)(unaff_x19 + 0x40) = 0;
  func_0x00ee80c0();
  return;
}

