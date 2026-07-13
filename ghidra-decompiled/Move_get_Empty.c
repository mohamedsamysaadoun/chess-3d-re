// Function: Move_get_Empty
// RVA: 0xEE4670
// Description: Move.Empty getter
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


undefined8 Move_get_Empty(byte *param_1)

{
  ulong uVar1;
  undefined4 *puVar2;
  char *pcVar3;
  byte bVar4;
  long lVar5;
  undefined8 uVar6;
  long *plVar7;
  int *piVar8;
  byte *in_x9;
  byte *pbVar9;
  int *piVar10;
  char *pcVar11;
  byte *in_x10;
  uint in_w11;
  long lVar12;
  long *unaff_x19;
  long lVar13;
  int *piVar14;
  long lVar15;
  undefined4 unaff_w23;
  ulong unaff_x24;
  ulong unaff_x25;
  int iVar16;
  ulong uVar17;
  
code_r0x00ee4670:
  if (in_w11 != 9) {
    lVar12 = 1;
    goto code_r0x00ee4684;
  }
code_r0x00ee4678:
  lVar12 = 2;
code_r0x00ee4684:
  if ((param_1 <= in_x10 + lVar12) || (in_x10[lVar12] != 0x5d)) {
    if ((in_w11 == 0x20) || (in_w11 == 9)) {
      lVar12 = 2;
    }
    else {
      lVar12 = 1;
    }
    if ((in_x10 + lVar12 < param_1) && (in_x10[lVar12] == 0x2c)) goto code_r0x00ee4704;
    if ((in_w11 == 0x20) || (in_w11 == 9)) {
      lVar12 = 2;
    }
    else {
      lVar12 = 1;
    }
    if ((in_x10 + lVar12 < param_1) && (in_x10[lVar12] == 0x2a)) goto code_r0x00ee4704;
    goto code_r0x00ee4984;
  }
code_r0x00ee4704:
  unaff_x19[2] = (long)in_x9;
  if (in_x9 < param_1) {
    while ((*in_x9 == 0x20 || (*in_x9 == 9))) {
      in_x9 = in_x9 + 1;
      unaff_x19[2] = (long)in_x9;
      if (param_1 == in_x9) goto code_r0x00ee497c;
    }
  }
  if (in_x9 < param_1) {
    iVar16 = 1;
    do {
      bVar4 = *in_x9;
      if (bVar4 == 0x2a) {
        lVar12 = *unaff_x19;
        puVar2 = *(undefined4 **)(lVar12 + 0xa8);
        if (puVar2 < *(undefined4 **)(lVar12 + 0xb0)) {
          *puVar2 = unaff_w23;
          *(undefined4 **)(lVar12 + 0xa8) = puVar2 + 1;
        }
        else {
          lVar13 = *(long *)(lVar12 + 0xa0);
          lVar15 = (long)puVar2 - lVar13;
          uVar1 = (lVar15 >> 2) + 1;
          if (uVar1 >> 0x3e != 0) goto code_r0x00ee49a4;
          lVar5 = (long)*(undefined4 **)(lVar12 + 0xb0) - lVar13;
          uVar17 = lVar5 >> 1;
          if (uVar1 <= uVar17) {
            uVar1 = uVar17;
          }
          if (unaff_x24 <= (ulong)(lVar5 >> 2)) {
            uVar1 = unaff_x25;
          }
          if (uVar1 == 0) {
            lVar5 = 0;
          }
          else {
            if (uVar1 >> 0x3e != 0) goto code_r0x00ee49a8;
            lVar5 = func_0x0210a200(uVar1 << 2);
          }
          puVar2 = (undefined4 *)(lVar5 + (lVar15 >> 2) * 4);
          *puVar2 = unaff_w23;
          if (0 < lVar15) {
            func_0x02109df0(lVar5,lVar13,lVar15);
          }
          *(long *)(lVar12 + 0xa0) = lVar5;
          *(undefined4 **)(lVar12 + 0xa8) = puVar2 + 1;
          *(ulong *)(lVar12 + 0xb0) = lVar5 + uVar1 * 4;
          if (lVar13 != 0) {
            func_0x0210a180(lVar13);
          }
        }
        param_1 = (byte *)unaff_x19[3];
        in_x9 = (byte *)(unaff_x19[2] + 1);
        unaff_x19[2] = (long)in_x9;
        if (in_x9 < param_1) {
          while ((*in_x9 == 0x20 || (*in_x9 == 9))) {
            in_x9 = in_x9 + 1;
            unaff_x19[2] = (long)in_x9;
            if (param_1 == in_x9) goto code_r0x00ee497c;
          }
        }
        if (param_1 <= in_x9) break;
      }
      else {
        if (bVar4 != 0x2c) goto code_r0x00ee4898;
        in_x9 = in_x9 + 1;
        unaff_x19[2] = (long)in_x9;
        if (in_x9 < param_1) {
          while ((*in_x9 == 0x20 || (*in_x9 == 9))) {
            in_x9 = in_x9 + 1;
            unaff_x19[2] = (long)in_x9;
            if (param_1 == in_x9) goto code_r0x00ee497c;
          }
        }
        if (param_1 <= in_x9) break;
        iVar16 = iVar16 + 1;
      }
      if (param_1 <= in_x9) break;
    } while( true );
  }
  goto code_r0x00ee497c;
code_r0x00ee4a1c:
  if (piVar10 != piVar8) {
    return 0;
  }
  goto code_r0x00ee4a2c;
code_r0x00ee4898:
  if (bVar4 == 0x5d) {
    pbVar9 = in_x9 + 1;
    unaff_x19[2] = (long)pbVar9;
    if (pbVar9 < param_1) {
      do {
        if ((*pbVar9 != 0x20) && (*pbVar9 != 9)) break;
        pbVar9 = pbVar9 + 1;
        unaff_x19[2] = (long)pbVar9;
      } while (param_1 != pbVar9);
    }
    lVar12 = *unaff_x19;
    piVar10 = *(int **)(lVar12 + 0xa8);
    if (piVar10 == *(int **)(lVar12 + 0xb0)) {
      lVar13 = *(long *)(lVar12 + 0xa0);
      lVar15 = (long)piVar10 - lVar13;
      uVar17 = lVar15 >> 2;
      uVar1 = uVar17 + 1;
      if (uVar1 >> 0x3e != 0) {
code_r0x00ee49a4:
        func_0x0210a3f0();
code_r0x00ee49a8:
        plVar7 = (long *)func_0x00ea7cf4(&UNK_006565eb);
        if ((char *)plVar7[3] <= (char *)plVar7[2]) {
          return 1;
        }
        if (*(char *)plVar7[2] != '&') {
          return 1;
        }
        lVar12 = *plVar7;
        piVar14 = *(int **)(lVar12 + 0xa0);
        piVar8 = *(int **)(lVar12 + 0xa8);
        piVar10 = piVar14;
        if (piVar14 != piVar8) goto code_r0x00ee4a04;
        goto code_r0x00ee4a1c;
      }
      if (uVar1 <= (ulong)(lVar15 >> 1)) {
        uVar1 = lVar15 >> 1;
      }
      if (unaff_x24 <= uVar17) {
        uVar1 = unaff_x25;
      }
      if (uVar1 == 0) {
        lVar5 = 0;
      }
      else {
        if (uVar1 >> 0x3e != 0) goto code_r0x00ee49a8;
        lVar5 = func_0x0210a200(uVar1 << 2);
      }
      piVar10 = (int *)(lVar5 + uVar17 * 4);
      *piVar10 = iVar16;
      if (0 < lVar15) {
        func_0x02109df0(lVar5,lVar13,lVar15);
      }
      *(long *)(lVar12 + 0xa0) = lVar5;
      *(int **)(lVar12 + 0xa8) = piVar10 + 1;
      *(ulong *)(lVar12 + 0xb0) = lVar5 + uVar1 * 4;
      if (lVar13 != 0) {
        func_0x0210a180(lVar13);
      }
    }
    else {
      *piVar10 = iVar16;
      *(int **)(lVar12 + 0xa8) = piVar10 + 1;
    }
    in_x10 = (byte *)unaff_x19[2];
    param_1 = (byte *)unaff_x19[3];
    if (in_x10 < param_1) {
      while ((*in_x10 == 0x20 || (*in_x10 == 9))) {
        in_x10 = in_x10 + 1;
        unaff_x19[2] = (long)in_x10;
        if (param_1 == in_x10) goto code_r0x00ee4984;
      }
    }
    if ((in_x10 < param_1) && (*in_x10 == 0x5b)) {
      in_x9 = in_x10 + 1;
      in_w11 = (uint)*in_x9;
      if (*in_x9 != 0x20) goto code_r0x00ee4670;
      goto code_r0x00ee4678;
    }
code_r0x00ee4984:
    uVar6 = 1;
  }
  else {
code_r0x00ee497c:
    uVar6 = 0;
  }
  return uVar6;
  while (piVar10 = piVar10 + 1, piVar8 != piVar10) {
code_r0x00ee4a04:
    if (*piVar10 == 0) goto code_r0x00ee4a1c;
  }
code_r0x00ee4a2c:
  if (piVar8 < *(int **)(lVar12 + 0xb0)) {
    *piVar8 = 0;
    *(int **)(lVar12 + 0xa8) = piVar8 + 1;
  }
  else {
    lVar13 = (long)piVar8 - (long)piVar14;
    uVar1 = (lVar13 >> 2) + 1;
    if (uVar1 >> 0x3e != 0) {
      func_0x0210a3f0();
code_r0x00ee4b28:
      lVar12 = func_0x00ea7cf4(&UNK_006565eb);
      if (*(char *)(lVar12 + 9) != '\0') {
        pcVar11 = *(char **)(lVar12 + 0x10);
        pcVar3 = *(char **)(lVar12 + 0x18);
        if ((pcVar11 < pcVar3) && (*pcVar11 == ',')) {
          pcVar11 = pcVar11 + 1;
          *(char **)(lVar12 + 0x10) = pcVar11;
          if (pcVar3 <= pcVar11) {
            return 0;
          }
          do {
            if ((*pcVar11 != ' ') && (*pcVar11 != '\t')) break;
            pcVar11 = pcVar11 + 1;
            *(char **)(lVar12 + 0x10) = pcVar11;
          } while (pcVar3 != pcVar11);
          func_0x00ee4ba4();
        }
      }
      return 1;
    }
    lVar15 = (long)*(int **)(lVar12 + 0xb0) - (long)piVar14;
    uVar17 = lVar15 >> 1;
    if (uVar1 <= uVar17) {
      uVar1 = uVar17;
    }
    if (0x1ffffffffffffffe < (ulong)(lVar15 >> 2)) {
      uVar1 = 0x3fffffffffffffff;
    }
    if (uVar1 == 0) {
      lVar15 = 0;
    }
    else {
      if (uVar1 >> 0x3e != 0) goto code_r0x00ee4b28;
      lVar15 = func_0x0210a200(uVar1 << 2);
    }
    puVar2 = (undefined4 *)(lVar15 + (lVar13 >> 2) * 4);
    *puVar2 = 0;
    if (0 < lVar13) {
      func_0x02109df0(lVar15,piVar14,lVar13);
    }
    *(long *)(lVar12 + 0xa0) = lVar15;
    *(undefined4 **)(lVar12 + 0xa8) = puVar2 + 1;
    *(ulong *)(lVar12 + 0xb0) = lVar15 + uVar1 * 4;
    if (piVar14 != (int *)0x0) {
      func_0x0210a180(piVar14);
    }
  }
  pcVar11 = (char *)(plVar7[2] + 1);
  plVar7[2] = (long)pcVar11;
  if (pcVar11 < (char *)plVar7[3]) {
    do {
      if ((*pcVar11 != ' ') && (*pcVar11 != '\t')) {
        return 1;
      }
      pcVar11 = pcVar11 + 1;
      plVar7[2] = (long)pcVar11;
    } while ((char *)plVar7[3] != pcVar11);
  }
  return 1;
}

