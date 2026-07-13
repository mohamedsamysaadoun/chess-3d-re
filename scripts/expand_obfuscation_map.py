"""
Expand the obfuscation map by analyzing ALL classes in the dump.cs.
Strategy:
1. Find every class/struct/enum in EivaaChess.Game namespace and global namespace
2. Analyze their fields, methods, and inheritance to deduce their purpose
3. Generate a comprehensive obfuscation_map.json
4. Apply the map to produce dump_decoded.cs
"""
import re, json
from pathlib import Path
from collections import defaultdict, Counter
from datetime import datetime

DUMP_CS = Path("/home/z/my-project/download/chess-re/il2cpp-dumped/dump.cs")
STRINGLITERAL_JSON = Path("/home/z/my-project/download/chess-re/il2cpp-dumped/stringliteral.json")
EXISTING_MAP = Path("/home/z/my-project/download/chess-re/obfuscation_map.json")
OUTPUT_MAP = Path("/home/z/my-project/download/chess-re/obfuscation_map_expanded.json")
DECODED_DUMP = Path("/home/z/my-project/download/chess-re/dump_decoded.cs")
REPORT = Path("/home/z/my-project/download/chess-re/OBFUSCATION_ANALYSIS.md")

print(f"[{datetime.now().strftime('%H:%M:%S')}] Loading dump.cs...")
dump_text = DUMP_CS.read_text(errors='replace')
print(f"  Size: {len(dump_text):,} chars")

# Load string literals
print(f"[{datetime.now().strftime('%H:%M:%S')}] Loading string literals...")
with open(STRINGLITERAL_JSON) as f:
    string_literals = json.load(f)
print(f"  Strings: {len(string_literals):,}")

# Load existing map
with open(EXISTING_MAP) as f:
    obf_map = json.load(f)
print(f"  Existing mappings: {len(obf_map)}")

# ============== Parse all classes ==============
print(f"\n[{datetime.now().strftime('%H:%M:%S')}] Parsing classes...")

# Regex to find class/struct/enum declarations
# Captures: type (class/struct/enum), name, optional base type, optional namespace context
class_pattern = re.compile(
    r'^//\s*Namespace:\s*(\S*)\s*\n'    # namespace line
    r'((?:public|internal|private|sealed|abstract|static)\s+)?'  # modifiers
    r'(class|struct|enum|interface)\s+'  # kind
    r'(\w+)'                            # name
    r'(?:\s*:\s*([^\n{]+?))?'          # base types
    r'\s*(?://\s*TypeDefIndex:\s*(\d+))?',  # type def index
    re.MULTILINE
)

classes = []
for m in class_pattern.finditer(dump_text):
    namespace = m.group(1) or ""
    modifiers = m.group(2) or ""
    kind = m.group(3)
    name = m.group(4)
    base_types = (m.group(5) or "").strip()
    typedef_idx = m.group(6)
    
    # Find the body (between { and matching })
    body_start = m.end()
    # Find the opening brace
    brace_pos = dump_text.find('{', body_start)
    if brace_pos < 0:
        continue
    # Find matching close brace
    depth = 0
    body_end = brace_pos
    for i in range(brace_pos, min(brace_pos + 50000, len(dump_text))):
        if dump_text[i] == '{':
            depth += 1
        elif dump_text[i] == '}':
            depth -= 1
            if depth == 0:
                body_end = i + 1
                break
    
    body = dump_text[brace_pos:body_end]
    
    classes.append({
        "namespace": namespace,
        "kind": kind,
        "name": name,
        "base_types": base_types,
        "typedef_idx": typedef_idx,
        "body": body,
        "start_pos": m.start(),
        "end_pos": body_end,
    })

print(f"  Total classes/structs/enums: {len(classes)}")

