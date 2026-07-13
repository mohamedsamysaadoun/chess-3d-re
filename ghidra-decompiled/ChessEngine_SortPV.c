// Function: ChessEngine_SortPV
// RVA: 0xEE6438
// Description: Sort PV
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


undefined8 ChessEngine_SortPV(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = func_0x00f2bb58(param_1,1);
  return *(undefined8 *)(lVar1 + 0x50);
}

