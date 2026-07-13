// Function: ChessEngine_EvalBlackKing
// RVA: 0xEE7A40
// Description: Eval black king
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


void ChessEngine_EvalBlackKing(undefined4 *param_1)

{
  undefined8 *puVar1;
  undefined4 *puVar2;
  long lVar3;
  undefined4 *puVar4;
  long in_x9;
  undefined4 *in_x10;
  undefined4 *puVar5;
  undefined4 *in_x11;
  long *unaff_x19;
  long unaff_x20;
  undefined8 uVar6;
  
  while( true ) {
    uVar6 = *(undefined8 *)(param_1 + 2);
    *(undefined8 *)(in_x11 + 4) = *(undefined8 *)(param_1 + 4);
    *(undefined8 *)(in_x11 + 2) = uVar6;
    puVar1 = (undefined8 *)(param_1 + 6);
    param_1 = param_1 + 8;
    *(undefined8 *)(in_x11 + 6) = *puVar1;
    in_x11 = in_x11 + 8;
    if (param_1 == in_x10) break;
    *in_x11 = *param_1;
  }
  lVar3 = *unaff_x19;
  puVar5 = (undefined4 *)(lVar3 + in_x9 * 0x20 + 0x20);
  puVar2 = (undefined4 *)(lVar3 + (ulong)*(ushort *)(unaff_x19 + 1) * 0x20);
  if (puVar5 != puVar2) {
    puVar4 = (undefined4 *)(unaff_x20 + in_x9 * 0x20);
    do {
      *puVar4 = *puVar5;
      uVar6 = *(undefined8 *)(puVar5 + 2);
      *(undefined8 *)(puVar4 + 4) = *(undefined8 *)(puVar5 + 4);
      *(undefined8 *)(puVar4 + 2) = uVar6;
      puVar1 = (undefined8 *)(puVar5 + 6);
      puVar5 = puVar5 + 8;
      *(undefined8 *)(puVar4 + 6) = *puVar1;
      puVar4 = puVar4 + 8;
    } while (puVar5 != puVar2);
    lVar3 = *unaff_x19;
  }
  if (lVar3 != 0) {
    func_0x0210a150(lVar3);
  }
  *unaff_x19 = unaff_x20;
  return;
}

