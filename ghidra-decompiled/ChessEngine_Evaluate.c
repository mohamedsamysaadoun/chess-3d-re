// Function: ChessEngine_Evaluate
// RVA: 0xEE55AC
// Description: Evaluate position
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
/* WARNING: Removing unreachable block (ram,0x00ee56f4) */
/* WARNING: Removing unreachable block (ram,0x00ee570c) */

ulong ChessEngine_Evaluate(void)

{
  ulong uVar1;
  long *plVar2;
  long lVar3;
  undefined1 *puVar4;
  undefined1 *puVar5;
  ulong *puVar6;
  undefined8 uVar7;
  int in_w8;
  ulong *unaff_x20;
  uint unaff_w21;
  ulong unaff_x23;
  undefined1 *puVar8;
  ulong uVar9;
  byte in_stack_00000008;
  undefined8 in_stack_00000018;
  ulong in_stack_00000020;
  ulong in_stack_00000028;
  undefined1 *in_stack_00000030;
  
  if (in_w8 == 0x1e) {
code_r0x00f30c7c:
    return *unaff_x20;
  }
  if (in_w8 == 0x1d) {
    plVar2 = (long *)func_0x00f2bb58(*unaff_x20,1);
    func_0x00ee5578();
    uVar1 = func_0x0210a1a0();
    if ((*(byte *)((long)unaff_x20 + 0xb) >> 5 & 1) == 0) {
      if (unaff_w21 != 3) {
        return uVar1;
      }
      func_0x00ee1ffc(&stack0x00000008,*(long *)(*plVar2 + 0x10) + 0x18);
      puVar6 = (ulong *)func_0x0210a4a0(&stack0x00000008,0,&UNK_006651f4);
      in_stack_00000030 = (undefined1 *)puVar6[2];
      in_stack_00000028 = puVar6[1];
      in_stack_00000020 = *puVar6;
      puVar6[1] = 0;
      puVar6[2] = 0;
      *puVar6 = 0;
      uVar1 = func_0x0210a1b0();
code_r0x00ee58ac:
      if ((in_stack_00000020 & 1) != 0) {
        uVar1 = func_0x0210a180(in_stack_00000030);
      }
      if ((in_stack_00000008 & 1) != 0) {
        uVar1 = func_0x0210a180(in_stack_00000018);
      }
      return uVar1;
    }
  }
  else if (in_w8 == 0x14) {
    func_0x00f2bb58();
    func_0x00f2c0c0();
    func_0x00ee5578();
  }
  else {
    plVar2 = (long *)func_0x00f2bb58();
    func_0x00f2c000();
    lVar3 = func_0x00f2ee78(plVar2);
    if (lVar3 == 0) {
      if (*(char *)plVar2[3] == '\0') {
        puVar8 = (undefined1 *)plVar2[2];
        if (unaff_w21 == 0) {
          puVar4 = (undefined1 *)func_0x0210a9a0(puVar8,0x60);
          if (puVar4 == (undefined1 *)0x0) {
            func_0x00ea5084(&stack0x00000020,puVar8);
          }
          else {
            uVar1 = (long)puVar4 - (long)puVar8;
            if (0xffffffffffffffef < uVar1) {
              uVar7 = func_0x0210a210(&stack0x00000020);
              if ((in_stack_00000020 & 1) != 0) {
                func_0x0210a180(in_stack_00000030);
              }
              if ((in_stack_00000008 & 1) != 0) {
                func_0x0210a180(in_stack_00000018);
              }
              unaff_x20 = (ulong *)func_0x00fae398(uVar7);
              goto code_r0x00f30c7c;
            }
            if (uVar1 < 0x17) {
              in_stack_00000020 = CONCAT71(in_stack_00000020._1_7_,(char)((int)uVar1 << 1));
              puVar5 = (undefined1 *)((ulong)&stack0x00000020 | 1);
            }
            else {
              uVar9 = uVar1 + 0x10 & 0xfffffffffffffff0;
              puVar5 = (undefined1 *)func_0x0210a200(uVar9);
              in_stack_00000020 = uVar9 | 1;
              in_stack_00000030 = puVar5;
              in_stack_00000028 = uVar1;
            }
            for (; puVar8 != puVar4; puVar8 = puVar8 + 1) {
              *puVar5 = *puVar8;
              puVar5 = puVar5 + 1;
            }
            *puVar5 = 0;
          }
          uVar1 = func_0x0210a1b0();
          if ((in_stack_00000020 & 1) != 0) {
            uVar1 = func_0x0210a180(in_stack_00000030);
          }
        }
        else {
          uVar1 = func_0x0210a1a0();
        }
        if ((unaff_x23 & 1) != 0) {
          return uVar1;
        }
        if (plVar2[0xc] == 0) {
          uVar1 = func_0x00f2ccf4(plVar2);
          if (((unaff_w21 & 0xfffffffe) == 2) || ((uVar1 & 1) == 0)) {
            if ((*(byte *)((long)unaff_x20 + 0xb) >> 5 & 1) == 0) {
              if (unaff_w21 != 3) {
                return uVar1;
              }
              if (*(char *)((long)unaff_x20 + 10) == '\x13') {
                return uVar1;
              }
              if (*(char *)((long)unaff_x20 + 10) == '\x1e') {
                return uVar1;
              }
              func_0x00ee1ffc(&stack0x00000008,*(long *)(*plVar2 + 0x10) + 0x18);
              puVar6 = (ulong *)func_0x0210a4a0(&stack0x00000008,0,&UNK_006651f4);
              in_stack_00000030 = (undefined1 *)puVar6[2];
              in_stack_00000028 = puVar6[1];
              in_stack_00000020 = *puVar6;
              puVar6[1] = 0;
              puVar6[2] = 0;
              *puVar6 = 0;
              uVar1 = func_0x0210a1b0();
              goto code_r0x00ee58ac;
            }
          }
          else {
            func_0x00f2eac0(plVar2);
          }
        }
      }
      else {
        func_0x0210a1a0();
      }
    }
    else {
      func_0x00ee5578();
    }
  }
  uVar1 = _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc();
  return uVar1;
}

