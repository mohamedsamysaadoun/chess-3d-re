// Function: ChessEngine_EvalWhitePawn
// RVA: 0xEE7590
// Description: Eval white pawn
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


/* WARNING: Possible PIC construction at 0x00ee7658: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x00ee765c) */

void ChessEngine_EvalWhitePawn(long param_1)

{
  ulong uVar1;
  undefined8 uVar2;
  undefined8 *puVar3;
  ulong uVar4;
  long *unaff_x19;
  long unaff_x21;
  long lVar5;
  long unaff_x22;
  long lVar6;
  long lVar7;
  undefined1 auVar8 [16];
  long in_stack_00000008;
  long in_stack_00000010;
  long in_stack_00000018;
  long in_stack_00000020;
  long *in_stack_00000028;
  
  lVar6 = unaff_x22 - *unaff_x19 >> 4;
  uVar1 = unaff_x21 + lVar6;
  if (uVar1 >> 0x3c == 0) {
    param_1 = param_1 - *unaff_x19;
    uVar4 = param_1 >> 3;
    if (uVar1 <= uVar4) {
      uVar1 = uVar4;
    }
    if (0x7fffffffffffffe < (ulong)(param_1 >> 4)) {
      uVar1 = 0xfffffffffffffff;
    }
    in_stack_00000028 = unaff_x19 + 2;
    if (uVar1 == 0) {
      in_stack_00000008 = 0;
    }
    else {
      in_stack_00000008 = func_0x0210a100(uVar1 << 4);
    }
    lVar6 = in_stack_00000008 + lVar6 * 0x10;
    lVar7 = unaff_x21 << 4;
    in_stack_00000010 = lVar6;
    in_stack_00000020 = in_stack_00000008 + uVar1 * 0x10;
    lVar5 = lVar6;
    if (lVar7 != 0) {
      lVar5 = lVar6 + unaff_x21 * 0x10;
      in_stack_00000018 = lVar6;
      do {
        func_0x00ee7738(lVar6);
        lVar7 = lVar7 + -0x10;
        lVar6 = lVar6 + 0x10;
      } while (lVar7 != 0);
    }
    in_stack_00000018 = lVar5;
    puVar3 = &stack0x00000008;
  }
  else {
    uVar2 = func_0x0210a3f0();
    func_0x00ebed68(&stack0x00000008);
    auVar8 = func_0x00fae398(uVar2);
    puVar3 = auVar8._8_8_;
    unaff_x19 = auVar8._0_8_;
  }
  lVar6 = *unaff_x19;
  lVar5 = unaff_x19[1];
  lVar7 = puVar3[1];
  if (lVar5 != lVar6) {
    do {
      lVar5 = lVar5 + -0x10;
      func_0x00ee7738(lVar7 + -0x10,lVar5);
      lVar7 = puVar3[1] + -0x10;
      puVar3[1] = lVar7;
    } while (lVar6 != lVar5);
    lVar6 = *unaff_x19;
  }
  *unaff_x19 = lVar7;
  puVar3[1] = lVar6;
  lVar6 = unaff_x19[1];
  unaff_x19[1] = puVar3[2];
  puVar3[2] = lVar6;
  lVar6 = unaff_x19[2];
  unaff_x19[2] = puVar3[3];
  puVar3[3] = lVar6;
  *puVar3 = puVar3[1];
  return;
}

