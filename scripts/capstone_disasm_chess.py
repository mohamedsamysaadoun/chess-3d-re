"""
Fast disassembly of chess engine functions using capstone.
Much faster than rizin/Ghidra for targeted function disassembly.
"""
import struct, json, re
from pathlib import Path
from datetime import datetime
from collections import OrderedDict

import lief
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

# Paths
SO = "/home/z/my-project/download/chess-re/native/config_arm64/lib/arm64-v8a/libil2cpp.so"
DUMP_CS = Path("/home/z/my-project/download/chess-re/il2cpp-dumped/dump.cs")
OUT = Path("/home/z/my-project/download/chess-re/capstone-disasm")
OUT.mkdir(parents=True, exist_ok=True)

# Load the binary
print(f"[{datetime.now().strftime('%H:%M:%S')}] Loading binary with lief...")
binary = lief.parse(SO)

# Build a section lookup
sections = {}
for s in binary.sections:
    sections[s.name] = {
        "va": s.virtual_address,
        "offset": s.offset,
        "size": s.size,
        "content": bytes(s.content),
    }
    print(f"  Section {s.name:20s} VA=0x{s.virtual_address:08x} size=0x{s.size:x}")

# Find the section containing the il2cpp code
il2cpp_section = sections.get("il2cpp", {})
text_section = sections.get(".text", {})
print(f"\n[*] .text: VA=0x{text_section.get('va', 0):x}, size=0x{text_section.get('size', 0):x}")
print(f"[*] il2cpp: VA=0x{il2cpp_section.get('va', 0):x}, size=0x{il2cpp_section.get('size', 0):x}")

# Read the raw binary data
with open(SO, "rb") as f:
    raw = f.read()

# Helper: read bytes at a given RVA
def read_at_rva(rva, size):
    """Read bytes at a virtual address (RVA)."""
    # Find which section contains this RVA
    for sname, s in sections.items():
        if s["va"] <= rva < s["va"] + s["size"]:
            offset_in_section = rva - s["va"]
            return s["content"][offset_in_section:offset_in_section + size]
    return None

# Parse dump.cs to find function boundaries
print(f"\n[{datetime.now().strftime('%H:%M:%S')}] Parsing dump.cs for function boundaries...")
dump_text = DUMP_CS.read_text(errors='replace')

# Find all function entries with their RVA
# Pattern: // RVA: 0xXXXX Offset: 0xXXXX VA: 0xXXXX
func_pattern = re.compile(
    r'//\s*RVA:\s*(0x[0-9A-Fa-f]+)\s+Offset:\s*(0x[0-9A-Fa-f]+)\s+VA:\s*(0x[0-9A-Fa-f]+)\s*(?:Slot:\s*\d+)?\s*\n\s*((?:public|private|protected|internal)?\s*[\w<>\[\]]+\s+)?(\w+)\s*\(([^)]*)\)'
)

functions = OrderedDict()  # rva -> info
for m in func_pattern.finditer(dump_text):
    rva = int(m.group(1), 16)
    offset = int(m.group(2), 16)
    va = int(m.group(3), 16)
    ret_type = (m.group(4) or "").strip()
    name = m.group(5)
    params = m.group(6)
    
    # Skip constructors and special methods for now
    if name in [".ctor", ".cctor", "get_", "set_", "op_", "add_", "remove_"]:
        # Keep them but mark
        pass
    
    functions[rva] = {
        "rva": rva,
        "offset": offset,
        "va": va,
        "return_type": ret_type,
        "name": name,
        "params": params,
    }

# Sort by RVA to find function sizes
rva_list = sorted(functions.keys())
for i, rva in enumerate(rva_list):
    if i + 1 < len(rva_list):
        next_rva = rva_list[i + 1]
        # Function size = next function RVA - this RVA
        # But cap at reasonable size (some functions are huge)
        size = min(next_rva - rva, 65536)  # cap at 64KB
        functions[rva]["size"] = size
    else:
        functions[rva]["size"] = 256  # last function, unknown size

print(f"  Found {len(functions):,} functions")

