// Function: ChessEngine_EvalBlackPawn
// RVA: 0xEE78A4
// Description: Eval black pawn
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


void ChessEngine_EvalBlackPawn(void)

{
  long lVar1;
  long *extraout_x8;
  long *plVar2;
  long *plVar3;
  long *plStack_40;
  long *plStack_38;
  long *plStack_30;
  long lStack_28;
  undefined *puStack_20;
  
  lVar1 = func_0x00fae398();
  lStack_28 = 0;
  puStack_20 = &UNK_00ee78a8;
  plVar2 = *(long **)(lVar1 + 0x48);
  plStack_38 = *(long **)(lVar1 + 0x50);
  plVar3 = plVar2;
  plStack_40 = plVar2;
  plStack_30 = plVar2;
  if (plVar2 != plStack_38) {
    lStack_28 = *plVar2;
    func_0x00ece624(&plStack_40);
    plVar2 = *(long **)(lVar1 + 0x48);
    plVar3 = *(long **)(lVar1 + 0x50);
  }
  *extraout_x8 = lVar1;
  extraout_x8[5] = (long)plVar2;
  extraout_x8[6] = (long)plVar3;
  extraout_x8[4] = lStack_28;
  extraout_x8[3] = (long)plStack_30;
  extraout_x8[2] = (long)plStack_38;
  extraout_x8[1] = (long)plStack_40;
  extraout_x8[7] = (long)plVar3;
  extraout_x8[8] = 0;
  func_0x00ee7ac8(extraout_x8);
  return;
}