# ============== Analyze each class ==============
def analyze_class(cls):
    """Extract features from a class to help identify it."""
    body = cls["body"]
    name = cls["name"]
    namespace = cls["namespace"]
    base = cls["base_types"]
    
    # Extract fields
    fields = []
    for fm in re.finditer(r'(?:public|private|protected|internal)\s+(?:static\s+)?(?:readonly\s+)?([\w<>\[\]]+)\s+(\w+)\s*;', body):
        fields.append({"type": fm.group(1), "name": fm.group(2)})
    
    # Extract methods (with RVA)
    methods = []
    for mm in re.finditer(r'//\s*RVA:\s*(0x[0-9A-F]+)[^\n]*\n\s*((?:public|private|protected|internal)\s+)?((?:static\s+)?[\w<>\[\]]+\s+)?(\w+)\s*\(([^)]*)\)', body):
        methods.append({
            "rva": mm.group(1),
            "return_type": (mm.group(3) or "").strip(),
            "name": mm.group(4),
            "params": mm.group(5),
        })
    
    # Extract enum values
    enum_values = []
    if cls["kind"] == "enum":
        for em in re.finditer(r'public\s+const\s+\w+\s+(\w+)\s*=\s*(\w+);', body):
            enum_values.append({"name": em.group(1), "value": em.group(2)})
    
    # Extract string literals used in this class (search body for hex addresses)
    body_strings = []
    for sm in re.finditer(r'0x[0-9A-F]{7,8}', body):
        addr = sm.group(0)
        for sl in string_literals:
            if sl.get("address") == addr:
                val = sl.get("value", "")
                if val and len(val) > 2 and val.isprintable():
                    body_strings.append(val)
                break
    
    return {
        "fields": fields,
        "methods": methods,
        "enum_values": enum_values,
        "strings": body_strings[:10],  # cap
    }

print(f"\n[{datetime.now().strftime('%H:%M:%S')}] Analyzing classes...")
for cls in classes:
    cls["analysis"] = analyze_class(cls)

# ============== Heuristic Decoding ==============
def is_obfuscated(name):
    """Check if a name looks obfuscated."""
    if not name or len(name) < 2:
        return False
    # Hindi/Urdu words we already know
    known_obf = {"KhaataKhol", "SechDMG", "SechChal", "KeemtiChal", "PALI", "DMG_MUSKL", "Parda"}
    if name in known_obf:
        return True
    # 1-2 char names
    if len(name) <= 2 and name.isalnum():
        return True
    # Hindi/Urdu patterns (consonant clusters typical of these languages)
    # Look for sequences like "Kh", "Ch", "Th", "gh", "dh", "bh"
    if re.search(r'[kgctbp]h[a-z]+', name) and any(c.isupper() for c in name[1:]):
        return True
    # Mixed case without underscores (camelCase + odd capitalization)
    if re.match(r'^[A-Z][a-z]+[A-Z][a-z]+$', name):
        # Could be normal PascalCase — check if it makes sense in English
        english_words = {"MainScript", "AdMobScript", "HighScoresScript", "PlayerPrefsX", 
                        "NewGamePromo", "Logo", "FPS", "KeyboardScript", "StandaloneStart",
                        "PingPongAnim", "UIToggleOnEnabled", "UIBlinkingText",
                        "UnityServicesInitializer", "GooglePlayStoreService", "GooglePurchaseUpdatedListener"}
        if name in english_words:
            return False
        # Look for Hindi/Urdu patterns
        if re.search(r'[kgctbp]h', name):
            return True
    return False

# Hindi/Urdu dictionary for common obfuscation words
HINDI_URDU_DICT = {
    "Khaata": "Account/Record/State",
    "Khol": "Open/Init",
    "Sech": "Search",
    "Chal": "Move",
    "Keemti": "Important/Valuable",
    "Parda": "Panel/Screen/Curtain",
    "EK": "One",
    "DO": "Two",
    "TEEN": "Three",
    "CHAR": "Four",
    "MUSKL": "Difficult",
    "Asaan": "Easy",
    "Khel": "Play/Game",
    "Jeet": "Win",
    "Haar": "Lose",
    "Band": "Close",
    "Karo": "Do",
    "Roko": "Stop",
    "Dekho": "Look",
    "Sun": "Listen",
    "Bol": "Speak",
    "Likho": "Write",
    "Padho": "Read",
    "Aana": "Come",
    "Jaana": "Go",
    "Khana": "Eat",
    "Peena": "Drink",
    "Sona": "Sleep",
    "Jagna": "Wake",
    "Uthna": "Rise",
    "Baithna": "Sit",
    "Chalna": "Walk",
    "Daud": "Run",
    "Ladna": "Fight",
    "Bhaagna": "Flee",
    "Maarna": "Hit/Kill",
    "Kaata": "Cut",
    "Toda": "Break",
    "Joda": "Join",
    "Milna": "Meet",
    "Torna": "Steal",
    "Dena": "Give",
    "Lena": "Take",
    "Bechna": "Sell",
    "Kharidna": "Buy",
    "Maangna": "Ask/Beg",
    "Batana": "Tell",
    "Chup": "Quiet/Hidden",
    "Saaf": "Clear",
    "Ganda": "Dirty",
    "Achha": "Good",
    "Bura": "Bad",
    "Naya": "New",
    "Purana": "Old",
    "Bada": "Big",
    "Chhota": "Small",
    "Lamba": "Long",
    "Chaura": "Wide",
    "Uncha": "High",
    "Neecha": "Low",
    "Andar": "Inside",
    "Bahar": "Outside",
    "Upar": "Up",
    "Neeche": "Down",
    "Aage": "Forward",
    "Peeche": "Backward",
    "Dayein": "Right",
    "Bayein": "Left",
}

