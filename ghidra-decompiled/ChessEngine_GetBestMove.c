// Function: ChessEngine_GetBestMove
// RVA: 0xEE4948
// Description: PUBLIC API: Get best move
// Decompiled: 2026-07-13 14:49:26
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


undefined8 ChessEngine_GetBestMove(void)

{
  undefined4 *puVar1;
  char cVar2;
  char in_NG;
  char in_OV;
  long *plVar3;
  long lVar4;
  char *pcVar5;
  int *piVar6;
  char *pcVar7;
  int *piVar8;
  long lVar9;
  char *pcVar10;
  ulong uVar11;
  long lVar12;
  long *unaff_x19;
  long unaff_x20;
  int *piVar13;
  long unaff_x21;
  long lVar14;
  long unaff_x22;
  undefined4 unaff_w23;
  ulong unaff_x24;
  ulong unaff_x25;
  int unaff_w26;
  long unaff_x27;
  ulong unaff_x28;
  ulong uVar15;
  int *unaff_x29;
  
code_r0x00ee4948:
  *unaff_x29 = unaff_w26;
  if (in_NG == in_OV) {
    func_0x02109df0(unaff_x22,unaff_x20,unaff_x21);
  }
  *(long *)(unaff_x27 + 0xa0) = unaff_x22;
  *(int **)(unaff_x27 + 0xa8) = unaff_x29 + 1;
  *(ulong *)(unaff_x27 + 0xb0) = unaff_x22 + unaff_x28 * 4;
  if (unaff_x20 != 0) {
    func_0x0210a180(unaff_x20);
  }
code_r0x00ee4618:
  pcVar10 = (char *)unaff_x19[2];
  pcVar5 = (char *)unaff_x19[3];
  if (pcVar10 < pcVar5) {
    while ((*pcVar10 == ' ' || (*pcVar10 == '\t'))) {
      pcVar10 = pcVar10 + 1;
      unaff_x19[2] = (long)pcVar10;
      if (pcVar5 == pcVar10) {
        return 1;
      }
    }
  }
  if ((pcVar5 <= pcVar10) || (*pcVar10 != '[')) {
    return 1;
  }
  pcVar7 = pcVar10 + 1;
  cVar2 = *pcVar7;
  if ((cVar2 == ' ') || (cVar2 == '\t')) {
    lVar12 = 2;
  }
  else {
    lVar12 = 1;
  }
  if ((pcVar5 <= pcVar10 + lVar12) || (pcVar10[lVar12] != ']')) {
    if ((cVar2 == ' ') || (cVar2 == '\t')) {
      lVar12 = 2;
    }
    else {
      lVar12 = 1;
    }
    if ((pcVar5 <= pcVar10 + lVar12) || (pcVar10[lVar12] != ',')) {
      if ((cVar2 == ' ') || (cVar2 == '\t')) {
        lVar12 = 2;
      }
      else {
        lVar12 = 1;
      }
      if (pcVar5 <= pcVar10 + lVar12) {
        return 1;
      }
      if (pcVar10[lVar12] != '*') {
        return 1;
      }
    }
  }
  unaff_x19[2] = (long)pcVar7;
  if (pcVar7 < pcVar5) {
    while ((*pcVar7 == ' ' || (*pcVar7 == '\t'))) {
      pcVar7 = pcVar7 + 1;
      unaff_x19[2] = (long)pcVar7;
      if (pcVar5 == pcVar7) {
        return 0;
      }
    }
  }
  if (pcVar5 <= pcVar7) {
    return 0;
  }
  unaff_w26 = 1;
  do {
    cVar2 = *pcVar7;
    if (cVar2 == '*') {
      lVar12 = *unaff_x19;
      puVar1 = *(undefined4 **)(lVar12 + 0xa8);
      if (puVar1 < *(undefined4 **)(lVar12 + 0xb0)) {
        *puVar1 = unaff_w23;
        *(undefined4 **)(lVar12 + 0xa8) = puVar1 + 1;
      }
      else {
        lVar14 = *(long *)(lVar12 + 0xa0);
        lVar9 = (long)puVar1 - lVar14;
        uVar15 = (lVar9 >> 2) + 1;
        if (uVar15 >> 0x3e != 0) goto code_r0x00ee49a4;
        lVar4 = (long)*(undefined4 **)(lVar12 + 0xb0) - lVar14;
        uVar11 = lVar4 >> 1;
        if (uVar15 <= uVar11) {
          uVar15 = uVar11;
        }
        if (unaff_x24 <= (ulong)(lVar4 >> 2)) {
          uVar15 = unaff_x25;
        }
        if (uVar15 == 0) {
          lVar4 = 0;
        }
        else {
          if (uVar15 >> 0x3e != 0) goto code_r0x00ee49a8;
          lVar4 = func_0x0210a200(uVar15 << 2);
        }
        puVar1 = (undefined4 *)(lVar4 + (lVar9 >> 2) * 4);
        *puVar1 = unaff_w23;
        if (0 < lVar9) {
          func_0x02109df0(lVar4,lVar14,lVar9);
        }
        *(long *)(lVar12 + 0xa0) = lVar4;
        *(undefined4 **)(lVar12 + 0xa8) = puVar1 + 1;
        *(ulong *)(lVar12 + 0xb0) = lVar4 + uVar15 * 4;
        if (lVar14 != 0) {
          func_0x0210a180(lVar14);
        }
      }
      pcVar5 = (char *)unaff_x19[3];
      pcVar7 = (char *)(unaff_x19[2] + 1);
      unaff_x19[2] = (long)pcVar7;
      if (pcVar7 < pcVar5) {
        while ((*pcVar7 == ' ' || (*pcVar7 == '\t'))) {
          pcVar7 = pcVar7 + 1;
          unaff_x19[2] = (long)pcVar7;
          if (pcVar5 == pcVar7) {
            return 0;
          }
        }
      }
      if (pcVar5 <= pcVar7) {
        return 0;
      }
    }
    else {
      if (cVar2 != ',') break;
      pcVar7 = pcVar7 + 1;
      unaff_x19[2] = (long)pcVar7;
      if (pcVar7 < pcVar5) {
        while ((*pcVar7 == ' ' || (*pcVar7 == '\t'))) {
          pcVar7 = pcVar7 + 1;
          unaff_x19[2] = (long)pcVar7;
          if (pcVar5 == pcVar7) {
            return 0;
          }
        }
      }
      if (pcVar5 <= pcVar7) {
        return 0;
      }
      unaff_w26 = unaff_w26 + 1;
    }
    if (pcVar5 <= pcVar7) {
      return 0;
    }
  } while( true );
  if (cVar2 != ']') {
    return 0;
  }
  pcVar7 = pcVar7 + 1;
  unaff_x19[2] = (long)pcVar7;
  if (pcVar7 < pcVar5) {
    do {
      if ((*pcVar7 != ' ') && (*pcVar7 != '\t')) break;
      pcVar7 = pcVar7 + 1;
      unaff_x19[2] = (long)pcVar7;
    } while (pcVar5 != pcVar7);
  }
  unaff_x27 = *unaff_x19;
  piVar8 = *(int **)(unaff_x27 + 0xa8);
  if (piVar8 == *(int **)(unaff_x27 + 0xb0)) goto code_r0x00ee48f0;
  *piVar8 = unaff_w26;
  *(int **)(unaff_x27 + 0xa8) = piVar8 + 1;
  goto code_r0x00ee4618;
code_r0x00ee48f0:
  unaff_x20 = *(long *)(unaff_x27 + 0xa0);
  unaff_x21 = (long)piVar8 - unaff_x20;
  uVar15 = unaff_x21 >> 2;
  unaff_x28 = uVar15 + 1;
  if (unaff_x28 >> 0x3e == 0) {
    if (unaff_x28 <= (ulong)(unaff_x21 >> 1)) {
      unaff_x28 = unaff_x21 >> 1;
    }
    if (unaff_x24 <= uVar15) {
      unaff_x28 = unaff_x25;
    }
    if (unaff_x28 == 0) {
      unaff_x22 = 0;
    }
    else {
      if (unaff_x28 >> 0x3e != 0) goto code_r0x00ee49a8;
      unaff_x22 = func_0x0210a200(unaff_x28 << 2);
    }
    unaff_x29 = (int *)(unaff_x22 + uVar15 * 4);
    in_OV = SBORROW8(unaff_x21,1);
    in_NG = unaff_x21 + -1 < 0;
    goto code_r0x00ee4948;
  }
code_r0x00ee49a4:
  func_0x0210a3f0();
code_r0x00ee49a8:
  plVar3 = (long *)func_0x00ea7cf4(&UNK_006565eb);
  if (((char *)plVar3[2] < (char *)plVar3[3]) && (*(char *)plVar3[2] == '&')) {
    lVar12 = *plVar3;
    piVar13 = *(int **)(lVar12 + 0xa0);
    piVar6 = *(int **)(lVar12 + 0xa8);
    piVar8 = piVar13;
    if (piVar13 == piVar6) {
code_r0x00ee4a1c:
      if (piVar8 != piVar6) {
        return 0;
      }
    }
    else {
      do {
        if (*piVar8 == 0) goto code_r0x00ee4a1c;
        piVar8 = piVar8 + 1;
      } while (piVar6 != piVar8);
    }
    if (piVar6 < *(int **)(lVar12 + 0xb0)) {
      *piVar6 = 0;
      *(int **)(lVar12 + 0xa8) = piVar6 + 1;
    }
    else {
      lVar14 = (long)piVar6 - (long)piVar13;
      uVar15 = (lVar14 >> 2) + 1;
      if (uVar15 >> 0x3e != 0) {
        func_0x0210a3f0();
code_r0x00ee4b28:
        lVar12 = func_0x00ea7cf4(&UNK_006565eb);
        if (*(char *)(lVar12 + 9) != '\0') {
          pcVar10 = *(char **)(lVar12 + 0x10);
          pcVar5 = *(char **)(lVar12 + 0x18);
          if ((pcVar10 < pcVar5) && (*pcVar10 == ',')) {
            pcVar10 = pcVar10 + 1;
            *(char **)(lVar12 + 0x10) = pcVar10;
            if (pcVar5 <= pcVar10) {
              return 0;
            }
            do {
              if ((*pcVar10 != ' ') && (*pcVar10 != '\t')) break;
              pcVar10 = pcVar10 + 1;
              *(char **)(lVar12 + 0x10) = pcVar10;
            } while (pcVar5 != pcVar10);
            func_0x00ee4ba4();
          }
        }
        return 1;
      }
      lVar9 = (long)*(int **)(lVar12 + 0xb0) - (long)piVar13;
      uVar11 = lVar9 >> 1;
      if (uVar15 <= uVar11) {
        uVar15 = uVar11;
      }
      if (0x1ffffffffffffffe < (ulong)(lVar9 >> 2)) {
        uVar15 = 0x3fffffffffffffff;
      }
      if (uVar15 == 0) {
        lVar9 = 0;
      }
      else {
        if (uVar15 >> 0x3e != 0) goto code_r0x00ee4b28;
        lVar9 = func_0x0210a200(uVar15 << 2);
      }
      puVar1 = (undefined4 *)(lVar9 + (lVar14 >> 2) * 4);
      *puVar1 = 0;
      if (0 < lVar14) {
        func_0x02109df0(lVar9,piVar13,lVar14);
      }
      *(long *)(lVar12 + 0xa0) = lVar9;
      *(undefined4 **)(lVar12 + 0xa8) = puVar1 + 1;
      *(ulong *)(lVar12 + 0xb0) = lVar9 + uVar15 * 4;
      if (piVar13 != (int *)0x0) {
        func_0x0210a180(piVar13);
      }
    }
    pcVar10 = (char *)(plVar3[2] + 1);
    plVar3[2] = (long)pcVar10;
    if (pcVar10 < (char *)plVar3[3]) {
      do {
        if ((*pcVar10 != ' ') && (*pcVar10 != '\t')) {
          return 1;
        }
        pcVar10 = pcVar10 + 1;
        plVar3[2] = (long)pcVar10;
      } while ((char *)plVar3[3] != pcVar10);
    }
  }
  return 1;
}

