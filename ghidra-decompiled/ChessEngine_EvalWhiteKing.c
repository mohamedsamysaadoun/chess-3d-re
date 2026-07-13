// Function: ChessEngine_EvalWhiteKing
// RVA: 0xEE7710
// Description: Eval white king
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


void ChessEngine_EvalWhiteKing(void)

{
  undefined8 in_x9;
  undefined8 uVar1;
  undefined8 *unaff_x19;
  long unaff_x20;
  
  unaff_x19[2] = in_x9;
  uVar1 = *(undefined8 *)(unaff_x20 + 0x10);
  *(undefined8 *)(unaff_x20 + 0x10) = unaff_x19[3];
  unaff_x19[3] = uVar1;
  *unaff_x19 = unaff_x19[1];
  return;
}