def decode_hindi_name(name):
    """Try to decode a Hindi/Urdu obfuscated name."""
    # Split by capital letters
    parts = re.findall(r'[A-Z][a-z]*|[A-Z]+(?=[A-Z]|$)', name)
    if not parts:
        return None
    
    # Check each part against the dictionary
    decoded_parts = []
    confidence = 0
    for part in parts:
        if part in HINDI_URDU_DICT:
            decoded_parts.append(HINDI_URDU_DICT[part])
            confidence += 1
        else:
            decoded_parts.append(part)
    
    if confidence == 0:
        return None
    
    # Try to form a meaningful English class name
    decoded = " ".join(decoded_parts)
    return {
        "decoded_parts": decoded_parts,
        "confidence": confidence,
        "raw_decoded": decoded,
    }

# ============== Apply decoding ==============
print(f"\n[{datetime.now().strftime('%H:%M:%S')}] Decoding obfuscated names...")

new_mappings = 0
for cls in classes:
    name = cls["name"]
    
    # Skip if already mapped
    if name in obf_map:
        continue
    
    # Skip if not obfuscated
    if not is_obfuscated(name):
        continue
    
    analysis = cls["analysis"]
    decoded_name = None
    confidence = "low"
    reason = ""
    
    # Try Hindi/Urdu decoding first
    hindi_decode = decode_hindi_name(name)
    if hindi_decode and hindi_decode["confidence"] >= 1:
        # Use context from analysis to refine
        decoded_parts = hindi_decode["decoded_parts"]
        
        # Look at fields and methods to refine
        fields = analysis["fields"]
        methods = analysis["methods"]
        
        # Heuristic: if class has List<> fields, it's likely a Manager
        if any("List" in f["type"] for f in fields):
            if "Search" in decoded_parts:
                decoded_name = "SearchManager"
                confidence = "medium"
                reason = f"Hindi decoded as {' '.join(decoded_parts)}; has List fields (manager-like)"
            elif "Move" in decoded_parts:
                decoded_name = "MoveManager"
                confidence = "medium"
                reason = f"Hindi decoded as {' '.join(decoded_parts)}; has List fields"
            elif "Account" in decoded_parts or "State" in decoded_parts:
                decoded_name = "StateManager"
                confidence = "medium"
                reason = f"Hindi decoded as {' '.join(decoded_parts)}; has List fields"
        
        # Heuristic: if class has many methods returning int/bool, it's a utility
        if not decoded_name and len(methods) > 10:
            decoded_name = "GameUtility"
            confidence = "low"
            reason = f"Hindi decoded as {' '.join(decoded_parts)}; many methods (utility-like)"
        
        # Heuristic: based on inheritance
        if not decoded_name:
            base = cls.get("base_types", "")
            if "MonoBehaviour" in base:
                decoded_name = "GameBehaviour"
                confidence = "low"
                reason = f"Hindi decoded as {' '.join(decoded_parts)}; MonoBehaviour"
            elif "ScriptableObject" in base:
                decoded_name = "GameDataObject"
                confidence = "low"
                reason = f"Hindi decoded as {' '.join(decoded_parts)}; ScriptableObject"
    
    # Look at string literals for clues
    if not decoded_name and analysis["strings"]:
        for s in analysis["strings"]:
            if "score" in s.lower():
                decoded_name = "ScoreComponent"
                confidence = "low"
                reason = f"Contains string: {s[:50]}"
                break
            elif "save" in s.lower():
                decoded_name = "SaveComponent"
                confidence = "low"
                reason = f"Contains string: {s[:50]}"
                break
            elif "http" in s.lower():
                decoded_name = "NetworkComponent"
                confidence = "low"
                reason = f"Contains URL: {s[:50]}"
                break
    
    # Look at method names for clues
    if not decoded_name:
        method_names = [m["name"] for m in analysis["methods"]]
        if any("Move" in m for m in method_names):
            decoded_name = "MoveHandler"
            confidence = "low"
            reason = "Has Move methods"
        elif any("Save" in m or "Load" in m for m in method_names):
            decoded_name = "SaveLoadHandler"
            confidence = "low"
            reason = "Has Save/Load methods"
        elif any("AI" in m or "Minimax" in m or "Search" in m for m in method_names):
            decoded_name = "AIComponent"
            confidence = "medium"
            reason = "Has AI/search methods"
    
    if decoded_name:
        # Make unique
        base_name = decoded_name
        i = 2
        while any(info["new_name"] == decoded_name for info in obf_map.values()):
            decoded_name = f"{base_name}{i}"
            i += 1
        
        obf_map[name] = {
            "new_name": decoded_name,
            "type": cls["kind"],
            "confidence": confidence,
            "reason": reason,
            "namespace": cls["namespace"],
            "typedef_idx": cls["typedef_idx"],
        }
        new_mappings += 1

