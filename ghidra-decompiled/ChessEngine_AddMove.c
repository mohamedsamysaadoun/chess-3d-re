// Function: ChessEngine_AddMove
// RVA: 0xEE73D0
// Description: Add move to list
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


void ChessEngine_AddMove(void)

{
  long lVar1;
  ushort uVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  ulong uVar5;
  ulong uVar6;
  long in_x9;
  long lVar7;
  long unaff_x19;
  long unaff_x20;
  ulong unaff_x22;
  long unaff_x23;
  ulong uVar8;
  long in_stack_00000008;
  long in_stack_00000010;
  long in_stack_00000018;
  long in_stack_00000020;
  long lStack0000000000000030;
  long lStack0000000000000038;
  long in_stack_00000050;
  long in_stack_00000058;
  long in_stack_00000060;
  long in_stack_00000068;
  
  while ((((lStack0000000000000030 = in_x9, lStack0000000000000038 = in_x9, func_0x00ee7ac8(),
           in_stack_00000050 != in_stack_00000008 || (in_stack_00000058 != in_stack_00000010)) ||
          (in_stack_00000060 != in_stack_00000018)) ||
         ((in_stack_00000060 != in_stack_00000058 && (in_stack_00000068 != in_stack_00000020))))) {
    uVar5 = func_0x00ee7be0();
    lVar7 = 1;
    while( true ) {
      uVar5 = uVar5 & *(long *)(unaff_x19 + 0x60) - 1U;
      auVar3._8_8_ = 0;
      auVar3._0_8_ = uVar5;
      auVar4._8_8_ = 0;
      auVar4._0_8_ = unaff_x22;
      uVar8 = SUB168(auVar3 * auVar4,8) >> 5;
      uVar6 = uVar5 - uVar8 * unaff_x23;
      lVar1 = *(long *)(unaff_x19 + 0x48) + uVar8 * 0x10;
      if ((*(byte *)(lVar1 + (uVar6 >> 3) + 10) >> (uVar6 & 7) & 1) == 0) break;
      uVar5 = lVar7 + uVar5;
      lVar7 = lVar7 + 1;
    }
    uVar2 = *(ushort *)(lVar1 + 8);
    func_0x00ee7c94(lVar1,uVar6,in_stack_00000068);
    *(ulong *)(unaff_x19 + 0x68) =
         ((ulong)*(ushort *)(*(long *)(unaff_x19 + 0x48) + uVar8 * 0x10 + 8) - (ulong)uVar2) +
         *(long *)(unaff_x19 + 0x68);
    in_stack_00000068 = in_stack_00000068 + 0x20;
    func_0x00ece624();
    func_0x00ee7ac8(&stack0x00000048);
    in_stack_00000008 = *(long *)(unaff_x20 + 0x48);
    in_x9 = *(long *)(unaff_x20 + 0x50);
    in_stack_00000010 = in_x9;
    in_stack_00000018 = in_x9;
    in_stack_00000020 = 0;
  }
  *(int *)(unaff_x19 + 0x1c) = *(int *)(unaff_x19 + 0x1c) + 1;
  return;
}