# Key functions to disassemble
KEY_FUNCTIONS = [
    # (rva, name, description)
    (0xEE3E34, "ChessEngine_ctor", "Constructor"),
    (0xEE3FF8, "ChessEngine_Suru", "Initialize/Start"),
    (0xEE4130, "ChessEngine_ParseFEN", "Parse FEN string"),
    (0xEE4948, "ChessEngine_GetBestMove", "PUBLIC API: Get best move"),
    (0xEE4DFC, "ChessEngine_StartSearch", "Start search"),
    (0xEE4E78, "ChessEngine_AlphaBeta", "Alpha-beta search"),
    (0xEE5290, "ChessEngine_QuiescenceSearch", "Quiescence search"),
    (0xEE5DB8, "ChessEngine_GenerateMoves", "Generate all legal moves"),
    (0xEE6CB8, "ChessEngine_GenerateCaptures", "Generate capture moves"),
    (0xEE73D0, "ChessEngine_AddMove", "Add move to list"),
    (0xEE7504, "ChessEngine_AddPromotionMove", "Add promotion move"),
    (0xEE55AC, "ChessEngine_Evaluate", "Evaluate position"),
    (0xEE7590, "ChessEngine_EvalWhitePawn", "Eval white pawn"),
    (0xEE78A4, "ChessEngine_EvalBlackPawn", "Eval black pawn"),
    (0xEE7710, "ChessEngine_EvalWhiteKing", "Eval white king"),
    (0xEE7A40, "ChessEngine_EvalBlackKing", "Eval black king"),
    (0xEE7BEC, "ChessEngine_EvalWhiteKingEndgame", "Eval white king endgame"),
    (0xEE7C8C, "ChessEngine_EvalBlackKingEndgame", "Eval black king endgame"),
    (0xEE6570, "ChessEngine_MakeMove", "Make move"),
    (0xEE6A98, "ChessEngine_UnmakeMove", "Unmake move"),
    (0xEE7D28, "ChessEngine_IsSquareAttacked", "Is square attacked"),
    (0xEE5D38, "ChessEngine_IsInCheck", "Is in check"),
    (0xEE6438, "ChessEngine_SortPV", "Sort PV"),
    (0xEE6510, "ChessEngine_QuickSortMoves", "QuickSort moves"),
    (0xEE7260, "ChessEngine_PartitionMoves", "Partition moves"),
    
    # OpeningBook (KhaataKhol)
    (0xEE3C0C, "OpeningBook_GetOpeningMove", "Get opening move"),
    (0xEE3CE0, "OpeningBook_ctor", "OpeningBook constructor"),
    
    # Move struct (SechChal)
    (0xEE4670, "Move_get_Empty", "Move.Empty getter"),
    (0xEE559C, "Move_op_Equality", "Move == operator"),
    (0xEE4CD4, "Move_ParseRegularCAN", "Parse CAN notation"),
    (0xEE4BB8, "Move_ToString", "Move.ToString"),
    
    # Ad functions (PATCHED)
    (0xEC9BCC, "AdMobScript_AdMobInit", "AdMob init (PATCHED→RET)"),
    (0xEC9C54, "AdMobScript_AMReqInters", "Request interstitial (PATCHED→RET)"),
    (0xEC15CC, "AdMobScript_AMOnGameCompleteEv", "End-game ad (PATCHED→RET)"),
    (0xEB6CB0, "AdMobScript_AdMobOnGameStart", "Start-game ad (PATCHED→RET)"),
    
    # MainScript
    (0xEC2F20, "MainScript_GoToHighScores", "Navigate to high scores"),
    (0xEC2FA0, "MainScript_FindUIObjects", "Find UI objects"),
    (0xEC312C, "MainScript_SetupUIFunctions", "Setup UI functions"),
    (0xEC40A8, "MainScript_InGameUIInit", "In-game UI init"),
]

# Initialize capstone for ARM64
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.detail = True

# Disassemble each function
print(f"\n[{datetime.now().strftime('%H:%M:%S')}] Disassembling {len(KEY_FUNCTIONS)} key functions...")

results = []
for target_rva, name, description in KEY_FUNCTIONS:
    # Find the function in our parsed list
    if target_rva in functions:
        func_info = functions[target_rva]
        size = func_info["size"]
    else:
        # Default size for functions not in dump (shouldn't happen)
        size = 256
    
    # Cap the size to avoid huge disassembly
    size = min(size, 4096)
    
    # Read the bytes
    code = read_at_rva(target_rva, size)
    if code is None:
        print(f"  [!] {name}: could not read bytes at 0x{target_rva:x}")
        results.append({"name": name, "rva": hex(target_rva), "status": "READ_FAILED"})
        continue
    
    # Disassemble
    out_path = OUT / f"{name}.asm"
    insn_count = 0
    
    with open(out_path, "w") as f:
        f.write(f"// Function: {name}\n")
        f.write(f"// RVA: 0x{target_rva:x}\n")
        f.write(f"// Description: {description}\n")
        f.write(f"// Size: {size} bytes (capped at 4096)\n")
        f.write(f"// Analyzed: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write(f"// Binary: libil2cpp.so\n")
        f.write(f"// Architecture: AArch64 (ARM64)\n")
        f.write(f"\n")
        f.write(f"// Disassembly:\n")
        
        for i, insn in enumerate(md.disasm(code, target_rva)):
            # Format: address: hex bytes  mnemonic operands
            hex_bytes = " ".join(f"{b:02x}" for b in insn.bytes)
            f.write(f"0x{insn.address:08x}: {hex_bytes:20s}  {insn.mnemonic:8s} {insn.op_str}\n")
            insn_count += 1
            
            # Stop at RET instruction (end of function)
            if insn.mnemonic == "ret":
                break
            
            # Safety limit
            if insn_count > 1000:
                f.write("// ... (truncated at 1000 instructions)\n")
                break
    
    results.append({
        "name": name,
        "rva": hex(target_rva),
        "description": description,
        "status": "OK",
        "instructions": insn_count,
        "size_bytes": size,
        "output_file": str(out_path),
    })
    print(f"  [+] {name:40s} {insn_count:4d} instructions")

# Save summary
summary_path = OUT / "_summary.json"
with open(summary_path, "w") as f:
    json.dump(results, f, indent=2)

print(f"\n[+] Summary saved: {summary_path}")
print(f"[+] Total functions: {len(results)}")
print(f"[+] Successful: {sum(1 for r in results if r['status'] == 'OK')}")
print(f"[+] Total instructions: {sum(r.get('instructions', 0) for r in results):,}")

# Show one example
print(f"\n{'=' * 80}")
print("Example: ChessEngine_GetBestMove (first 40 instructions)")
print('=' * 80)
example = OUT / "ChessEngine_GetBestMove.asm"
if example.exists():
    lines = example.read_text().split("\n")
    for line in lines[:50]:
        print(line)
