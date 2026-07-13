"""
Patch libil2cpp.so to remove ads from Real Chess 3D.
Patches AdMobInit, AMReqInters, AMOnGameCompleteEv, AdMobOnGameStart
to immediately return (ARM64 RET = 0xD65F03C0).

NOTE: IL2CPP code lives in the `il2cpp` section, NOT .text!
"""
import shutil
import lief
from pathlib import Path

SRC = Path("/home/z/my-project/download/chess-re/native/config_arm64/lib/arm64-v8a/libil2cpp.so")
DST = Path("/home/z/my-project/download/chess-re/modded/libil2cpp-patched.so")
DST.parent.mkdir(parents=True, exist_ok=True)
shutil.copy(SRC, DST)

# RVAs to patch (from dump.cs)
PATCHES = [
    ("AdMobInit",          0xEC9BCC),
    ("AMReqInters",        0xEC9C54),
    ("AMOnGameCompleteEv", 0xEC15CC),
    ("AdMobOnGameStart",   0xEB6CB0),
]

# ARM64 RET instruction encoding
RET = bytes([0xC0, 0x03, 0x5F, 0xD6])

binary = lief.parse(str(DST))

# Find the section containing each RVA
def find_section(binary, rva):
    for s in binary.sections:
        if s.virtual_address <= rva < s.virtual_address + s.size:
            return s
    return None

for name, rva in PATCHES:
    section = find_section(binary, rva)
    if section is None:
        print(f"  [!] {name} @ 0x{rva:x} — not in any section, skipping")
        continue
    
    section_offset = rva - section.virtual_address
    content = bytearray(section.content)
    
    if section_offset + 4 > len(content):
        print(f"  [!] {name} @ 0x{rva:x} — out of section range, skipping")
        continue
    
    old_bytes = bytes(content[section_offset:section_offset+4])
    
    # Make section writable if needed
    section.content = content[:section_offset] + bytearray(RET) + content[section_offset+4:]
    
    print(f"  [+] Patched {name} @ RVA 0x{rva:x} in section '{section.name}'")
    print(f"      Old: {old_bytes.hex()} ({' '.join(f'{b:02x}' for b in old_bytes)})")
    print(f"      New: {RET.hex()} (ARM64 RET)")

binary.write(str(DST))
print(f"\n[*] Patched binary written to: {DST}")
print(f"[*] Size: {DST.stat().st_size:,} bytes")

# Verify patches
print("\n[*] Verifying patches...")
verify = lief.parse(str(DST))
for name, rva in PATCHES:
    section = find_section(verify, rva)
    if section:
        offset = rva - section.virtual_address
        actual = bytes(section.content[offset:offset+4])
        status = "OK" if actual == RET else "FAIL"
        print(f"  [{status}] {name} @ 0x{rva:x}: {actual.hex()}")
