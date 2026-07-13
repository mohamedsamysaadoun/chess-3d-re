// Function: Move_ParseRegularCAN
// RVA: 0xEE4CD4
// Description: Parse CAN notation
// Decompiled: 2026-07-13 14:49:27
//
// Note: This is Ghidra's C pseudocode. Field accesses like *(int*)(this + 0xNN)
//       should be translated to C# field names using il2cpp.h struct definitions.
//


undefined8 Move_ParseRegularCAN(void)

{
  char *pcVar1;
  long unaff_x19;
  
  pcVar1 = *(char **)(unaff_x19 + 0x10);
  if (pcVar1 < *(char **)(unaff_x19 + 0x18)) {
    do {
      if ((*pcVar1 != ' ') && (*pcVar1 != '\t')) break;
      pcVar1 = pcVar1 + 1;
      *(char **)(unaff_x19 + 0x10) = pcVar1;
    } while (*(char **)(unaff_x19 + 0x18) != pcVar1);
  }
  func_0x00ee4e1c();
  return 1;
}

