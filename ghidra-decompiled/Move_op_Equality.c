// Function: Move_op_Equality
// RVA: 0xEE559C
// Description: Move == operator
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


/* WARNING: Possible PIC construction at 0x00ee5600: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5634: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5664: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5934: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5a3c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5a94: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5ad8: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5bbc: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5b44: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5b68: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee577c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee56f0: Changing call to branch */
/* WARNING: Possible PIC construction at 0x00ee5818: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x00ee56f4) */
/* WARNING: Removing unreachable block (ram,0x00ee570c) */
/* WARNING: Removing unreachable block (ram,0x00ee5b48) */
/* WARNING: Removing unreachable block (ram,0x00ee5b54) */
/* WARNING: Removing unreachable block (ram,0x00ee5b5c) */
/* WARNING: Removing unreachable block (ram,0x00ee5b6c) */
/* WARNING: Removing unreachable block (ram,0x00ee5b60) */
/* WARNING: Removing unreachable block (ram,0x00ee5adc) */
/* WARNING: Removing unreachable block (ram,0x00ee5a40) */
/* WARNING: Removing unreachable block (ram,0x00ee5a48) */
/* WARNING: Removing unreachable block (ram,0x00ee5a4c) */
/* WARNING: Removing unreachable block (ram,0x00ee5a58) */
/* WARNING: Removing unreachable block (ram,0x00ee5a64) */
/* WARNING: Removing unreachable block (ram,0x00ee5ae0) */
/* WARNING: Removing unreachable block (ram,0x00ee5a6c) */
/* WARNING: Removing unreachable block (ram,0x00ee5a7c) */
/* WARNING: Removing unreachable block (ram,0x00ee5a98) */
/* WARNING: Removing unreachable block (ram,0x00ee5ac0) */
/* WARNING: Removing unreachable block (ram,0x00ee5af8) */
/* WARNING: Removing unreachable block (ram,0x00ee5b08) */
/* WARNING: Removing unreachable block (ram,0x00ee5b94) */
/* WARNING: Removing unreachable block (ram,0x00ee5ba0) */
/* WARNING: Removing unreachable block (ram,0x00ee5ad0) */
/* WARNING: Removing unreachable block (ram,0x00ee5a8c) */
/* WARNING: Removing unreachable block (ram,0x00ee5638) */
/* WARNING: Removing unreachable block (ram,0x00ee5604) */
/* WARNING: Removing unreachable block (ram,0x00ee5610) */
/* WARNING: Removing unreachable block (ram,0x00ee5620) */
/* WARNING: Removing unreachable block (ram,0x00ee5648) */
/* WARNING: Removing unreachable block (ram,0x00ee5668) */
/* WARNING: Removing unreachable block (ram,0x00ee5670) */
/* WARNING: Removing unreachable block (ram,0x00ee56c8) */
/* WARNING: Removing unreachable block (ram,0x00ee56cc) */
/* WARNING: Removing unreachable block (ram,0x00ee565c) */
/* WARNING: Removing unreachable block (ram,0x00ee5628) */
/* WARNING: Removing unreachable block (ram,0x00ee562c) */
/* WARNING: Removing unreachable block (ram,0x00ee581c) */
/* WARNING: Removing unreachable block (ram,0x00ee5824) */
/* WARNING: Removing unreachable block (ram,0x00ee5830) */
/* WARNING: Removing unreachable block (ram,0x00ee5838) */
/* WARNING: Removing unreachable block (ram,0x00ee589c) */
/* WARNING: Removing unreachable block (ram,0x00ee58a0) */

ulong Move_op_Equality(undefined8 param_1,ulong *param_2)

