// Function: ChessEngine_IsInCheck
// RVA: 0xEE5D38
// Description: Is in check
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


/* WARNING: Possible PIC construction at 0x00ee5dbc: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5f1c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee616c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee61c4: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5e64: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5ea0: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x00ee5e68) */
/* WARNING: Removing unreachable block (ram,0x00ee5e78) */
/* WARNING: Removing unreachable block (ram,0x00ee6170) */
/* WARNING: Removing unreachable block (ram,0x00ee6180) */
/* WARNING: Removing unreachable block (ram,0x00ee61dc) */
/* WARNING: Removing unreachable block (ram,0x00ee6190) */
/* WARNING: Removing unreachable block (ram,0x00ee61c8) */
/* WARNING: Removing unreachable block (ram,0x00ee61d8) */
/* WARNING: Removing unreachable block (ram,0x00ee5f20) */
/* WARNING: Removing unreachable block (ram,0x00ee5f30) */
/* WARNING: Removing unreachable block (ram,0x00ee5dc0) */
/* WARNING: Removing unreachable block (ram,0x00ee5dd8) */
/* WARNING: Removing unreachable block (ram,0x00ee5f94) */
/* WARNING: Removing unreachable block (ram,0x00ee5fa4) */
/* WARNING: Removing unreachable block (ram,0x00ee5fb4) */
/* WARNING: Removing unreachable block (ram,0x00ee5fc8) */
/* WARNING: Removing unreachable block (ram,0x00ee5de0) */
/* WARNING: Removing unreachable block (ram,0x00ee5fd8) */
/* WARNING: Removing unreachable block (ram,0x00ee5fe8) */
/* WARNING: Removing unreachable block (ram,0x00ee5ff0) */
/* WARNING: Removing unreachable block (ram,0x00ee5ea4) */
/* WARNING: Removing unreachable block (ram,0x00ee5eb4) */
/* WARNING: Removing unreachable block (ram,0x00ee5ebc) */
/* WARNING: Removing unreachable block (ram,0x00ee5ed4) */
/* WARNING: Removing unreachable block (ram,0x00ee6108) */

void ChessEngine_IsInCheck
               (undefined8 param_1,undefined8 param_2,code *param_3,code *param_4,code *param_5)