print(f"  Added {new_mappings} new mappings (total: {len(obf_map)})")

# ============== Save expanded map ==============
OUTPUT_MAP.write_text(json.dumps(obf_map, indent=2, ensure_ascii=False))
print(f"\n[+] Expanded map saved: {OUTPUT_MAP}")

# ============== Apply the map to dump.cs ==============
print(f"\n[{datetime.now().strftime('%H:%M:%S')}] Applying map to dump.cs...")

# Build replacement list (longest first to avoid partial matches)
replacements = []
for old_name, info in obf_map.items():
    if info.get("confidence") in ("high", "medium"):
        replacements.append((old_name, info["new_name"]))
replacements.sort(key=lambda x: -len(x[0]))

print(f"  Applying {len(replacements)} high/medium confidence mappings...")

decoded_text = dump_text
for old, new in replacements:
    # Use word boundaries
    decoded_text = re.sub(rf'\b{re.escape(old)}\b', new, decoded_text)

DECODED_DUMP.write_text(decoded_text)
print(f"  Decoded dump saved: {DECODED_DUMP}")
print(f"  Size: {len(decoded_text):,} chars (was {len(dump_text):,})")

# ============== Generate analysis report ==============
report = []
report.append("# Obfuscation Analysis Report")
report.append(f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
report.append("")
report.append("## Summary")
report.append("")
report.append(f"- **Total classes/structs/enums in dump.cs**: {len(classes)}")
report.append(f"- **Total obfuscation mappings**: {len(obf_map)}")
report.append(f"- **High confidence**: {sum(1 for v in obf_map.values() if v.get('confidence') == 'high')}")
report.append(f"- **Medium confidence**: {sum(1 for v in obf_map.values() if v.get('confidence') == 'medium')}")
report.append(f"- **Low confidence**: {sum(1 for v in obf_map.values() if v.get('confidence') == 'low')}")
report.append("")
report.append("## Mappings Table")
report.append("")
report.append("| Original Name | Decoded Name | Type | Confidence | Namespace | Reason |")
report.append("|---|---|---|---|---|---|")

for old, info in sorted(obf_map.items(), key=lambda x: (-{'high':3,'medium':2,'low':1}.get(x[1].get('confidence','low'),0), x[0])):
    new = info["new_name"]
    kind = info.get("type", "?")
    conf = info.get("confidence", "?")
    ns = info.get("namespace", "")
    reason = info.get("reason", "")
    report.append(f"| `{old}` | `{new}` | {kind} | {conf} | `{ns}` | {reason} |")

report.append("")
report.append("## Hindi/Urdu Dictionary Used")
report.append("")
report.append("| Hindi/Urdu Word | English Meaning |")
report.append("|---|---|")
for word, meaning in sorted(HINDI_URDU_DICT.items()):
    report.append(f"| {word} | {meaning} |")

report.append("")
report.append("## Files Generated")
report.append("")
report.append(f"- `{OUTPUT_MAP}` — Full obfuscation map (JSON)")
report.append(f"- `{DECODED_DUMP}` — Decoded dump.cs (with renamed classes)")
report.append(f"- This report")

REPORT.write_text("\n".join(report))
print(f"\n[+] Report saved: {REPORT}")

# ============== Print summary ==============
print("\n=== Final Mapping Summary ===")
for old, info in sorted(obf_map.items(), key=lambda x: (-{'high':3,'medium':2,'low':1}.get(x[1].get('confidence','low'),0), x[0])):
    print(f"  {old:25s} → {info['new_name']:30s} [{info.get('confidence','?')}]")
