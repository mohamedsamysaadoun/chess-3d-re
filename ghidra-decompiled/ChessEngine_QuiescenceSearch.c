// Function: ChessEngine_QuiescenceSearch
// RVA: 0xEE5290
// Description: Quiescence search
// Decompiled: 2026-07-13 14:49:26
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


undefined4 ChessEngine_QuiescenceSearch(undefined8 param_1,undefined8 param_2)

{
  ulong uVar1;
  undefined2 uVar2;
  long lVar3;
  undefined4 uVar4;
  undefined2 *unaff_x19;
  undefined2 *unaff_x21;
  undefined2 *unaff_x22;
  undefined2 *unaff_x23;
  ulong uVar5;
  ulong in_stack_00000008;
  undefined8 in_stack_00000010;
  ulong in_stack_00000018;
  ulong in_stack_00000020;
  undefined8 in_stack_00000028;
  ulong in_stack_00000030;
  
  func_0x0210a990(param_1,param_2,0);
  uVar5 = (ulong)&stack0x00000020 | 1;
  uVar1 = uVar5;
  if ((in_stack_00000020 & 1) != 0) {
    uVar1 = in_stack_00000030;
  }
  uVar2 = func_0x0210a740(uVar1);
  *unaff_x23 = uVar2;
  lVar3 = func_0x0210a980();
  if (lVar3 != -1) {
    func_0x0210a990(&stack0x00000008);
    if ((in_stack_00000020 & 1) != 0) {
      func_0x0210a180(in_stack_00000030);
    }
    in_stack_00000028 = in_stack_00000010;
    in_stack_00000020 = in_stack_00000008;
    in_stack_00000030 = in_stack_00000018;
    uVar1 = uVar5;
    if ((in_stack_00000008 & 1) != 0) {
      uVar1 = in_stack_00000018;
    }
    uVar2 = func_0x0210a740(uVar1);
    *unaff_x22 = uVar2;
    lVar3 = func_0x0210a980();
    if (lVar3 != -1) {
      func_0x0210a990(&stack0x00000008);
      if ((in_stack_00000020 & 1) != 0) {
        func_0x0210a180(in_stack_00000030);
      }
      in_stack_00000028 = in_stack_00000010;
      in_stack_00000020 = in_stack_00000008;
      in_stack_00000030 = in_stack_00000018;
      uVar1 = uVar5;
      if ((in_stack_00000008 & 1) != 0) {
        uVar1 = in_stack_00000018;
      }
      uVar2 = func_0x0210a740(uVar1);
      *unaff_x21 = uVar2;
      func_0x0210a990(&stack0x00000008);
      if ((in_stack_00000020 & 1) != 0) {
        func_0x0210a180(in_stack_00000030);
      }
      in_stack_00000028 = in_stack_00000010;
      in_stack_00000020 = in_stack_00000008;
      in_stack_00000030 = in_stack_00000018;
      if ((in_stack_00000008 & 1) != 0) {
        uVar5 = in_stack_00000018;
      }
      uVar2 = func_0x0210a740(uVar5);
      *unaff_x19 = uVar2;
      uVar4 = 1;
      goto code_r0x00ee5404;
    }
  }
  uVar4 = 0;
code_r0x00ee5404:
  if ((in_stack_00000020 & 1) != 0) {
    func_0x0210a180(in_stack_00000030);
  }
  return uVar4;
}