{
  byte bVar1;
  uint uVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  code *pcVar6;
  code *pcVar7;
  code *pcVar8;
  undefined1 uVar9;
  code *unaff_x19;
  code *unaff_x20;
  undefined8 *puVar10;
  uint uVar11;
  ulong uVar12;
  long *unaff_x23;
  uint uVar13;
  ulong uVar14;
  int *unaff_x25;
  undefined1 *unaff_x26;
  long unaff_x27;
  undefined1 *unaff_x28;
  undefined1 *puVar15;
  undefined1 *puVar16;
  undefined *puVar17;
  undefined1 auVar18 [16];
  
  auVar18._8_8_ = param_2;
  auVar18._0_8_ = param_1;
  do {
    pcVar8 = param_5;
    pcVar7 = param_4;
    puVar10 = auVar18._0_8_;
    *(code **)((long)register0x00000008 + 0x80) = unaff_x20;
    *(code **)((long)register0x00000008 + 0x88) = unaff_x19;
    puVar16 = (undefined1 *)tpidr_el0;
    uVar14 = (ulong)param_3 & 0xffffffff;
    *(undefined8 *)((long)register0x00000008 + 0x28) = *(undefined8 *)(puVar16 + 0x28);
    *(undefined1 *)((long)register0x00000008 + 0x20) = 0;
    *(undefined8 *)((long)register0x00000008 + 0x18) = 0;
    bVar1 = *(byte *)((long)puVar10 + 10);
    uVar12 = auVar18._8_8_ & 0xffffffff;
    uVar11 = auVar18._8_4_;
    param_5 = pcVar7;
    param_4 = pcVar7;
    if (bVar1 < 0x14) {
      if (bVar1 == 0xf) {
        uVar2 = 2;
        if (uVar11 != 3) {
          uVar2 = uVar11;
        }
        auVar18._8_4_ = uVar2;
        auVar18._0_8_ = *puVar10;
        auVar18._12_4_ = 0;
        pcVar6 = (code *)0x0;
        puVar17 = &UNK_00ee5ea4;
        param_5 = pcVar8;
        goto code_r0x00ee5d20;
      }
      if (bVar1 == 0x13) goto code_r0x00ee5e04;
code_r0x00ee5ee8:
      pcVar6 = param_3;
      unaff_x23 = (long *)func_0x00f2bb58(puVar10,1);
      func_0x00f2c000();
      lVar3 = func_0x00f2ee78(unaff_x23);
      if (lVar3 != 0) {
        auVar18._8_8_ = uVar12;
        auVar18._0_8_ = lVar3 + 0x20;
        pcVar6 = (code *)0x1;
        puVar17 = &UNK_00ee5f20;
        param_5 = pcVar8;
        goto code_r0x00ee5d20;
      }
      unaff_x26 = (undefined1 *)((long)register0x00000008 + 0x18);
      if (*(char *)unaff_x23[3] != '\0') {
        (*pcVar7)((char *)unaff_x23[3],pcVar8);
        unaff_x26 = (undefined1 *)((ulong)unaff_x26 | 1);
        *(undefined1 *)((long)register0x00000008 + 0x18) = 0x2e;
      }
      unaff_x25 = (int *)unaff_x23[2];
      puVar15 = unaff_x28;
      if (uVar11 == 0) {
        lVar3 = func_0x0210a9a0(unaff_x25,0x60);
        if (lVar3 == 0) {
          lVar3 = func_0x0210a1f0(unaff_x25);
        }
        else {
          lVar3 = lVar3 - (long)unaff_x25;
        }
        if (lVar3 != 0) {
          *(undefined1 **)((long)register0x00000008 + 8) = puVar16;
          unaff_x27 = 0;
          puVar16 = unaff_x26;
          while( true ) {
            unaff_x26 = puVar16 + 1;
            *puVar16 = *(undefined1 *)((long)unaff_x25 + unaff_x27);
            if (((long)register0x00000008 + 0x18) - (long)unaff_x26 == -8) {
              unaff_x26 = (undefined1 *)((long)register0x00000008 + 0x18);
              (*pcVar7)((undefined1 *)((long)register0x00000008 + 0x18),pcVar8);
              *(undefined8 *)((long)register0x00000008 + 0x18) = 0;
            }
            if (lVar3 + -1 == unaff_x27) break;
            unaff_x25 = (int *)unaff_x23[2];
            unaff_x27 = unaff_x27 + 1;
            puVar16 = unaff_x26;
          }
          puVar16 = *(undefined1 **)((long)register0x00000008 + 8);
          puVar15 = (undefined1 *)((long)register0x00000008 + 0x18);
        }
      }
      else {
        (*pcVar7)(unaff_x25,pcVar8);
      }
      if ((undefined1 *)((long)register0x00000008 + 0x18) != unaff_x26) {
        (*pcVar7)((undefined1 *)((long)register0x00000008 + 0x18),pcVar8);
        *(undefined8 *)((long)register0x00000008 + 0x18) = 0;
      }
      uVar4 = (ulong)param_3 & 1;
      param_3 = pcVar6;
      unaff_x28 = puVar15;
      if (uVar4 != 0) goto code_r0x00ee6304;
      lVar3 = unaff_x23[0xc];
      *(undefined1 **)((long)register0x00000008 + 8) = puVar16;
      if (lVar3 == 0) {
        puVar16 = (undefined1 *)((long)register0x00000008 + 0x18);
        uVar4 = func_0x00f2ccf4(unaff_x23);
        param_3 = pcVar6;
        if (((uVar11 & 0xfffffffe) != 2) && ((uVar4 & 1) != 0)) {
          uVar5 = func_0x00f2eac0(unaff_x23);
          unaff_x25 = (int *)((long)register0x00000008 + 0x18);
          uVar9 = 0x3c;
          if (uVar11 != 0) {
            uVar9 = 0x5b;
          }
          unaff_x28 = (undefined1 *)((ulong)unaff_x25 | 1);
          *(undefined1 *)((long)register0x00000008 + 0x18) = uVar9;
          *(undefined8 *)((long)register0x00000008 + 0x10) = uVar5;
          uVar2 = func_0x00f30f94();
          if (uVar2 != 0) {
            puVar15 = (undefined1 *)(ulong)uVar2;
            uVar14 = 0;
            unaff_x25 = (int *)((long)register0x00000008 + 0x20);
            do {
              uVar13 = (uint)uVar14;
              puVar16 = unaff_x28;
              if (uVar13 != 0) {
                puVar16 = unaff_x28 + 1;
                *unaff_x28 = 0x2c;
              }
              func_0x00f30c88(*(undefined8 *)((long)register0x00000008 + 0x10),uVar13 & 0xffff);
              unaff_x26 = (undefined1 *)func_0x00f30f98();
              lVar3 = func_0x0210a1f0();
              unaff_x28 = puVar16;
              while (lVar3 != 0) {
                puVar16 = unaff_x28 + 1;
                *unaff_x28 = *unaff_x26;
                if ((long)unaff_x25 - (long)puVar16 < 2) {
                  puVar16 = (undefined1 *)((long)register0x00000008 + 0x18);
                  (*pcVar7)((undefined1 *)((long)register0x00000008 + 0x18),pcVar8);
                  *(undefined8 *)((long)register0x00000008 + 0x18) = 0;
                }
                unaff_x26 = unaff_x26 + 1;
                lVar3 = lVar3 + -1;
                unaff_x27 = lVar3;
                unaff_x28 = puVar16;
              }
              uVar14 = (ulong)(uVar13 + 1);
            } while (uVar13 + 1 != uVar2);
          }
          goto code_r0x00ee62b0;
        }
      }
      else {
        unaff_x25 = *(int **)(lVar3 + 8);
        uVar2 = 3;
        if (uVar11 != 2) {
          uVar2 = uVar11;
        }
        uVar14 = (ulong)uVar2;
        uVar9 = 0x3c;
        if (uVar11 != 0) {
          uVar9 = 0x5b;
        }
        *(undefined1 *)((long)register0x00000008 + 0x18) = uVar9;
        unaff_x28 = (undefined1 *)((ulong)((long)register0x00000008 + 0x18) | 1);
        if (*unaff_x25 != 0) {
          unaff_x26 = (undefined1 *)0x0;
          unaff_x27 = **(long **)(unaff_x25 + 2);
          if (uVar2 == 3) {
            if ((*(char *)(unaff_x27 + 10) != '\x13') && (*(char *)((long)puVar10 + 10) != '\x1e'))
            {
              *unaff_x28 = 0x5b;
            }
            puVar16 = (undefined1 *)((long)register0x00000008 + 0x18);
            (*pcVar7)((undefined1 *)((long)register0x00000008 + 0x18),pcVar8);
            *(undefined8 *)((long)register0x00000008 + 0x18) = 0;
            pcVar6 = (code *)0x0;
            auVar18._8_8_ = 3;
            auVar18._0_8_ = **(undefined8 **)(unaff_x25 + 2);
            puVar17 = &UNK_00ee6170;
            param_5 = pcVar8;
          }
          else {
            puVar16 = (undefined1 *)((long)register0x00000008 + 0x18);
            (*pcVar7)((undefined1 *)((long)register0x00000008 + 0x18),pcVar8);
            *(undefined8 *)((long)register0x00000008 + 0x18) = 0;
            pcVar6 = (code *)0x0;
            auVar18._8_4_ = uVar2;
            auVar18._0_8_ = **(undefined8 **)(unaff_x25 + 2);
            auVar18._12_4_ = 0;
            puVar17 = &UNK_00ee61c8;
            param_5 = pcVar8;
          }
          goto code_r0x00ee5d20;
        }
code_r0x00ee62b0:
        uVar9 = 0x3e;
        if (uVar11 != 0) {
          uVar9 = 0x5d;
        }
        puVar16 = unaff_x28 + 1;
        *unaff_x28 = uVar9;
        param_3 = pcVar6;
      }
      if ((*(byte *)((long)puVar10 + 0xb) >> 5 & 1) != 0) {
        *puVar16 = 0x26;
      }
      (*pcVar7)((undefined1 *)((long)register0x00000008 + 0x18),pcVar8);
      puVar16 = *(undefined1 **)((long)register0x00000008 + 8);
      *(undefined8 *)((long)register0x00000008 + 0x18) = 0;
      unaff_x28 = puVar15;
      if (((uVar11 == 3) && (*(char *)((long)puVar10 + 10) != '\x13')) &&
         (*(char *)((long)puVar10 + 10) != '\x1e')) {
        puVar10 = *(undefined8 **)(*unaff_x23 + 0x10);
        *(undefined1 *)((long)register0x00000008 + 0x18) = 0x2c;
        (*pcVar7)((undefined1 *)((long)register0x00000008 + 0x18),pcVar8);
        param_3 = pcVar8;
        func_0x00ee1da0(puVar10 + 3,pcVar7);
      }
code_r0x00ee6304:
      if (*(long *)(puVar16 + 0x28) == *(long *)((long)register0x00000008 + 0x28)) {
        return;
      }
      puVar17 = &UNK_00ee6338;
      auVar18 = func_0x02109e70();
      pcVar6 = (code *)0x0;
      param_4 = param_3;
    }
    else {
      if (bVar1 == 0x1e) {
code_r0x00ee5e04:
        func_0x00f30c7c(puVar10);
        uVar5 = func_0x00f30f98();
        (*pcVar7)(uVar5,pcVar8);
        if ((*(byte *)((long)puVar10 + 0xb) >> 5 & 1) != 0) {
          *(undefined1 *)((long)register0x00000008 + 0x18) = 0x26;
          (*pcVar7)((undefined1 *)((long)register0x00000008 + 0x18),pcVar8);
        }
        goto code_r0x00ee6304;
      }
      if (bVar1 == 0x1d) {
        unaff_x23 = (long *)func_0x00f2bb58(*puVar10,1);
        uVar2 = 2;
        if (uVar11 != 3) {
          uVar2 = uVar11;
        }
        auVar18._8_4_ = uVar2;
        auVar18._0_8_ = unaff_x23 + 4;
        auVar18._12_4_ = 0;
        pcVar6 = (code *)0x0;
        puVar17 = &UNK_00ee5e68;
        param_5 = pcVar8;
      }
      else {
        if (bVar1 != 0x14) goto code_r0x00ee5ee8;
        uVar14 = func_0x00f2bb58(puVar10,1);
        unaff_x23 = (long *)func_0x00f2c0c0();
        uVar2 = 2;
        if (uVar11 != 3) {
          uVar2 = uVar11;
        }
        auVar18._8_4_ = uVar2;
        auVar18._0_8_ = unaff_x23 + 4;
        auVar18._12_4_ = 0;
        pcVar6 = (code *)0x0;
        puVar17 = &UNK_00ee5dc0;
        param_5 = pcVar8;
      }
    }
code_r0x00ee5d20:
    *(undefined1 **)((long)register0x00000008 + -0x60) = puVar16;
    *(undefined **)((long)register0x00000008 + -0x58) = puVar17;
    *(undefined1 **)((long)register0x00000008 + -0x50) = unaff_x28;
    *(long *)((long)register0x00000008 + -0x48) = unaff_x27;
    *(undefined1 **)((long)register0x00000008 + -0x40) = unaff_x26;
    *(int **)((long)register0x00000008 + -0x38) = unaff_x25;
    *(ulong *)((long)register0x00000008 + -0x30) = uVar14;
    *(long **)((long)register0x00000008 + -0x28) = unaff_x23;
    *(ulong *)((long)register0x00000008 + -0x20) = uVar12;
    *(undefined8 **)((long)register0x00000008 + -0x18) = puVar10;
    register0x00000008 = (BADSPACEBASE *)((long)register0x00000008 + -0x90);
    param_3 = pcVar6;
    unaff_x19 = pcVar8;
    unaff_x20 = pcVar7;
  } while( true );
}

