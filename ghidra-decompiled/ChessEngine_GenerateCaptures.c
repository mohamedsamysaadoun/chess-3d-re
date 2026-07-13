// Function: ChessEngine_GenerateCaptures
// RVA: 0xEE6CB8
// Description: Generate capture moves
// Decompiled: 2026-07-13 14:49:26
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


/* WARNING: Possible PIC construction at 0x00ee6db4: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x00ee6db8) */

void ChessEngine_GenerateCaptures
               (undefined8 param_1,undefined8 param_2,undefined1 *param_3,long param_4)

{
  ulong uVar1;
  byte bVar2;
  undefined1 auVar3 [16];
  undefined1 *puVar4;
  undefined8 *puVar5;
  undefined8 uVar6;
  undefined8 extraout_x1;
  long lVar7;
  long unaff_x19;
  undefined8 unaff_x20;
  undefined8 unaff_x21;
  ulong unaff_x22;
  undefined8 unaff_x23;
  undefined *puVar8;
  undefined8 uVar9;
  undefined1 auVar10 [16];
  
  auVar3._8_8_ = unaff_x20;
  auVar3._0_8_ = unaff_x21;
  puVar8 = &UNK_00ee6cbc;
  auVar10 = func_0x00fae398();
  puVar4 = (undefined1 *)register0x00000008;
  while( true ) {
    lVar7 = param_4;
    *(undefined **)(puVar4 + -0x30) = puVar8;
    *(undefined8 *)(puVar4 + -0x28) = unaff_x23;
    *(ulong *)(puVar4 + -0x20) = unaff_x22;
    *(undefined1 (*) [16])(puVar4 + -0x18) = auVar3;
    *(long *)(puVar4 + -8) = unaff_x19;
    func_0x00f30f88(lVar7);
    func_0x00ec2654(puVar4 + -0xc0,param_3,&UNK_00650eca);
    puVar5 = (undefined8 *)func_0x0210a1a0(puVar4 + -0xc0,extraout_x1);
    uVar9 = puVar5[1];
    uVar6 = *puVar5;
    *(undefined8 *)(puVar4 + -0x40) = puVar5[2];
    *(undefined8 *)(puVar4 + -0x48) = uVar9;
    *(undefined8 *)(puVar4 + -0x50) = uVar6;
    puVar5[1] = 0;
    puVar5[2] = 0;
    *puVar5 = 0;
    if ((puVar4[-0xc0] & 1) != 0) {
      func_0x0210a180(*(undefined8 *)(puVar4 + -0xb0));
    }
    bVar2 = puVar4[-0x50];
    unaff_x22 = (ulong)(bVar2 & 1);
    uVar1 = (ulong)(bVar2 >> 1);
    if ((bVar2 & 1) != 0) {
      uVar1 = *(ulong *)(puVar4 + -0x48);
    }
    uVar6 = func_0x00ef3bf8(uVar1 + 1,1);
    uVar1 = (ulong)(puVar4 + -0x50) | 1;
    if ((bVar2 & 1) != 0) {
      uVar1 = *(ulong *)(puVar4 + -0x40);
    }
    uVar6 = func_0x0210a3e0(uVar6,uVar1);
    *(undefined4 *)(puVar4 + -0x70) = 0;
    *(long *)(puVar4 + -0x68) = auVar10._8_8_;
    *(undefined8 *)(puVar4 + -0x60) = uVar6;
    *(long *)(puVar4 + -0x58) = lVar7;
    func_0x00ee6e24(auVar10._0_8_,1);
    func_0x00ee6f64(puVar4 + -0xc0,auVar10._0_8_,puVar4 + -0x70);
    *(undefined8 *)(puVar4 + -0xc0) = 0;
    param_4 = func_0x00f30f8c(lVar7,puVar4 + -0xc0);
    if (param_4 == 0) break;
    param_3 = puVar4 + -0x50;
    puVar8 = &UNK_00ee6db8;
    puVar4 = puVar4 + -0xc0;
    unaff_x19 = lVar7;
    unaff_x23 = extraout_x1;
    auVar3 = auVar10;
  }
  if ((puVar4[-0x50] & 1) != 0) {
    func_0x0210a180(*(undefined8 *)(puVar4 + -0x40));
  }
  return;
}