{
  uint uVar1;
  long lVar2;
  ulong uVar3;
  long *plVar4;
  undefined1 *puVar5;
  undefined1 *puVar6;
  ulong *puVar7;
  undefined8 uVar8;
  int in_w8;
  undefined4 uVar9;
  uint unaff_w21;
  ulong unaff_x23;
  undefined1 *puVar10;
  ulong uVar11;
  byte in_stack_00000008;
  undefined8 in_stack_00000018;
  ulong in_stack_00000020;
  ulong in_stack_00000028;
  undefined1 *in_stack_00000030;
  
  if (in_w8 < 0x14) {
    if (in_w8 == 0xf) {
      uVar1 = 2;
      if (unaff_w21 != 3) {
        uVar1 = unaff_w21;
      }
      func_0x00ee5578(param_1,*param_2,uVar1,0);
      uVar9 = 0x2a;
      goto code_r0x0210a8b0;
    }
    if (in_w8 == 0x13) goto code_r0x00f30c7c;
  }
  else {
    if (in_w8 == 0x1e) goto code_r0x00f30c7c;
    if (in_w8 == 0x1d) {
      plVar4 = (long *)func_0x00f2bb58(*param_2,1);
      uVar1 = 2;
      if (unaff_w21 != 3) {
        uVar1 = unaff_w21;
      }
      func_0x00ee5578(param_1,plVar4 + 4,uVar1,0);
      uVar3 = func_0x0210a1a0(param_1,&UNK_00668333);
      if ((*(byte *)((long)param_2 + 0xb) >> 5 & 1) != 0) {
        uVar9 = 0x26;
        goto code_r0x0210a8b0;
      }
      if (unaff_w21 != 3) {
        return uVar3;
      }
      func_0x00ee1ffc(&stack0x00000008,*(long *)(*plVar4 + 0x10) + 0x18);
      puVar7 = (ulong *)func_0x0210a4a0(&stack0x00000008,0,&UNK_006651f4);
      in_stack_00000030 = (undefined1 *)puVar7[2];
      in_stack_00000028 = puVar7[1];
      in_stack_00000020 = *puVar7;
      puVar7[1] = 0;
      puVar7[2] = 0;
      *puVar7 = 0;
      uVar3 = in_stack_00000020 >> 1 & 0x7f;
      uVar11 = (ulong)&stack0x00000020 | 1;
      if ((in_stack_00000020 & 1) != 0) {
        uVar3 = in_stack_00000028;
        uVar11 = (ulong)in_stack_00000030;
      }
      uVar3 = func_0x0210a1b0(param_1,uVar11,uVar3);
      goto code_r0x00ee58ac;
    }
    if (in_w8 == 0x14) {
      func_0x00f2bb58(param_2,1);
      lVar2 = func_0x00f2c0c0();
      uVar1 = 2;
      if (unaff_w21 != 3) {
        uVar1 = unaff_w21;
      }
      func_0x00ee5578(param_1,lVar2 + 0x20,uVar1,0);
      uVar9 = 0x5b;
      goto code_r0x0210a8b0;
    }
  }
  plVar4 = (long *)func_0x00f2bb58(param_2,1);
  func_0x00f2c000();
  lVar2 = func_0x00f2ee78(plVar4);
  if (lVar2 == 0) {
    if (*(char *)plVar4[3] == '\0') {
      puVar10 = (undefined1 *)plVar4[2];
      if (unaff_w21 == 0) {
        puVar5 = (undefined1 *)func_0x0210a9a0(puVar10,0x60);
        if (puVar5 == (undefined1 *)0x0) {
          func_0x00ea5084(&stack0x00000020,puVar10);
        }
        else {
          uVar3 = (long)puVar5 - (long)puVar10;
          if (0xffffffffffffffef < uVar3) {
            uVar8 = func_0x0210a210(&stack0x00000020);
            if ((in_stack_00000020 & 1) != 0) {
              func_0x0210a180(in_stack_00000030);
            }
            if ((in_stack_00000008 & 1) != 0) {
              func_0x0210a180(in_stack_00000018);
            }
            param_2 = (ulong *)func_0x00fae398(uVar8);
code_r0x00f30c7c:
            return *param_2;
          }
          if (uVar3 < 0x17) {
            in_stack_00000020 = CONCAT71(in_stack_00000020._1_7_,(char)((int)uVar3 << 1));
            puVar6 = (undefined1 *)((ulong)&stack0x00000020 | 1);
          }
          else {
            uVar11 = uVar3 + 0x10 & 0xfffffffffffffff0;
            puVar6 = (undefined1 *)func_0x0210a200(uVar11);
            in_stack_00000020 = uVar11 | 1;
            in_stack_00000030 = puVar6;
            in_stack_00000028 = uVar3;
          }
          for (; puVar10 != puVar5; puVar10 = puVar10 + 1) {
            *puVar6 = *puVar10;
            puVar6 = puVar6 + 1;
          }
          *puVar6 = 0;
        }
        uVar3 = in_stack_00000020 >> 1 & 0x7f;
        puVar10 = (undefined1 *)((ulong)&stack0x00000020 | 1);
        if ((in_stack_00000020 & 1) != 0) {
          uVar3 = in_stack_00000028;
          puVar10 = in_stack_00000030;
        }
        uVar3 = func_0x0210a1b0(param_1,puVar10,uVar3);
        if ((in_stack_00000020 & 1) != 0) {
          uVar3 = func_0x0210a180(in_stack_00000030);
        }
      }
      else {
        uVar3 = func_0x0210a1a0(param_1,puVar10);
      }
      if ((unaff_x23 & 1) != 0) {
        return uVar3;
      }
      if (plVar4[0xc] == 0) {
        uVar3 = func_0x00f2ccf4(plVar4);
        if (((unaff_w21 & 0xfffffffe) == 2) || ((uVar3 & 1) == 0)) {
          if ((*(byte *)((long)param_2 + 0xb) >> 5 & 1) == 0) {
            if (unaff_w21 != 3) {
              return uVar3;
            }
            if (*(char *)((long)param_2 + 10) == '\x13') {
              return uVar3;
            }
            if (*(char *)((long)param_2 + 10) == '\x1e') {
              return uVar3;
            }
            func_0x00ee1ffc(&stack0x00000008,*(long *)(*plVar4 + 0x10) + 0x18);
            puVar7 = (ulong *)func_0x0210a4a0(&stack0x00000008,0,&UNK_006651f4);
            in_stack_00000030 = (undefined1 *)puVar7[2];
            in_stack_00000028 = puVar7[1];
            in_stack_00000020 = *puVar7;
            puVar7[1] = 0;
            puVar7[2] = 0;
            *puVar7 = 0;
            uVar3 = in_stack_00000020 >> 1 & 0x7f;
            uVar11 = (ulong)&stack0x00000020 | 1;
            if ((in_stack_00000020 & 1) != 0) {
              uVar3 = in_stack_00000028;
              uVar11 = (ulong)in_stack_00000030;
            }
            uVar3 = func_0x0210a1b0(param_1,uVar11,uVar3);
code_r0x00ee58ac:
            if ((in_stack_00000020 & 1) != 0) {
              uVar3 = func_0x0210a180(in_stack_00000030);
            }
            if ((in_stack_00000008 & 1) != 0) {
              uVar3 = func_0x0210a180(in_stack_00000018);
            }
            return uVar3;
          }
          uVar9 = 0x26;
        }
        else {
          func_0x00f2eac0(plVar4);
          uVar9 = 0x3c;
          if (unaff_w21 != 0) {
            uVar9 = 0x5b;
          }
        }
      }
      else {
        uVar9 = 0x3c;
        if (unaff_w21 != 0) {
          uVar9 = 0x5b;
        }
      }
    }
    else {
      func_0x0210a1a0(param_1);
      uVar9 = 0x2e;
    }
  }
  else {
    func_0x00ee5578(param_1,lVar2 + 0x20,unaff_w21,1);
    uVar9 = 0x2e;
    if (unaff_w21 != 0) {
      uVar9 = 0x2b;
    }
  }
code_r0x0210a8b0:
  uVar3 = _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
                    (param_1,uVar9);
  return uVar3;
}

