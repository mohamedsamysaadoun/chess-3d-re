// Function: ChessEngine_AddPromotionMove
// RVA: 0xEE7504
// Description: Add promotion move
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


/* WARNING: Possible PIC construction at 0x00ee7658: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x00ee765c) */

void ChessEngine_AddPromotionMove(long param_1,undefined8 param_2,long param_3,undefined8 param_4)

{
  ulong uVar1;
  long *plVar2;
  bool in_ZR;
  bool in_CY;
  undefined8 uVar3;
  ulong uVar4;
  long *plVar5;
  long lVar6;
  long in_x9;
  ulong uVar7;
  long *unaff_x19;
  long *unaff_x20;
  long lVar8;
  long lVar9;
  undefined1 auVar10 [16];
  long lStack_28;
  long lStack_20;
  long lStack_18;
  long lStack_10;
  long *plStack_8;
  
  if (in_CY) {
    if (!in_ZR) {
      plVar5 = (long *)(param_1 + param_3 * 0x10);
      while (plVar2 = unaff_x20, plVar2 != plVar5) {
        unaff_x20 = plVar2 + -2;
        if (*unaff_x20 != 0) {
          func_0x0210a150();
          plVar2[-2] = 0;
        }
      }
      unaff_x19[1] = (long)plVar5;
    }
    return;
  }
  uVar4 = param_3 - in_x9;
  lVar8 = unaff_x19[1];
  if (uVar4 <= (ulong)(unaff_x19[2] - lVar8 >> 4)) {
    lVar9 = uVar4 * 0x10;
    lVar6 = lVar8;
    if (lVar9 != 0) {
      lVar6 = lVar8 + uVar4 * 0x10;
      do {
        func_0x00ee7738(lVar8,param_4);
        lVar9 = lVar9 + -0x10;
        lVar8 = lVar8 + 0x10;
      } while (lVar9 != 0);
    }
    unaff_x19[1] = lVar6;
    return;
  }
  lVar8 = lVar8 - *unaff_x19 >> 4;
  uVar1 = uVar4 + lVar8;
  if (uVar1 >> 0x3c == 0) {
    lVar6 = unaff_x19[2] - *unaff_x19;
    uVar7 = lVar6 >> 3;
    if (uVar1 <= uVar7) {
      uVar1 = uVar7;
    }
    if (0x7fffffffffffffe < (ulong)(lVar6 >> 4)) {
      uVar1 = 0xfffffffffffffff;
    }
    plStack_8 = unaff_x19 + 2;
    if (uVar1 == 0) {
      lStack_28 = 0;
    }
    else {
      lStack_28 = func_0x0210a100(uVar1 << 4);
    }
    lVar8 = lStack_28 + lVar8 * 0x10;
    lVar9 = uVar4 * 0x10;
    lStack_20 = lVar8;
    lStack_10 = lStack_28 + uVar1 * 0x10;
    lVar6 = lVar8;
    if (lVar9 != 0) {
      lVar6 = lVar8 + uVar4 * 0x10;
      lStack_18 = lVar8;
      do {
        func_0x00ee7738(lVar8,param_4);
        lVar9 = lVar9 + -0x10;
        lVar8 = lVar8 + 0x10;
      } while (lVar9 != 0);
    }
    lStack_18 = lVar6;
    plVar5 = &lStack_28;
  }
  else {
    uVar3 = func_0x0210a3f0();
    func_0x00ebed68(&lStack_28);
    auVar10 = func_0x00fae398(uVar3);
    plVar5 = auVar10._8_8_;
    unaff_x19 = auVar10._0_8_;
  }
  lVar8 = *unaff_x19;
  lVar6 = unaff_x19[1];
  lVar9 = plVar5[1];
  if (lVar6 != lVar8) {
    do {
      lVar6 = lVar6 + -0x10;
      func_0x00ee7738(lVar9 + -0x10,lVar6);
      lVar9 = plVar5[1] + -0x10;
      plVar5[1] = lVar9;
    } while (lVar8 != lVar6);
    lVar8 = *unaff_x19;
  }
  *unaff_x19 = lVar9;
  plVar5[1] = lVar8;
  lVar8 = unaff_x19[1];
  unaff_x19[1] = plVar5[2];
  plVar5[2] = lVar8;
  lVar8 = unaff_x19[2];
  unaff_x19[2] = plVar5[3];
  plVar5[3] = lVar8;
  *plVar5 = plVar5[1];
  return;
}

