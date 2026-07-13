// Function: OpeningBook_ctor
// RVA: 0xEE3CE0
// Description: OpeningBook constructor
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


/* WARNING: Removing unreachable block (ram,0x00ee3f34) */

ulong OpeningBook_ctor(byte *param_1)

{
  long *plVar1;
  ulong *puVar2;
  undefined4 *puVar3;
  char cVar4;
  byte bVar5;
  uint uVar6;
  ulong uVar7;
  byte *pbVar8;
  long *plVar9;
  long lVar10;
  ulong uVar11;
  long lVar12;
  char *pcVar13;
  char *pcVar14;
  int *piVar15;
  uint uVar16;
  byte *in_x9;
  undefined8 uVar17;
  char *pcVar18;
  int *piVar19;
  uint in_w10;
  ulong uVar20;
  ulong *puVar21;
  long *unaff_x19;
  int *unaff_x20;
  long lVar22;
  int *piVar23;
  int iVar24;
  long *unaff_x21;
  long lVar25;
  ulong unaff_x22;
  long unaff_x23;
  byte *unaff_x25;
  long unaff_x26;
  long unaff_x27;
  byte *pbVar26;
  byte *pbVar27;
  undefined1 auVar28 [16];
  ulong in_stack_00000000;
  ulong in_stack_00000008;
  byte *in_stack_00000010;
  int iStack0000000000000018;
  ulong *in_stack_00000020;
  ulong *in_stack_00000028;
  undefined8 in_stack_00000030;
  undefined1 *puStack_198;
  undefined2 uStack_190;
  char *pcStack_188;
  char *pcStack_180;
  undefined1 auStack_178 [16];
  long lStack_168;
  undefined1 auStack_150 [140];
  undefined8 uStack_c4;
  undefined8 uStack_bc;
  undefined8 uStack_b4;
  undefined8 uStack_ac;
  undefined8 uStack_a4;
  undefined8 uStack_9c;
  undefined8 uStack_94;
  undefined8 uStack_8c;
  undefined8 uStack_84;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined8 uStack_70;
  long lStack_68;
  byte *pbStack_60;
  undefined *puStack_58;
  byte *pbStack_50;
  long lStack_48;
  
  while (in_w10 == 0x2b) {
    pbVar26 = in_x9 + 1;
    unaff_x19[2] = (long)pbVar26;
    pbVar27 = pbVar26;
    if (param_1 <= pbVar26) {
code_r0x00ee3f50:
      uVar16 = 0;
      goto code_r0x00ee3f54;
    }
    do {
      bVar5 = *pbVar27;
      uVar16 = (uint)bVar5;
      if (bVar5 < 0x2e) {
        if (((uVar16 - 0x2a < 3) || (uVar16 == 0x22)) || (bVar5 == 0x26)) break;
      }
      else {
        uVar6 = bVar5 - 0x5b;
        if (uVar6 < 6) {
                    /* WARNING: Could not recover jumptable at 0x00ee3d20. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          uVar7 = (*(code *)(&UNK_00ee3d24 + (ulong)*(byte *)(unaff_x26 + (ulong)uVar6) * 4))();
          return uVar7;
        }
        if ((uVar16 == 0x2e) || (uVar16 == 0x3d)) break;
      }
      pbVar27 = pbVar27 + 1;
      unaff_x19[2] = (long)pbVar27;
    } while (pbVar27 < param_1);
    if ((pbVar27 < param_1) && (*pbVar27 == 0x60)) {
      unaff_x19[2] = (long)(pbVar27 + 1);
      if (pbVar27 + 1 < param_1) {
        _iStack0000000000000018 = (ulong *)((ulong)_iStack0000000000000018 & 0xffffffff00000000);
        uVar7 = func_0x00ee4d24();
        if ((uVar7 & 1) != 0) {
          *unaff_x20 = *unaff_x20 + iStack0000000000000018;
          pbVar27 = (byte *)unaff_x19[2];
          goto code_r0x00ee3db8;
        }
      }
      goto code_r0x00ee3f50;
    }
code_r0x00ee3db8:
    uVar7 = (long)pbVar27 - (long)pbVar26;
    if (0xffffffffffffffef < uVar7) {
      func_0x0210a210();
code_r0x00ee3f80:
      uVar17 = func_0x0210a3f0(unaff_x21);
      if ((in_stack_00000000 & 1) != 0) {
        func_0x0210a180(in_stack_00000010);
      }
      auVar28 = func_0x00fae398(uVar17);
      plVar9 = auVar28._0_8_;
      puStack_58 = &UNK_00ee3fa8;
      lVar10 = tpidr_el0;
      lStack_68 = *(long *)(lVar10 + 0x28);
      pcVar13 = (char *)plVar9[2];
      pcVar14 = (char *)plVar9[3];
      pbStack_60 = pbVar27;
      pbStack_50 = pbVar26;
      lStack_48 = unaff_x27;
      if (pcVar13 < pcVar14) goto code_r0x00ee3fe4;
      goto code_r0x00ee400c;
    }
    unaff_x27 = *unaff_x19;
    if (uVar7 < 0x17) {
      in_stack_00000000 = CONCAT71(in_stack_00000000._1_7_,(char)((int)uVar7 << 1));
      pbVar8 = unaff_x25;
    }
    else {
      unaff_x21 = (long *)(uVar7 + 0x10 & 0xfffffffffffffff0);
      pbVar8 = (byte *)func_0x0210a200(unaff_x21);
      in_stack_00000000 = (ulong)unaff_x21 | 1;
      in_stack_00000010 = pbVar8;
      in_stack_00000008 = uVar7;
    }
    for (; pbVar26 != pbVar27; pbVar26 = pbVar26 + 1) {
      *pbVar8 = *pbVar26;
      pbVar8 = pbVar8 + 1;
    }
    *pbVar8 = 0;
    puVar2 = *(ulong **)(unaff_x27 + 0xd8);
    if (puVar2 < *(ulong **)(unaff_x27 + 0xe0)) {
      puVar2[2] = (ulong)in_stack_00000010;
      puVar2[1] = in_stack_00000008;
      *puVar2 = in_stack_00000000;
      *(ulong **)(unaff_x27 + 0xd8) = puVar2 + 3;
    }
    else {
      unaff_x21 = (long *)(unaff_x27 + 0xd0);
      lVar10 = ((long)puVar2 - *unaff_x21 >> 3) * unaff_x23;
      uVar7 = lVar10 + 1;
      if (unaff_x22 < uVar7) goto code_r0x00ee3f80;
      uVar11 = ((long)*(ulong **)(unaff_x27 + 0xe0) - *unaff_x21 >> 3) * unaff_x23;
      uVar20 = uVar11 * 2;
      if (uVar7 <= uVar20) {
        uVar7 = uVar20;
      }
      if (0x555555555555554 < uVar11) {
        uVar7 = unaff_x22;
      }
      func_0x00ea7c5c(&stack0x00000018,uVar7,lVar10,unaff_x27 + 0xe0);
      in_stack_00000028[2] = (ulong)in_stack_00000010;
      in_stack_00000028[1] = in_stack_00000008;
      *in_stack_00000028 = in_stack_00000000;
      in_stack_00000008 = 0;
      in_stack_00000010 = (byte *)0x0;
      in_stack_00000000 = 0;
      puVar2 = in_stack_00000028 + 3;
      _iStack0000000000000018 = *(ulong **)(unaff_x27 + 0xd0);
      puVar21 = *(ulong **)(unaff_x27 + 0xd8);
      in_stack_00000028 = _iStack0000000000000018;
      if (puVar21 != _iStack0000000000000018) {
        do {
          uVar11 = puVar21[-2];
          uVar7 = puVar21[-3];
          in_stack_00000020[-1] = puVar21[-1];
          in_stack_00000020[-2] = uVar11;
          in_stack_00000020[-3] = uVar7;
          puVar21[-2] = 0;
          puVar21[-1] = 0;
          puVar21[-3] = 0;
          puVar21 = puVar21 + -3;
          in_stack_00000020 = in_stack_00000020 + -3;
        } while (_iStack0000000000000018 != puVar21);
        _iStack0000000000000018 = (ulong *)*unaff_x21;
        in_stack_00000028 = *(ulong **)(unaff_x27 + 0xd8);
      }
      *(ulong **)(unaff_x27 + 0xd0) = in_stack_00000020;
      *(ulong **)(unaff_x27 + 0xd8) = puVar2;
      uVar17 = *(undefined8 *)(unaff_x27 + 0xe0);
      *(undefined8 *)(unaff_x27 + 0xe0) = in_stack_00000030;
      in_stack_00000020 = _iStack0000000000000018;
      in_stack_00000030 = uVar17;
      func_0x00ea7ccc(&stack0x00000018);
    }
    in_x9 = (byte *)unaff_x19[2];
    param_1 = (byte *)unaff_x19[3];
    if (param_1 <= in_x9) break;
    in_w10 = (uint)*in_x9;
  }
  uVar16 = 1;
code_r0x00ee3f54:
  return (ulong)uVar16;
  while( true ) {
    pcVar13 = pcVar13 + 1;
    plVar9[2] = (long)pcVar13;
    if (pcVar14 == pcVar13) break;
code_r0x00ee3fe4:
    if ((*pcVar13 != ' ') && (*pcVar13 != '\t')) goto code_r0x00ee400c;
  }
code_r0x00ee40c4:
  uVar7 = 1;
code_r0x00ee40c8:
  if (*(long *)(lVar10 + 0x28) == lStack_68) {
    return uVar7;
  }
code_r0x00ee4454:
  uVar17 = func_0x02109e70(uVar7);
  func_0x00ee5494(auStack_150);
  plVar9 = (long *)func_0x00fae398(uVar17);
  pcVar13 = (char *)plVar9[2];
  pcVar14 = (char *)plVar9[3];
  if (pcVar14 <= pcVar13) {
    return 1;
  }
  do {
    if (pcVar14 <= pcVar13) {
      return 1;
    }
    if (*pcVar13 != '*') {
      return 1;
    }
    lVar10 = *plVar9;
    puVar3 = *(undefined4 **)(lVar10 + 0xa8);
    if (puVar3 < *(undefined4 **)(lVar10 + 0xb0)) {
      *puVar3 = 0xffffffff;
      *(undefined4 **)(lVar10 + 0xa8) = puVar3 + 1;
    }
    else {
      lVar22 = *(long *)(lVar10 + 0xa0);
      lVar25 = (long)puVar3 - lVar22;
      uVar7 = (lVar25 >> 2) + 1;
      if (uVar7 >> 0x3e != 0) {
        func_0x0210a3f0();
code_r0x00ee45e4:
        plVar9 = (long *)func_0x00ea7cf4(&UNK_006565eb);
        goto code_r0x00ee4618;
      }
      lVar12 = (long)*(undefined4 **)(lVar10 + 0xb0) - lVar22;
      uVar11 = lVar12 >> 1;
      if (uVar7 <= uVar11) {
        uVar7 = uVar11;
      }
      if (0x1ffffffffffffffe < (ulong)(lVar12 >> 2)) {
        uVar7 = 0x3fffffffffffffff;
      }
      if (uVar7 == 0) {
        lVar12 = 0;
      }
      else {
        if (uVar7 >> 0x3e != 0) goto code_r0x00ee45e4;
        lVar12 = func_0x0210a200(uVar7 << 2);
      }
      puVar3 = (undefined4 *)(lVar12 + (lVar25 >> 2) * 4);
      *puVar3 = 0xffffffff;
      if (0 < lVar25) {
        func_0x02109df0(lVar12,lVar22,lVar25);
      }
      *(long *)(lVar10 + 0xa0) = lVar12;
      *(undefined4 **)(lVar10 + 0xa8) = puVar3 + 1;
      *(ulong *)(lVar10 + 0xb0) = lVar12 + uVar7 * 4;
      if (lVar22 != 0) {
        func_0x0210a180(lVar22);
      }
    }
    pcVar14 = (char *)plVar9[3];
    pcVar13 = (char *)(plVar9[2] + 1);
    plVar9[2] = (long)pcVar13;
    if (pcVar13 < pcVar14) {
      while ((*pcVar13 == ' ' || (*pcVar13 == '\t'))) {
        pcVar13 = pcVar13 + 1;
        plVar9[2] = (long)pcVar13;
        if (pcVar14 == pcVar13) {
          return 1;
        }
      }
    }
    if (pcVar14 <= pcVar13) {
      return 1;
    }
  } while( true );
code_r0x00ee400c:
  if ((pcVar13 < pcVar14) && (*pcVar13 == '[')) {
    pcVar18 = pcVar13 + 1;
    cVar4 = *pcVar18;
    if ((cVar4 == ' ') || (cVar4 == '\t')) {
      lVar22 = 2;
    }
    else {
      lVar22 = 1;
    }
    if ((pcVar14 <= pcVar13 + lVar22) || (pcVar13[lVar22] != ']')) {
      if ((cVar4 == ' ') || (cVar4 == '\t')) {
        lVar22 = 2;
      }
      else {
        lVar22 = 1;
      }
      if ((pcVar14 <= pcVar13 + lVar22) || (pcVar13[lVar22] != ',')) {
        if ((cVar4 == ' ') || (cVar4 == '\t')) {
          lVar22 = 2;
        }
        else {
          lVar22 = 1;
        }
        if ((pcVar14 <= pcVar13 + lVar22) || (pcVar13[lVar22] != '*')) {
          plVar9[2] = (long)pcVar18;
          if (pcVar18 < pcVar14) {
            do {
              if ((*pcVar18 != ' ') && (*pcVar18 != '\t')) goto ChessEngine_ParseFEN;
              pcVar18 = pcVar18 + 1;
              uVar7 = 0;
              plVar9[2] = (long)pcVar18;
            } while (pcVar14 != pcVar18);
          }
          else {
ChessEngine_ParseFEN:
            if (pcVar18 < pcVar14) {
              func_0x00ee4d94(*plVar9 + 0xb8,(long)*auVar28._8_8_);
              while( true ) {
                pcVar13 = (char *)plVar9[2];
                pcVar14 = (char *)plVar9[3];
                if ((pcVar13 < pcVar14) && (*pcVar13 == '[')) {
                  pcVar18 = pcVar13 + 1;
                  plVar9[2] = (long)pcVar18;
                  pcVar13 = pcVar18;
                  if (pcVar18 < pcVar14) {
                    while ((*pcVar18 == ' ' || (*pcVar18 == '\t'))) {
                      pcVar18 = pcVar18 + 1;
                      uVar7 = 0;
                      pcVar13 = pcVar13 + 1;
                      plVar9[2] = (long)pcVar18;
                      if (pcVar14 == pcVar18) goto code_r0x00ee40c8;
                    }
                  }
                  if (pcVar14 <= pcVar18) goto code_r0x00ee4444;
                  iVar24 = 1;
                }
                else {
                  iVar24 = 0;
                }
                func_0x02109e80(auStack_150,0,0x89);
                uStack_bc = 0;
                uStack_c4 = 0;
                uStack_ac = 0;
                uStack_b4 = 0;
                uStack_9c = 0;
                uStack_a4 = 0;
                uStack_8c = 0;
                uStack_94 = 0;
                uStack_7c = 0;
                uStack_84 = 0;
                uStack_70 = 0;
                uStack_78 = 0;
                uStack_74 = 0;
                uStack_190 = 0x101;
                puStack_198 = auStack_150;
                pcStack_188 = pcVar13;
                pcStack_180 = pcVar14;
                uVar7 = func_0x00ee38a8(&puStack_198,iVar24);
                if ((uVar7 & 1) == 0) goto code_r0x00ee443c;
                lVar25 = *plVar9;
                plVar9[2] = (long)pcStack_188;
                lVar22 = *(long *)(lVar25 + 0xc0);
                if (lVar22 == *(long *)(lVar25 + 200)) {
                  plVar1 = (long *)(lVar25 + 0xb8);
                  lVar22 = lVar22 - *plVar1 >> 3;
                  uVar11 = lVar22 * 0x34f72c234f72c235;
                  uVar7 = uVar11 + 1;
                  if (0x11a7b9611a7b961 < uVar7) {
                    uVar7 = func_0x0210a3f0(plVar1);
                    goto code_r0x00ee4454;
                  }
                  uVar20 = lVar22 * 0x69ee58469ee5846a;
                  if (uVar7 <= uVar20) {
                    uVar7 = uVar20;
                  }
                  if (0x8d3dcb08d3dcaf < uVar11) {
                    uVar7 = 0x11a7b9611a7b961;
                  }
                  func_0x00ee86b4(auStack_178,uVar7,uVar11,lVar25 + 200);
                  func_0x00ee8800(lStack_168,auStack_150);
                  lStack_168 = lStack_168 + 0xe8;
                  func_0x00ee8728(plVar1,auStack_178);
                  func_0x00ee87b4(auStack_178);
                }
                else {
                  func_0x00ee8800(lVar22,auStack_150);
                  *(long *)(lVar25 + 0xc0) = lVar22 + 0xe8;
                }
                pcVar13 = (char *)plVar9[2];
                pcVar14 = (char *)plVar9[3];
                if (pcVar13 < pcVar14) {
                  while ((*pcVar13 == ' ' || (*pcVar13 == '\t'))) {
                    pcVar13 = pcVar13 + 1;
                    plVar9[2] = (long)pcVar13;
                    if (pcVar14 == pcVar13) goto code_r0x00ee443c;
                  }
                }
                if (pcVar14 <= pcVar13) goto code_r0x00ee443c;
                if (iVar24 != 0) {
                  if (*pcVar13 != ']') goto code_r0x00ee443c;
                  pcVar13 = pcVar13 + 1;
                  plVar9[2] = (long)pcVar13;
                  if (pcVar13 < pcVar14) {
                    while ((*pcVar13 == ' ' || (*pcVar13 == '\t'))) {
                      pcVar13 = pcVar13 + 1;
                      plVar9[2] = (long)pcVar13;
                      if (pcVar14 == pcVar13) goto code_r0x00ee443c;
                    }
                  }
                  if (pcVar14 <= pcVar13) goto code_r0x00ee443c;
                }
                if (pcVar14 <= pcVar13) goto code_r0x00ee443c;
                if (*pcVar13 != ',') break;
                pcVar13 = pcVar13 + 1;
                plVar9[2] = (long)pcVar13;
                if (pcVar13 < pcVar14) {
                  while ((*pcVar13 == ' ' || (*pcVar13 == '\t'))) {
                    pcVar13 = pcVar13 + 1;
                    plVar9[2] = (long)pcVar13;
                    if (pcVar14 == pcVar13) goto code_r0x00ee443c;
                  }
                }
                if (pcVar14 <= pcVar13) goto code_r0x00ee443c;
                func_0x00ee5494(auStack_150);
              }
              if (*pcVar13 == ']') {
                func_0x00ee5494(auStack_150);
                if ((*(long *)(*plVar9 + 0xc0) - *(long *)(*plVar9 + 0xb8) >> 3) *
                    0x34f72c234f72c235 - (long)*auVar28._8_8_ != 0) goto code_r0x00ee4444;
                pcVar13 = (char *)(plVar9[2] + 1);
                plVar9[2] = (long)pcVar13;
                if ((char *)plVar9[3] <= pcVar13) goto code_r0x00ee40c4;
                uVar7 = 1;
                goto code_r0x00ee4414;
              }
code_r0x00ee443c:
              func_0x00ee5494(auStack_150);
            }
code_r0x00ee4444:
            uVar7 = 0;
          }
          goto code_r0x00ee40c8;
        }
      }
    }
  }
  goto code_r0x00ee40c4;
  while( true ) {
    pcVar13 = pcVar13 + 1;
    plVar9[2] = (long)pcVar13;
    if ((char *)plVar9[3] == pcVar13) break;
code_r0x00ee4414:
    if ((*pcVar13 != ' ') && (*pcVar13 != '\t')) goto code_r0x00ee40c4;
  }
  goto code_r0x00ee40c8;
code_r0x00ee4618:
  pcVar13 = (char *)plVar9[2];
  pcVar14 = (char *)plVar9[3];
  if (pcVar13 < pcVar14) {
    while ((*pcVar13 == ' ' || (*pcVar13 == '\t'))) {
      pcVar13 = pcVar13 + 1;
      plVar9[2] = (long)pcVar13;
      if (pcVar14 == pcVar13) {
        return 1;
      }
    }
  }
  if ((pcVar14 <= pcVar13) || (*pcVar13 != '[')) {
    return 1;
  }
  pcVar18 = pcVar13 + 1;
  cVar4 = *pcVar18;
  if ((cVar4 == ' ') || (cVar4 == '\t')) {
    lVar10 = 2;
  }
  else {
    lVar10 = 1;
  }
  if ((pcVar14 <= pcVar13 + lVar10) || (pcVar13[lVar10] != ']')) {
    if ((cVar4 == ' ') || (cVar4 == '\t')) {
      lVar10 = 2;
    }
    else {
      lVar10 = 1;
    }
    if ((pcVar14 <= pcVar13 + lVar10) || (pcVar13[lVar10] != ',')) {
      if ((cVar4 == ' ') || (cVar4 == '\t')) {
        lVar10 = 2;
      }
      else {
        lVar10 = 1;
      }
      if (pcVar14 <= pcVar13 + lVar10) {
        return 1;
      }
      if (pcVar13[lVar10] != '*') {
        return 1;
      }
    }
  }
  plVar9[2] = (long)pcVar18;
  if (pcVar18 < pcVar14) {
    while ((*pcVar18 == ' ' || (*pcVar18 == '\t'))) {
      pcVar18 = pcVar18 + 1;
      plVar9[2] = (long)pcVar18;
      if (pcVar14 == pcVar18) {
        return 0;
      }
    }
  }
  if (pcVar14 <= pcVar18) {
    return 0;
  }
  iVar24 = 1;
  do {
    cVar4 = *pcVar18;
    if (cVar4 == '*') {
      lVar10 = *plVar9;
      puVar3 = *(undefined4 **)(lVar10 + 0xa8);
      if (puVar3 < *(undefined4 **)(lVar10 + 0xb0)) {
        *puVar3 = 0xfffffffe;
        *(undefined4 **)(lVar10 + 0xa8) = puVar3 + 1;
      }
      else {
        lVar22 = *(long *)(lVar10 + 0xa0);
        lVar25 = (long)puVar3 - lVar22;
        uVar7 = (lVar25 >> 2) + 1;
        if (uVar7 >> 0x3e != 0) goto code_r0x00ee49a4;
        lVar12 = (long)*(undefined4 **)(lVar10 + 0xb0) - lVar22;
        uVar11 = lVar12 >> 1;
        if (uVar7 <= uVar11) {
          uVar7 = uVar11;
        }
        if (0x1ffffffffffffffe < (ulong)(lVar12 >> 2)) {
          uVar7 = 0x3fffffffffffffff;
        }
        if (uVar7 == 0) {
          lVar12 = 0;
        }
        else {
          if (uVar7 >> 0x3e != 0) goto code_r0x00ee49a8;
          lVar12 = func_0x0210a200(uVar7 << 2);
        }
        puVar3 = (undefined4 *)(lVar12 + (lVar25 >> 2) * 4);
        *puVar3 = 0xfffffffe;
        if (0 < lVar25) {
          func_0x02109df0(lVar12,lVar22,lVar25);
        }
        *(long *)(lVar10 + 0xa0) = lVar12;
        *(undefined4 **)(lVar10 + 0xa8) = puVar3 + 1;
        *(ulong *)(lVar10 + 0xb0) = lVar12 + uVar7 * 4;
        if (lVar22 != 0) {
          func_0x0210a180(lVar22);
        }
      }
      pcVar14 = (char *)plVar9[3];
      pcVar18 = (char *)(plVar9[2] + 1);
      plVar9[2] = (long)pcVar18;
      if (pcVar18 < pcVar14) {
        while ((*pcVar18 == ' ' || (*pcVar18 == '\t'))) {
          pcVar18 = pcVar18 + 1;
          plVar9[2] = (long)pcVar18;
          if (pcVar14 == pcVar18) {
            return 0;
          }
        }
      }
      if (pcVar14 <= pcVar18) {
        return 0;
      }
    }
    else {
      if (cVar4 != ',') break;
      pcVar18 = pcVar18 + 1;
      plVar9[2] = (long)pcVar18;
      if (pcVar18 < pcVar14) {
        while ((*pcVar18 == ' ' || (*pcVar18 == '\t'))) {
          pcVar18 = pcVar18 + 1;
          plVar9[2] = (long)pcVar18;
          if (pcVar14 == pcVar18) {
            return 0;
          }
        }
      }
      if (pcVar14 <= pcVar18) {
        return 0;
      }
      iVar24 = iVar24 + 1;
    }
    if (pcVar14 <= pcVar18) {
      return 0;
    }
  } while( true );
  if (cVar4 != ']') {
    return 0;
  }
  pcVar18 = pcVar18 + 1;
  plVar9[2] = (long)pcVar18;
  if (pcVar18 < pcVar14) {
    do {
      if ((*pcVar18 != ' ') && (*pcVar18 != '\t')) break;
      pcVar18 = pcVar18 + 1;
      plVar9[2] = (long)pcVar18;
    } while (pcVar14 != pcVar18);
  }
  lVar10 = *plVar9;
  piVar19 = *(int **)(lVar10 + 0xa8);
  if (piVar19 != *(int **)(lVar10 + 0xb0)) {
    *piVar19 = iVar24;
    *(int **)(lVar10 + 0xa8) = piVar19 + 1;
    goto code_r0x00ee4618;
  }
  lVar22 = *(long *)(lVar10 + 0xa0);
  lVar25 = (long)piVar19 - lVar22;
  uVar11 = lVar25 >> 2;
  uVar7 = uVar11 + 1;
  if (uVar7 >> 0x3e == 0) {
    if (uVar7 <= (ulong)(lVar25 >> 1)) {
      uVar7 = lVar25 >> 1;
    }
    if (0x1ffffffffffffffe < uVar11) {
      uVar7 = 0x3fffffffffffffff;
    }
    if (uVar7 == 0) {
      lVar12 = 0;
    }
    else {
      if (uVar7 >> 0x3e != 0) goto code_r0x00ee49a8;
      lVar12 = func_0x0210a200(uVar7 << 2);
    }
    piVar19 = (int *)(lVar12 + uVar11 * 4);
    *piVar19 = iVar24;
    if (0 < lVar25) {
      func_0x02109df0(lVar12,lVar22,lVar25);
    }
    *(long *)(lVar10 + 0xa0) = lVar12;
    *(int **)(lVar10 + 0xa8) = piVar19 + 1;
    *(ulong *)(lVar10 + 0xb0) = lVar12 + uVar7 * 4;
    if (lVar22 != 0) {
      func_0x0210a180(lVar22);
    }
    goto code_r0x00ee4618;
  }
code_r0x00ee49a4:
  func_0x0210a3f0();
code_r0x00ee49a8:
  plVar9 = (long *)func_0x00ea7cf4(&UNK_006565eb);
  if ((char *)plVar9[3] <= (char *)plVar9[2]) {
    return 1;
  }
  if (*(char *)plVar9[2] != '&') {
    return 1;
  }
  lVar10 = *plVar9;
  piVar23 = *(int **)(lVar10 + 0xa0);
  piVar15 = *(int **)(lVar10 + 0xa8);
  piVar19 = piVar23;
  if (piVar23 != piVar15) goto code_r0x00ee4a04;
code_r0x00ee4a1c:
  if (piVar19 != piVar15) {
    return 0;
  }
  goto code_r0x00ee4a2c;
  while (piVar19 = piVar19 + 1, piVar15 != piVar19) {
code_r0x00ee4a04:
    if (*piVar19 == 0) goto code_r0x00ee4a1c;
  }
code_r0x00ee4a2c:
  if (piVar15 < *(int **)(lVar10 + 0xb0)) {
    *piVar15 = 0;
    *(int **)(lVar10 + 0xa8) = piVar15 + 1;
  }
  else {
    lVar22 = (long)piVar15 - (long)piVar23;
    uVar7 = (lVar22 >> 2) + 1;
    if (uVar7 >> 0x3e != 0) {
      func_0x0210a3f0();
code_r0x00ee4b28:
      lVar10 = func_0x00ea7cf4(&UNK_006565eb);
      if (*(char *)(lVar10 + 9) != '\0') {
        pcVar13 = *(char **)(lVar10 + 0x10);
        pcVar14 = *(char **)(lVar10 + 0x18);
        if ((pcVar13 < pcVar14) && (*pcVar13 == ',')) {
          pcVar13 = pcVar13 + 1;
          *(char **)(lVar10 + 0x10) = pcVar13;
          if (pcVar14 <= pcVar13) {
            return 0;
          }
          do {
            if ((*pcVar13 != ' ') && (*pcVar13 != '\t')) break;
            pcVar13 = pcVar13 + 1;
            *(char **)(lVar10 + 0x10) = pcVar13;
          } while (pcVar14 != pcVar13);
          func_0x00ee4ba4();
        }
      }
      return 1;
    }
    lVar25 = (long)*(int **)(lVar10 + 0xb0) - (long)piVar23;
    uVar11 = lVar25 >> 1;
    if (uVar7 <= uVar11) {
      uVar7 = uVar11;
    }
    if (0x1ffffffffffffffe < (ulong)(lVar25 >> 2)) {
      uVar7 = 0x3fffffffffffffff;
    }
    if (uVar7 == 0) {
      lVar25 = 0;
    }
    else {
      if (uVar7 >> 0x3e != 0) goto code_r0x00ee4b28;
      lVar25 = func_0x0210a200(uVar7 << 2);
    }
    puVar3 = (undefined4 *)(lVar25 + (lVar22 >> 2) * 4);
    *puVar3 = 0;
    if (0 < lVar22) {
      func_0x02109df0(lVar25,piVar23,lVar22);
    }
    *(long *)(lVar10 + 0xa0) = lVar25;
    *(undefined4 **)(lVar10 + 0xa8) = puVar3 + 1;
    *(ulong *)(lVar10 + 0xb0) = lVar25 + uVar7 * 4;
    if (piVar23 != (int *)0x0) {
      func_0x0210a180(piVar23);
    }
  }
  pcVar13 = (char *)(plVar9[2] + 1);
  plVar9[2] = (long)pcVar13;
  if (pcVar13 < (char *)plVar9[3]) {
    do {
      if ((*pcVar13 != ' ') && (*pcVar13 != '\t')) {
        return 1;
      }
      pcVar13 = pcVar13 + 1;
      plVar9[2] = (long)pcVar13;
    } while ((char *)plVar9[3] != pcVar13);
  }
  return 1;
}

