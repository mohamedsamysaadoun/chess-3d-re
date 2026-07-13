// Function: ChessEngine_UnmakeMove
// RVA: 0xEE6A98
// Description: Unmake move
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


/* WARNING: Possible PIC construction at 0x00ee6db4: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x00ee6db8) */

long ChessEngine_UnmakeMove
               (undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined1 *param_4,
               long param_5)

{
  byte bVar1;
  byte bVar2;
  undefined1 auVar3 [16];
  undefined1 *puVar4;
  bool bVar5;
  ulong uVar6;
  byte *pbVar7;
  long lVar8;
  undefined8 *puVar9;
  undefined8 uVar10;
  ulong extraout_x1;
  long lVar11;
  long unaff_x19;
  long unaff_x20;
  ulong unaff_x22;
  ulong unaff_x23;
  ulong uVar12;
  long unaff_x25;
  undefined *puVar13;
  undefined8 uVar14;
  undefined1 auVar15 [16];
  ulong in_stack_00000008;
  ulong in_stack_00000010;
  ulong in_stack_00000018;
  byte bStack0000000000000020;
  byte bStack0000000000000021;
  undefined6 uStack0000000000000022;
  undefined2 uStack0000000000000028;
  undefined6 uStack000000000000002a;
  ulong in_stack_00000030;
  undefined8 uStack0000000000000048;
  byte in_stack_00000058;
  ulong in_stack_00000060;
  ulong in_stack_00000068;
  undefined6 uStack0000000000000070;
  undefined2 uStack0000000000000076;
  undefined6 in_stack_00000078;
  byte in_stack_000000b0;
  ulong in_stack_000000b8;
  long in_stack_00000168;
  
  uStack0000000000000048 = param_1;
  uVar6 = func_0x00ee38a8(&stack0x00000038,1);
  if ((uVar6 & 1) == 0) {
code_r0x00ee6ac4:
    uVar6 = 1;
  }
  else {
    uVar6 = (ulong)(in_stack_000000b0 >> 1);
    if ((in_stack_000000b0 & 1) != 0) {
      uVar6 = in_stack_000000b8;
    }
    if (uVar6 != 0) goto code_r0x00ee6ac4;
    bStack0000000000000020 = 0;
    bStack0000000000000021 = 0;
    uStack0000000000000022 = 0;
    uStack0000000000000028 = 0;
    uStack000000000000002a = 0;
    in_stack_00000030 = 0;
    bVar5 = (in_stack_00000058 & 1) != 0;
    uVar6 = (ulong)(in_stack_00000058 >> 1);
    if (bVar5) {
      uVar6 = in_stack_00000060;
    }
    if (bVar5) {
      unaff_x22 = in_stack_00000068;
    }
    in_stack_00000008 = 0;
    in_stack_00000010 = 0;
    in_stack_00000018 = 0;
    if (0xffffffffffffffef < uVar6 + 2) {
      func_0x0210a210(&stack0x00000008);
      goto code_r0x00ee6c60;
    }
    if (uVar6 + 2 < 0x17) {
      unaff_x23 = (ulong)&stack0x00000008 | 1;
      in_stack_00000008 = (ulong)(byte)((int)uVar6 << 1);
      if (uVar6 != 0) goto code_r0x00ee6b8c;
    }
    else {
      uVar12 = uVar6 + 0x12 & 0xfffffffffffffff0;
      unaff_x23 = func_0x0210a200(uVar12);
      in_stack_00000008 = uVar12 | 1;
      in_stack_00000010 = uVar6;
      in_stack_00000018 = unaff_x23;
code_r0x00ee6b8c:
      func_0x02109df0(unaff_x23,unaff_x22,uVar6);
    }
    *(undefined1 *)(unaff_x23 + uVar6) = 0;
    param_4 = (undefined1 *)0x2;
    func_0x0210a1b0(&stack0x00000008,&UNK_006651f4,2);
    pbVar7 = (byte *)func_0x0210a1a0(&stack0x00000008,
                                     *(undefined8 *)**(undefined8 **)(unaff_x20 + 0x20));
    uVar6 = *(ulong *)(pbVar7 + 0x10);
    bVar2 = *pbVar7;
    bVar1 = pbVar7[1];
    unaff_x22 = (ulong)bVar1;
    in_stack_00000078 = (undefined6)((ulong)*(undefined8 *)(pbVar7 + 8) >> 0x10);
    uStack0000000000000070 = (undefined6)*(undefined8 *)(pbVar7 + 2);
    uStack0000000000000076 = (undefined2)((ulong)*(undefined8 *)(pbVar7 + 2) >> 0x30);
    pbVar7[0] = 0;
    pbVar7[1] = 0;
    pbVar7[2] = 0;
    pbVar7[3] = 0;
    pbVar7[4] = 0;
    pbVar7[5] = 0;
    pbVar7[6] = 0;
    pbVar7[7] = 0;
    pbVar7[8] = 0;
    pbVar7[9] = 0;
    pbVar7[10] = 0;
    pbVar7[0xb] = 0;
    pbVar7[0xc] = 0;
    pbVar7[0xd] = 0;
    pbVar7[0xe] = 0;
    pbVar7[0xf] = 0;
    pbVar7[0x10] = 0;
    pbVar7[0x11] = 0;
    pbVar7[0x12] = 0;
    pbVar7[0x13] = 0;
    pbVar7[0x14] = 0;
    pbVar7[0x15] = 0;
    pbVar7[0x16] = 0;
    pbVar7[0x17] = 0;
    if ((bStack0000000000000020 & 1) != 0) {
      func_0x0210a180(in_stack_00000030);
    }
    uStack0000000000000022 = uStack0000000000000070;
    uStack0000000000000028 = uStack0000000000000076;
    uStack000000000000002a = in_stack_00000078;
    bStack0000000000000020 = bVar2;
    bStack0000000000000021 = bVar1;
    in_stack_00000030 = uVar6;
    if ((in_stack_00000008 & 1) != 0) {
      func_0x0210a180(in_stack_00000018);
    }
    uVar6 = (ulong)&stack0x00000020 | 1;
    if ((bStack0000000000000020 & 1) != 0) {
      uVar6 = in_stack_00000030;
    }
    unaff_x20 = func_0x00f00764(uVar6);
    if ((bStack0000000000000020 & 1) != 0) {
      func_0x0210a180(in_stack_00000030);
    }
    uVar6 = 0;
  }
  func_0x00ee5494(&stack0x00000080);
  if ((in_stack_00000058 & 1) != 0) {
    func_0x0210a180(in_stack_00000068);
  }
  if ((int)uVar6 != 0) {
    unaff_x20 = unaff_x19;
  }
  if (*(long *)(unaff_x25 + 0x28) == in_stack_00000168) {
    return unaff_x20;
  }
code_r0x00ee6c60:
  auVar3._8_8_ = unaff_x20;
  auVar3._0_8_ = uVar6;
  lVar8 = func_0x02109e70();
  if ((bStack0000000000000020 & 1) != 0) {
    func_0x0210a180(in_stack_00000030);
  }
  func_0x00ee5494(&stack0x00000080);
  if ((in_stack_00000058 & 1) != 0) {
    func_0x0210a180(in_stack_00000068);
  }
  puVar13 = &UNK_00ee6cbc;
  auVar15 = func_0x00fae398(lVar8);
  puVar4 = (undefined1 *)register0x00000008;
  while( true ) {
    lVar11 = param_5;
    *(undefined **)(puVar4 + -0x30) = puVar13;
    *(ulong *)(puVar4 + -0x28) = unaff_x23;
    *(ulong *)(puVar4 + -0x20) = unaff_x22;
    *(undefined1 (*) [16])(puVar4 + -0x18) = auVar3;
    *(long *)(puVar4 + -8) = lVar8;
    func_0x00f30f88(lVar11);
    func_0x00ec2654(puVar4 + -0xc0,param_4,&UNK_00650eca);
    puVar9 = (undefined8 *)func_0x0210a1a0(puVar4 + -0xc0,extraout_x1);
    uVar14 = puVar9[1];
    uVar10 = *puVar9;
    *(undefined8 *)(puVar4 + -0x40) = puVar9[2];
    *(undefined8 *)(puVar4 + -0x48) = uVar14;
    *(undefined8 *)(puVar4 + -0x50) = uVar10;
    puVar9[1] = 0;
    puVar9[2] = 0;
    *puVar9 = 0;
    if ((puVar4[-0xc0] & 1) != 0) {
      func_0x0210a180(*(undefined8 *)(puVar4 + -0xb0));
    }
    bVar2 = puVar4[-0x50];
    unaff_x22 = (ulong)(bVar2 & 1);
    uVar6 = (ulong)(bVar2 >> 1);
    if ((bVar2 & 1) != 0) {
      uVar6 = *(ulong *)(puVar4 + -0x48);
    }
    uVar10 = func_0x00ef3bf8(uVar6 + 1,1);
    uVar6 = (ulong)(puVar4 + -0x50) | 1;
    if ((bVar2 & 1) != 0) {
      uVar6 = *(ulong *)(puVar4 + -0x40);
    }
    uVar10 = func_0x0210a3e0(uVar10,uVar6);
    *(undefined4 *)(puVar4 + -0x70) = 0;
    *(long *)(puVar4 + -0x68) = auVar15._8_8_;
    *(undefined8 *)(puVar4 + -0x60) = uVar10;
    *(long *)(puVar4 + -0x58) = lVar11;
    func_0x00ee6e24(auVar15._0_8_,1);
    func_0x00ee6f64(puVar4 + -0xc0,auVar15._0_8_,puVar4 + -0x70);
    *(undefined8 *)(puVar4 + -0xc0) = 0;
    param_5 = func_0x00f30f8c(lVar11,puVar4 + -0xc0);
    if (param_5 == 0) break;
    param_4 = puVar4 + -0x50;
    puVar13 = &UNK_00ee6db8;
    puVar4 = puVar4 + -0xc0;
    lVar8 = lVar11;
    unaff_x23 = extraout_x1;
    auVar3 = auVar15;
  }
  lVar8 = 0;
  if ((puVar4[-0x50] & 1) != 0) {
    lVar8 = func_0x0210a180(*(undefined8 *)(puVar4 + -0x40));
  }
  return lVar8;
}

