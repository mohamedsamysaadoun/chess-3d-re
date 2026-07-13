// Function: ChessEngine_GenerateMoves
// RVA: 0xEE5DB8
// Description: Generate all legal moves
// Decompiled: 2026-07-13 14:49:26
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

void ChessEngine_GenerateMoves(long *param_1,ulong param_2,code *param_3,code *param_4)

{
  byte bVar1;
  undefined1 *puVar2;
  uint uVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  code *pcVar7;
  code *pcVar8;
  undefined1 uVar9;
  code *pcVar10;
  code *unaff_x19;
  code *unaff_x20;
  undefined8 *puVar11;
  undefined8 *unaff_x21;
  uint uVar12;
  ulong unaff_x22;
  long *unaff_x23;
  uint uVar13;
  ulong unaff_x24;
  int *unaff_x25;
  undefined1 *unaff_x26;
  long unaff_x27;
  undefined1 *unaff_x28;
  undefined1 *puVar14;
  undefined1 *unaff_x29;
  undefined1 *puVar15;
  undefined *puVar16;
  undefined1 auVar17 [16];
  
  do {
    auVar17._8_8_ = param_2;
    auVar17._0_8_ = param_1;
    puVar16 = &UNK_00ee5dc0;
    puVar2 = (undefined1 *)register0x00000008;
    pcVar7 = param_4;
    pcVar8 = unaff_x19;
    pcVar10 = unaff_x19;
    puVar11 = unaff_x21;
code_r0x00ee5d20:
    unaff_x19 = pcVar8;
    param_4 = pcVar7;
    unaff_x21 = auVar17._0_8_;
    register0x00000008 = (BADSPACEBASE *)(puVar2 + -0x90);
    *(undefined1 **)(puVar2 + -0x60) = unaff_x29;
    *(undefined **)(puVar2 + -0x58) = puVar16;
    *(undefined1 **)(puVar2 + -0x50) = unaff_x28;
    *(long *)(puVar2 + -0x48) = unaff_x27;
    *(undefined1 **)(puVar2 + -0x40) = unaff_x26;
    *(int **)(puVar2 + -0x38) = unaff_x25;
    *(ulong *)(puVar2 + -0x30) = unaff_x24;
    *(long **)(puVar2 + -0x28) = unaff_x23;
    *(ulong *)(puVar2 + -0x20) = unaff_x22;
    *(undefined8 **)(puVar2 + -0x18) = puVar11;
    *(code **)(puVar2 + -0x10) = unaff_x20;
    *(code **)(puVar2 + -8) = pcVar10;
    unaff_x29 = (undefined1 *)tpidr_el0;
    unaff_x24 = (ulong)param_3 & 0xffffffff;
    *(undefined8 *)(puVar2 + -0x68) = *(undefined8 *)(unaff_x29 + 0x28);
    puVar2[-0x70] = 0;
    *(undefined8 *)(puVar2 + -0x78) = 0;
    bVar1 = *(byte *)((long)unaff_x21 + 10);
    unaff_x22 = auVar17._8_8_ & 0xffffffff;
    uVar12 = auVar17._8_4_;
    pcVar7 = param_4;
    pcVar8 = param_4;
    pcVar10 = unaff_x19;
    unaff_x20 = param_4;
    puVar11 = unaff_x21;
    if (bVar1 < 0x14) {
      if (bVar1 == 0xf) {
        uVar3 = 2;
        if (uVar12 != 3) {
          uVar3 = uVar12;
        }
        auVar17._8_4_ = uVar3;
        auVar17._0_8_ = *unaff_x21;
        auVar17._12_4_ = 0;
        param_3 = (code *)0x0;
        puVar16 = &UNK_00ee5ea4;
        puVar2 = puVar2 + -0x90;
        pcVar8 = unaff_x19;
        goto code_r0x00ee5d20;
      }
      if (bVar1 == 0x13) {
code_r0x00ee5e04:
        func_0x00f30c7c(unaff_x21);
        uVar6 = func_0x00f30f98();
        (*param_4)(uVar6,unaff_x19);
        pcVar7 = param_3;
        if ((*(byte *)((long)unaff_x21 + 0xb) >> 5 & 1) != 0) {
          puVar2[-0x78] = 0x26;
          (*param_4)(puVar2 + -0x78,unaff_x19);
          pcVar7 = param_3;
        }
      }
      else {
code_r0x00ee5ee8:
        pcVar7 = param_3;
        unaff_x23 = (long *)func_0x00f2bb58(unaff_x21,1);
        func_0x00f2c000();
        lVar4 = func_0x00f2ee78(unaff_x23);
        if (lVar4 != 0) {
          auVar17._8_8_ = unaff_x22;
          auVar17._0_8_ = lVar4 + 0x20;
          param_3 = (code *)0x1;
          puVar16 = &UNK_00ee5f20;
          puVar2 = puVar2 + -0x90;
          pcVar7 = param_4;
          pcVar8 = unaff_x19;
          goto code_r0x00ee5d20;
        }
        unaff_x26 = puVar2 + -0x78;
        if (*(char *)unaff_x23[3] != '\0') {
          (*param_4)((char *)unaff_x23[3],unaff_x19);
          unaff_x26 = (undefined1 *)((ulong)unaff_x26 | 1);
          puVar2[-0x78] = 0x2e;
        }
        unaff_x25 = (int *)unaff_x23[2];
        puVar14 = unaff_x28;
        if (uVar12 == 0) {
          lVar4 = func_0x0210a9a0(unaff_x25,0x60);
          if (lVar4 == 0) {
            lVar4 = func_0x0210a1f0(unaff_x25);
          }
          else {
            lVar4 = lVar4 - (long)unaff_x25;
          }
          if (lVar4 != 0) {
            *(undefined1 **)(puVar2 + -0x88) = unaff_x29;
            unaff_x27 = 0;
            puVar14 = unaff_x26;
            while( true ) {
              unaff_x26 = puVar14 + 1;
              *puVar14 = *(undefined1 *)((long)unaff_x25 + unaff_x27);
              if ((long)(puVar2 + -0x78) - (long)unaff_x26 == -8) {
                unaff_x26 = puVar2 + -0x78;
                (*param_4)(puVar2 + -0x78,unaff_x19);
                *(undefined8 *)(puVar2 + -0x78) = 0;
              }
              if (lVar4 + -1 == unaff_x27) break;
              unaff_x25 = (int *)unaff_x23[2];
              unaff_x27 = unaff_x27 + 1;
              puVar14 = unaff_x26;
            }
            unaff_x29 = *(undefined1 **)(puVar2 + -0x88);
            puVar14 = puVar2 + -0x78;
          }
        }
        else {
          (*param_4)(unaff_x25,unaff_x19);
        }
        if (puVar2 + -0x78 != unaff_x26) {
          (*param_4)(puVar2 + -0x78,unaff_x19);
          *(undefined8 *)(puVar2 + -0x78) = 0;
        }
        unaff_x28 = puVar14;
        if (((ulong)param_3 & 1) != 0) goto code_r0x00ee6304;
        lVar4 = unaff_x23[0xc];
        *(undefined1 **)(puVar2 + -0x88) = unaff_x29;
        if (lVar4 == 0) {
          puVar15 = puVar2 + -0x78;
          uVar5 = func_0x00f2ccf4(unaff_x23);
          if (((uVar12 & 0xfffffffe) != 2) && ((uVar5 & 1) != 0)) {
            uVar6 = func_0x00f2eac0(unaff_x23);
            unaff_x25 = (int *)(puVar2 + -0x78);
            uVar9 = 0x3c;
            if (uVar12 != 0) {
              uVar9 = 0x5b;
            }
            unaff_x28 = (undefined1 *)((ulong)unaff_x25 | 1);
            puVar2[-0x78] = uVar9;
            *(undefined8 *)(puVar2 + -0x80) = uVar6;
            uVar3 = func_0x00f30f94();
            if (uVar3 != 0) {
              puVar14 = (undefined1 *)(ulong)uVar3;
              unaff_x24 = 0;
              unaff_x25 = (int *)(puVar2 + -0x70);
              do {
                uVar13 = (uint)unaff_x24;
                puVar15 = unaff_x28;
                if (uVar13 != 0) {
                  puVar15 = unaff_x28 + 1;
                  *unaff_x28 = 0x2c;
                }
                func_0x00f30c88(*(undefined8 *)(puVar2 + -0x80),uVar13 & 0xffff);
                unaff_x26 = (undefined1 *)func_0x00f30f98();
                lVar4 = func_0x0210a1f0();
                unaff_x28 = puVar15;
                while (lVar4 != 0) {
                  puVar15 = unaff_x28 + 1;
                  *unaff_x28 = *unaff_x26;
                  if ((long)unaff_x25 - (long)puVar15 < 2) {
                    puVar15 = puVar2 + -0x78;
                    (*param_4)(puVar2 + -0x78,unaff_x19);
                    *(undefined8 *)(puVar2 + -0x78) = 0;
                  }
                  unaff_x26 = unaff_x26 + 1;
                  lVar4 = lVar4 + -1;
                  unaff_x27 = lVar4;
                  unaff_x28 = puVar15;
                }
                unaff_x24 = (ulong)(uVar13 + 1);
              } while (uVar13 + 1 != uVar3);
            }
            goto code_r0x00ee62b0;
          }
        }
        else {
          unaff_x25 = *(int **)(lVar4 + 8);
          uVar3 = 3;
          if (uVar12 != 2) {
            uVar3 = uVar12;
          }
          unaff_x24 = (ulong)uVar3;
          uVar9 = 0x3c;
          if (uVar12 != 0) {
            uVar9 = 0x5b;
          }
          puVar2[-0x78] = uVar9;
          unaff_x28 = (undefined1 *)((ulong)(puVar2 + -0x78) | 1);
          if (*unaff_x25 != 0) {
            unaff_x26 = (undefined1 *)0x0;
            unaff_x27 = **(long **)(unaff_x25 + 2);
            if (uVar3 == 3) {
              if ((*(char *)(unaff_x27 + 10) != '\x13') &&
                 (*(char *)((long)unaff_x21 + 10) != '\x1e')) {
                *unaff_x28 = 0x5b;
              }
              unaff_x29 = puVar2 + -0x78;
              (*param_4)(puVar2 + -0x78,unaff_x19);
              *(undefined8 *)(puVar2 + -0x78) = 0;
              param_3 = (code *)0x0;
              auVar17._8_8_ = 3;
              auVar17._0_8_ = **(undefined8 **)(unaff_x25 + 2);
              puVar16 = &UNK_00ee6170;
              puVar2 = puVar2 + -0x90;
              pcVar7 = param_4;
              pcVar8 = unaff_x19;
            }
            else {
              unaff_x29 = puVar2 + -0x78;
              (*param_4)(puVar2 + -0x78,unaff_x19);
              *(undefined8 *)(puVar2 + -0x78) = 0;
              param_3 = (code *)0x0;
              auVar17._8_4_ = uVar3;
              auVar17._0_8_ = **(undefined8 **)(unaff_x25 + 2);
              auVar17._12_4_ = 0;
              puVar16 = &UNK_00ee61c8;
              puVar2 = puVar2 + -0x90;
              pcVar7 = param_4;
              pcVar8 = unaff_x19;
            }
            goto code_r0x00ee5d20;
          }
code_r0x00ee62b0:
          uVar9 = 0x3e;
          if (uVar12 != 0) {
            uVar9 = 0x5d;
          }
          puVar15 = unaff_x28 + 1;
          *unaff_x28 = uVar9;
        }
        if ((*(byte *)((long)unaff_x21 + 0xb) >> 5 & 1) != 0) {
          *puVar15 = 0x26;
        }
        (*param_4)(puVar2 + -0x78,unaff_x19);
        unaff_x29 = *(undefined1 **)(puVar2 + -0x88);
        *(undefined8 *)(puVar2 + -0x78) = 0;
        unaff_x28 = puVar14;
        if (((uVar12 == 3) && (*(char *)((long)unaff_x21 + 10) != '\x13')) &&
           (*(char *)((long)unaff_x21 + 10) != '\x1e')) {
          unaff_x21 = *(undefined8 **)(*unaff_x23 + 0x10);
          puVar2[-0x78] = 0x2c;
          (*param_4)(puVar2 + -0x78,unaff_x19);
          pcVar7 = unaff_x19;
          func_0x00ee1da0(unaff_x21 + 3,param_4);
        }
      }
code_r0x00ee6304:
      if (*(long *)(unaff_x29 + 0x28) == *(long *)(puVar2 + -0x68)) {
        return;
      }
      puVar16 = &UNK_00ee6338;
      auVar17 = func_0x02109e70();
      param_3 = (code *)0x0;
      puVar2 = puVar2 + -0x90;
      puVar11 = unaff_x21;
      goto code_r0x00ee5d20;
    }
    if (bVar1 == 0x1e) goto code_r0x00ee5e04;
    if (bVar1 == 0x1d) {
      unaff_x23 = (long *)func_0x00f2bb58(*unaff_x21,1);
      uVar3 = 2;
      if (uVar12 != 3) {
        uVar3 = uVar12;
      }
      auVar17._8_4_ = uVar3;
      auVar17._0_8_ = unaff_x23 + 4;
      auVar17._12_4_ = 0;
      param_3 = (code *)0x0;
      puVar16 = &UNK_00ee5e68;
      puVar2 = puVar2 + -0x90;
      pcVar8 = unaff_x19;
      goto code_r0x00ee5d20;
    }
    if (bVar1 != 0x14) goto code_r0x00ee5ee8;
    unaff_x24 = func_0x00f2bb58(unaff_x21,1);
    unaff_x23 = (long *)func_0x00f2c0c0();
    param_1 = unaff_x23 + 4;
    uVar3 = 2;
    if (uVar12 != 3) {
      uVar3 = uVar12;
    }
    param_2 = (ulong)uVar3;
    param_3 = (code *)0x0;
  } while( true );
}

