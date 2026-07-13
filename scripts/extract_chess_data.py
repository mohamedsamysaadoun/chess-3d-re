"""
Deep analysis: extract piece-square tables, piece values, and other 
static data from libil2cpp.so using the offsets from dump.cs.
"""
import json, struct, re
from pathlib import Path
import lief

SO = "/home/z/my-project/download/chess-re/native/config_arm64/lib/arm64-v8a/libil2cpp.so"
binary = lief.parse(SO)

with open(SO, "rb") as f:
    raw = f.read()

def read_at_rva(rva, size):
    for s in binary.sections:
        if s.virtual_address <= rva < s.virtual_address + s.size:
            offset_in_section = rva - s.virtual_address
            content = bytes(s.content)
            return content[offset_in_section:offset_in_section + size]
    return None

def read_int_array(rva, count, signed=True):
    data = read_at_rva(rva, count * 4)
    if data is None or len(data) < count * 4:
        return None
    fmt = "<" + ("i" if signed else "I") * count
    return list(struct.unpack(fmt, data[:count*4]))

def read_long_array(rva, count, signed=True):
    data = read_at_rva(rva, count * 8)
    if data is None or len(data) < count * 8:
        return None
    fmt = "<" + ("q" if signed else "Q") * count
    return list(struct.unpack(fmt, data[:count*8]))

def read_bool_array(rva, count):
    data = read_at_rva(rva, count)
    if data is None:
        return None
    return [b != 0 for b in data]

dump = Path("/home/z/my-project/download/chess-re/il2cpp-dumped/dump.cs").read_text(errors='replace')

# Find the ChessEngine class body (decoded name)
chess_engine_match = re.search(
    r'sealed\s+class\s+(?:ChessEngine|SechDMG).*?^\}',
    dump, re.MULTILINE | re.DOTALL
)

static_field_pattern = re.compile(
    r'private\s+static\s+(?:readonly\s+)?(\w+(?:\[\])?(?:\[,?\])?)\s+(\w+);\s*//\s*(0x[0-9A-Fa-f]+)',
    re.MULTILINE
)

print("=" * 80)
print("DEEP ANALYSIS: Chess Engine Static Data Tables")
print("=" * 80)

results = {}

if chess_engine_match:
    class_body = chess_engine_match.group(0)
    
    for m in static_field_pattern.finditer(class_body):
        field_type = m.group(1)
        field_name = m.group(2)
        offset_hex = m.group(3)
        offset = int(offset_hex, 16)
        
        print(f"\n--- {field_name} ({field_type}) @ {offset_hex} ---")
        
        # Try to determine array size from name
        if "PcSq" in field_name or "PST" in field_name.upper():
            count = 64
            arr = read_int_array(offset, count)
            if arr:
                print(f"  8x8 grid (white perspective, from a8 to h1):")
                for row in range(8):
                    row_vals = arr[row*8:(row+1)*8]
                    print(f"    Row {row}: {row_vals}")
                results[field_name] = {
                    "type": field_type,
                    "offset": offset_hex,
                    "count": count,
                    "values": arr,
                }
        elif "Daam" in field_name or "values" in field_name.lower():
            count = 14
            arr = read_int_array(offset, count)
            if arr:
                print(f"  Piece values (index 0-13): {arr}")
                results[field_name] = {
                    "type": field_type,
                    "offset": offset_hex,
                    "count": count,
                    "values": arr,
                }
        elif "mailbox" in field_name.lower():
            count = 120  # 10x12 mailbox
            arr = read_int_array(offset, count)
            if arr:
                print(f"  10x12 mailbox (120 entries):")
                for row in range(12):
                    row_vals = arr[row*10:(row+1)*10]
                    print(f"    Row {row}: {row_vals}")
                results[field_name] = {
                    "type": field_type,
                    "offset": offset_hex,
                    "count": count,
                    "values": arr,
                }
        elif "mailbox64" in field_name.lower():
            count = 64
            arr = read_int_array(offset, count)
            if arr:
                print(f"  64→120 conversion table:")
                for row in range(8):
                    row_vals = arr[row*8:(row+1)*8]
                    print(f"    Row {row}: {row_vals}")
                results[field_name] = {
                    "type": field_type,
                    "offset": offset_hex,
                    "count": count,
                    "values": arr,
                }
        elif "slidingPieces" in field_name or "khasriSakto" in field_name:
            count = 14
            arr = read_bool_array(offset, count)
            if arr:
                print(f"  Sliding pieces (true=sliding): {arr}")
                results[field_name] = {
                    "type": field_type,
                    "offset": offset_hex,
                    "count": count,
                    "values": arr,
                }
        elif "castleMask" in field_name.lower():
            count = 64
            arr = read_int_array(offset, count)
            if arr:
                print(f"  Castle mask (64 entries):")
                for row in range(8):
                    row_vals = arr[row*8:(row+1)*8]
                    print(f"    Row {row}: {[hex(v) for v in row_vals]}")
                results[field_name] = {
                    "type": field_type,
                    "offset": offset_hex,
                    "count": count,
                    "values": arr,
                }
        elif "zobrist" in field_name.lower() or "zChabis" in field_name:
            count = 12 * 64  # 12 piece types × 64 squares
            arr = read_long_array(offset, count)
            if arr:
                print(f"  Zobrist keys (12 pieces × 64 squares = {count} entries)")
                print(f"  First 5: {[hex(v) for v in arr[:5]]}")
                results[field_name] = {
                    "type": field_type,
                    "offset": offset_hex,
                    "count": count,
                    "values_first_5": [hex(v) for v in arr[:5]],
                }
        elif "flip" in field_name.lower():
            count = 64
            arr = read_int_array(offset, count)
            if arr:
                print(f"  Flip table (for black PST lookup):")
                for row in range(8):
                    row_vals = arr[row*8:(row+1)*8]
                    print(f"    Row {row}: {row_vals}")
                results[field_name] = {
                    "type": field_type,
                    "offset": offset_hex,
                    "count": count,
                    "values": arr,
                }
        elif "offsets" in field_name.lower() and "piece" not in field_name.lower():
            count = 8
            arr = read_int_array(offset, count)
            if arr:
                print(f"  Move offsets (8 directions): {arr}")
                results[field_name] = {
                    "type": field_type,
                    "offset": offset_hex,
                    "count": count,
                    "values": arr,
                }

# Save all findings
out = Path("/home/z/my-project/download/chess-re/chess_engine_data.json")
out.write_text(json.dumps(results, indent=2, default=str))
print(f"\n\n[+] Saved to: {out}")
print(f"[+] Total tables extracted: {len(results)}")
