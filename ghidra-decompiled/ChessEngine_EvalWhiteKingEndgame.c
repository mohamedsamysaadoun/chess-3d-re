// Function: ChessEngine_EvalWhiteKingEndgame
// RVA: 0xEE7BEC
// Description: Eval white king endgame
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


long ChessEngine_EvalWhiteKingEndgame(byte *param_1,undefined8 param_2,long param_3)

{
  byte bVar1;
  byte *pbVar2;
  ulong uVar3;
  ulong uVar4;
  ulong uVar5;
  ulong in_x11;
  ulong uVar6;
  
  uVar3 = 0x1505;
  uVar4 = 0x1505;
  do {
    uVar4 = uVar4 * 0x21 ^ in_x11 & 0xff;
    if ((ulong)param_1[1] == 0) break;
    bVar1 = param_1[2];
    in_x11 = (ulong)bVar1;
    uVar3 = uVar3 * 0x21 ^ (ulong)param_1[1];
    param_1 = param_1 + 2;
  } while (bVar1 != 0);
  bVar1 = **(byte **)(param_3 + 8);
  if (bVar1 == 0) {
    uVar5 = 0x1505;
    uVar6 = 0x1505;
  }
  else {
    uVar5 = 0x1505;
    uVar6 = 0x1505;
    pbVar2 = *(byte **)(param_3 + 8);
    do {
      uVar6 = uVar6 * 0x21 ^ (ulong)bVar1;
      if ((ulong)pbVar2[1] == 0) break;
      bVar1 = pbVar2[2];
      uVar5 = uVar5 * 0x21 ^ (ulong)pbVar2[1];
      pbVar2 = pbVar2 + 2;
    } while (bVar1 != 0);
  }
  return (uVar4 + uVar3 * 0x5d588b65) * 0x1cfaa2db + uVar5 * 0x5d588b65 + uVar6;
}

