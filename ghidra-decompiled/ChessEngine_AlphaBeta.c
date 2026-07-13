// Function: ChessEngine_AlphaBeta
// RVA: 0xEE4E78
// Description: Alpha-beta search
// Decompiled: 2026-07-13 14:49:26
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


/* WARNING: Possible PIC construction at 0x00ee5038: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x00ee503c) */

undefined4
ChessEngine_AlphaBeta
          (char *param_1,undefined8 param_2,undefined8 param_3,undefined2 *param_4,
          undefined2 *param_5,undefined2 *param_6)

{
  bool bVar1;
  undefined2 uVar2;
  char *pcVar3;
  ulong uVar4;
  undefined8 uVar5;
  byte *pbVar6;
  long lVar7;
  long lVar8;
  char *in_x9;
  undefined4 uVar9;
  long *unaff_x19;
  undefined2 *unaff_x22;
  ulong uVar10;
  char *pcVar11;
  char *pcVar12;
  char *pcVar13;
  char *unaff_x27;
  char *unaff_x28;
  undefined *puVar14;
  undefined1 auVar15 [16];
  byte bStack0000000000000008;
  undefined7 uStack0000000000000009;
  ulong in_stack_00000010;
  char *in_stack_00000018;
  ulong in_stack_00000028;
  ulong in_stack_00000030;
  char *in_stack_00000038;
  ulong uStack_78;
  undefined8 uStack_70;
  ulong uStack_68;
  ulong uStack_60;
  undefined8 uStack_58;
  ulong uStack_50;
  undefined *puStack_40;
  char *pcStack_38;
  ulong uStack_30;
  
  do {
    if (*in_x9 != ',') {
      return 1;
    }
    pcVar13 = in_x9 + 1;
    unaff_x19[2] = (long)pcVar13;
    if (pcVar13 < param_1) {
      while ((*pcVar13 == ' ' || (*pcVar13 == '\t'))) {
        pcVar13 = pcVar13 + 1;
        unaff_x19[2] = (long)pcVar13;
        if (param_1 == pcVar13) {
          return 0;
        }
      }
    }
    pcVar12 = pcVar13;
    if (param_1 <= pcVar13) {
      return 0;
    }
    do {
      if (*pcVar12 == '=') break;
      pcVar12 = pcVar12 + 1;
      unaff_x19[2] = (long)pcVar12;
    } while (pcVar12 < param_1);
    uVar10 = (long)pcVar12 - (long)pcVar13;
    if (0xffffffffffffffef < uVar10) {
      func_0x0210a210(&stack0x00000028);
code_r0x00ee5208:
      uVar5 = func_0x0210a210(&stack0x00000008);
      if ((in_stack_00000028 & 1) != 0) {
        func_0x0210a180(in_stack_00000038);
      }
      puVar14 = &UNK_00ee5248;
      auVar15 = func_0x00fae398(uVar5);
code_r0x00ee5248:
      pbVar6 = auVar15._0_8_;
      puStack_40 = puVar14;
      pcStack_38 = pcVar12;
      uStack_30 = uVar10;
      lVar8 = func_0x0210a980(pbVar6,0x2e,0);
      if (lVar8 == -1) {
        return 0;
      }
      func_0x0210a990(&uStack_60,pbVar6,0,lVar8,pbVar6);
      uVar4 = (ulong)&uStack_60 | 1;
      uVar10 = uVar4;
      if ((uStack_60 & 1) != 0) {
        uVar10 = uStack_50;
      }
      uVar2 = func_0x0210a740(uVar10);
      lVar8 = lVar8 + 1;
      *auVar15._8_8_ = uVar2;
      lVar7 = func_0x0210a980(pbVar6,0x2e,lVar8);
      if (lVar7 != -1) {
        func_0x0210a990(&uStack_78,pbVar6,lVar8,lVar7 - lVar8,pbVar6);
        if ((uStack_60 & 1) != 0) {
          func_0x0210a180(uStack_50);
        }
        uStack_58 = uStack_70;
        uStack_60 = uStack_78;
        uStack_50 = uStack_68;
        uVar10 = uVar4;
        if ((uStack_78 & 1) != 0) {
          uVar10 = uStack_68;
        }
        uVar2 = func_0x0210a740(uVar10);
        lVar7 = lVar7 + 1;
        *param_4 = uVar2;
        lVar8 = func_0x0210a980(pbVar6,0x2e,lVar7);
        if (lVar8 != -1) {
          func_0x0210a990(&uStack_78,pbVar6,lVar7,lVar8 - lVar7,pbVar6);
          if ((uStack_60 & 1) != 0) {
            func_0x0210a180(uStack_50);
          }
          uStack_58 = uStack_70;
          uStack_60 = uStack_78;
          uStack_50 = uStack_68;
          uVar10 = uVar4;
          if ((uStack_78 & 1) != 0) {
            uVar10 = uStack_68;
          }
          uVar2 = func_0x0210a740(uVar10);
          *param_5 = uVar2;
          uVar10 = (ulong)(*pbVar6 >> 1);
          if ((*pbVar6 & 1) != 0) {
            uVar10 = *(ulong *)(pbVar6 + 8);
          }
          func_0x0210a990(&uStack_78,pbVar6,lVar8 + 1,uVar10 - (lVar8 + 1),pbVar6);
          if ((uStack_60 & 1) != 0) {
            func_0x0210a180(uStack_50);
          }
          uStack_58 = uStack_70;
          uStack_60 = uStack_78;
          uStack_50 = uStack_68;
          if ((uStack_78 & 1) != 0) {
            uVar4 = uStack_68;
          }
          uVar2 = func_0x0210a740(uVar4);
          *param_6 = uVar2;
          uVar9 = 1;
          goto code_r0x00ee5404;
        }
      }
      uVar9 = 0;
code_r0x00ee5404:
      if ((uStack_60 & 1) != 0) {
        func_0x0210a180(uStack_50);
      }
      return uVar9;
    }
    if (uVar10 < 0x17) {
      in_stack_00000028 = CONCAT71(in_stack_00000028._1_7_,(char)((int)uVar10 << 1));
      pcVar3 = unaff_x27;
    }
    else {
      uVar4 = uVar10 + 0x10 & 0xfffffffffffffff0;
      pcVar3 = (char *)func_0x0210a200(uVar4);
      in_stack_00000028 = uVar4 | 1;
      in_stack_00000038 = pcVar3;
      in_stack_00000030 = uVar10;
    }
    for (; pcVar13 != pcVar12; pcVar13 = pcVar13 + 1) {
      *pcVar3 = *pcVar13;
      pcVar3 = pcVar3 + 1;
    }
    *pcVar3 = '\0';
    pcVar13 = (char *)unaff_x19[2];
    pcVar3 = (char *)unaff_x19[3];
    if ((pcVar13 < pcVar3) && (*pcVar13 == '=')) {
      pcVar13 = pcVar13 + 1;
      unaff_x19[2] = (long)pcVar13;
      pcVar11 = pcVar13;
      if (pcVar3 <= pcVar13) goto code_r0x00ee4fb8;
      do {
        pcVar12 = pcVar11;
        if ((*pcVar11 == ',') || (*pcVar11 == ']')) break;
        pcVar11 = pcVar11 + 1;
        unaff_x19[2] = (long)pcVar11;
        pcVar12 = pcVar3;
      } while (pcVar3 != pcVar11);
      uVar10 = (long)pcVar12 - (long)pcVar13;
      if (0xffffffffffffffef < uVar10) goto code_r0x00ee5208;
      if (uVar10 < 0x17) {
        _bStack0000000000000008 = CONCAT71(uStack0000000000000009,(char)((int)uVar10 << 1));
        pcVar3 = unaff_x28;
      }
      else {
        uVar4 = uVar10 + 0x10 & 0xfffffffffffffff0;
        pcVar3 = (char *)func_0x0210a200(uVar4);
        _bStack0000000000000008 = uVar4 | 1;
        in_stack_00000018 = pcVar3;
        in_stack_00000010 = uVar10;
      }
      for (; pcVar13 != pcVar12; pcVar13 = pcVar13 + 1) {
        *pcVar3 = *pcVar13;
        pcVar3 = pcVar3 + 1;
      }
      *pcVar3 = '\0';
      uVar4 = func_0x00f13270(&stack0x00000020,&stack0x00000028);
      if ((uVar4 & 1) != 0) {
        lVar8 = *unaff_x19;
        param_4 = (undefined2 *)(lVar8 + 0x9a);
        param_5 = (undefined2 *)(lVar8 + 0x9c);
        param_6 = (undefined2 *)(lVar8 + 0x9e);
        auVar15._8_8_ = lVar8 + 0x98;
        auVar15._0_8_ = &stack0x00000008;
        puVar14 = &UNK_00ee503c;
        goto code_r0x00ee5248;
      }
      pcVar13 = unaff_x27;
      if ((in_stack_00000028 & 1) != 0) {
        pcVar13 = in_stack_00000038;
      }
      uVar10 = func_0x00f13100(&stack0x00000020,pcVar13);
      param_4 = unaff_x22;
      if ((uVar10 & 1) == 0) {
        pcVar13 = unaff_x27;
        if ((in_stack_00000028 & 1) != 0) {
          pcVar13 = in_stack_00000038;
        }
        uVar10 = func_0x00f13100(&stack0x00000020,pcVar13);
        if ((uVar10 & 1) == 0) {
          pcVar13 = unaff_x27;
          if ((in_stack_00000028 & 1) != 0) {
            pcVar13 = in_stack_00000038;
          }
          param_4 = (undefined2 *)&UNK_006555fe;
          uVar10 = func_0x00f13100(&stack0x00000020,pcVar13);
          if ((uVar10 & 1) == 0) {
            pcVar13 = unaff_x27;
            if ((in_stack_00000028 & 1) != 0) {
              pcVar13 = in_stack_00000038;
            }
            param_4 = (undefined2 *)&UNK_0065915e;
            uVar10 = func_0x00f13100(&stack0x00000020,pcVar13);
            if ((uVar10 & 1) == 0) goto code_r0x00ee5040;
            param_4 = (undefined2 *)&UNK_0065916a;
            uVar10 = func_0x00f13270(&stack0x00000020,&stack0x00000008);
            if ((uVar10 & 1) != 0) {
              lVar8 = *unaff_x19;
              if ((*(byte *)(lVar8 + 0x30) & 1) == 0) {
                lVar8 = lVar8 + 0x31;
              }
              else {
                lVar8 = *(long *)(lVar8 + 0x40);
              }
              param_4 = (undefined2 *)&UNK_0065a9a0;
              uVar10 = func_0x00f13100(&stack0x00000020,lVar8);
              if ((uVar10 & 1) == 0) {
                func_0x0210a260(*unaff_x19 + 0x30,&UNK_0065f760);
              }
            }
          }
          else {
            func_0x0210a540(*unaff_x19 + 0x48,&stack0x00000008);
          }
          goto code_r0x00ee518c;
        }
        uVar10 = func_0x00f13270(&stack0x00000020,&stack0x00000008);
        if ((uVar10 & 1) != 0) goto code_r0x00ee518c;
        if ((_bStack0000000000000008 & 1) == 0) {
          if ((bStack0000000000000008 & 0xfe) == 0x20) {
code_r0x00ee517c:
            param_4 = (undefined2 *)0x11;
            func_0x0210a7b0(*unaff_x19 + 0x78);
            goto code_r0x00ee518c;
          }
        }
        else if (in_stack_00000010 == 0x10) goto code_r0x00ee517c;
code_r0x00ee5040:
        bVar1 = true;
      }
      else {
        uVar10 = func_0x00f13270(&stack0x00000020,&stack0x00000008);
        if ((uVar10 & 1) == 0) {
          func_0x0210a540(*unaff_x19 + 0x60,&stack0x00000008);
        }
code_r0x00ee518c:
        bVar1 = false;
      }
      if ((_bStack0000000000000008 & 1) != 0) {
        func_0x0210a180(in_stack_00000018);
      }
    }
    else {
code_r0x00ee4fb8:
      bVar1 = true;
    }
    if ((in_stack_00000028 & 1) != 0) {
      func_0x0210a180(in_stack_00000038);
    }
    if (bVar1) {
      return 0;
    }
    in_x9 = (char *)unaff_x19[2];
    param_1 = (char *)unaff_x19[3];
    if (param_1 <= in_x9) {
      return 1;
    }
  } while( true );
}

