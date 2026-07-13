// Function: OpeningBook_GetOpeningMove
// RVA: 0xEE3C0C
// Description: Get opening move
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


undefined8 OpeningBook_GetOpeningMove(undefined8 param_1,ulong param_2)

{
  byte in_w8;
  byte *pbVar1;
  ulong unaff_x19;
  long unaff_x20;
  byte *unaff_x21;
  byte *unaff_x22;
  byte *unaff_x23;
  
  if (param_2 < unaff_x19) {
    func_0x0210a960();
    in_w8 = *unaff_x21;
  }
  if ((in_w8 & 1) == 0) {
    pbVar1 = unaff_x21 + 1;
  }
  else {
    pbVar1 = *(byte **)(unaff_x20 + 0x28);
  }
  for (; unaff_x22 != unaff_x23; unaff_x22 = unaff_x22 + 1) {
    *pbVar1 = *unaff_x22;
    pbVar1 = pbVar1 + 1;
  }
  *pbVar1 = 0;
  if ((*unaff_x21 & 1) == 0) {
    *unaff_x21 = (byte)((int)unaff_x19 << 1);
  }
  else {
    *(ulong *)(unaff_x20 + 0x20) = unaff_x19;
  }
  return 1;
}

