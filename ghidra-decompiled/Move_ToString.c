// Function: Move_ToString
// RVA: 0xEE4BB8
// Description: Move.ToString
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


undefined8 Move_ToString(long *param_1)

{
  byte bVar1;
  ulong uVar2;
  ulong uVar3;
  byte *pbVar4;
  char *pcVar5;
  uint uVar6;
  ulong *puVar7;
  byte *unaff_x21;
  byte *pbVar8;
  long lVar9;
  ulong uVar10;
  
  pbVar8 = unaff_x21;
  do {
    bVar1 = *pbVar8;
    uVar6 = (uint)bVar1;
    if (bVar1 < 0x3d) {
      if (((uVar6 - 0x2a < 3) || (uVar6 == 0x22)) || (bVar1 == 0x26)) break;
    }
    else {
      switch(bVar1) {
      case 0x5b:
      case 0x5d:
      case 0x60:
        goto code_r0x00ee4c34;
      case 0x5c:
        pbVar8 = pbVar8 + 1;
        break;
      case 0x5e:
      case 0x5f:
        break;
      default:
        if (uVar6 == 0x3d) goto code_r0x00ee4c34;
      }
    }
    pbVar8 = pbVar8 + 1;
    param_1[2] = (long)pbVar8;
  } while (pbVar8 < (byte *)param_1[3]);
code_r0x00ee4c34:
  lVar9 = *param_1;
  uVar10 = (long)pbVar8 - (long)unaff_x21;
  puVar7 = (ulong *)(lVar9 + 0x30);
  bVar1 = *(byte *)puVar7;
  uVar3 = (ulong)bVar1;
  if ((bVar1 & 1) == 0) {
    if (uVar10 < 0x17) goto code_r0x00ee4c90;
    uVar3 = (ulong)(bVar1 >> 1);
    uVar2 = 0x16;
  }
  else {
    uVar3 = *puVar7;
    uVar2 = (uVar3 & 0xfffffffffffffffe) - 1;
    if (uVar10 <= uVar2) goto code_r0x00ee4c90;
    uVar3 = *(ulong *)(lVar9 + 0x38);
  }
  func_0x0210a960(puVar7,uVar2,uVar10 - uVar2,uVar3,0,uVar3,0);
  uVar3 = (ulong)*(byte *)puVar7;
code_r0x00ee4c90:
  if ((uVar3 & 1) == 0) {
    pbVar4 = (byte *)(lVar9 + 0x31);
  }
  else {
    pbVar4 = *(byte **)(lVar9 + 0x40);
  }
  for (; unaff_x21 != pbVar8; unaff_x21 = unaff_x21 + 1) {
    *pbVar4 = *unaff_x21;
    pbVar4 = pbVar4 + 1;
  }
  *pbVar4 = 0;
  if ((*(byte *)puVar7 & 1) == 0) {
    *(byte *)puVar7 = (byte)((int)uVar10 << 1);
  }
  else {
    *(ulong *)(lVar9 + 0x38) = uVar10;
  }
  pcVar5 = (char *)param_1[2];
  if (pcVar5 < (char *)param_1[3]) {
    do {
      if ((*pcVar5 != ' ') && (*pcVar5 != '\t')) break;
      pcVar5 = pcVar5 + 1;
      param_1[2] = (long)pcVar5;
    } while ((char *)param_1[3] != pcVar5);
  }
  func_0x00ee4e1c(param_1);
  return 1;
}

