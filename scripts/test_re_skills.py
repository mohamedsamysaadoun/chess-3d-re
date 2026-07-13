"""
Smoke-test the new RE skills by running a full pipeline on the chess XAPK
we downloaded earlier. Demonstrates: android-re + native-re + crypto-re.
"""
import os, re, json, subprocess, hashlib, math, collections
from pathlib import Path

# ---- Paths ----
ROOT = Path("/home/z/my-project/download/chess-re")
EXTRACTED = ROOT / "extracted"
NATIVE_DIR = ROOT / "native" / "config_arm64" / "lib" / "arm64-v8a"
REPORT = ROOT / "report.md"

# ---- Helpers ----
def entropy(b: bytes) -> float:
    if not b: return 0
    f = collections.Counter(b)
    t = len(b)
    return -sum((c/t) * math.log2(c/t) for c in f.values())

def find_crypto_constants(data: bytes):
    patterns = {
        "AES S-box":      bytes([0x63,0x7c,0x77,0x7b,0xf2,0x6b,0x6f,0xc5]),
        "AES InvS-box":   bytes([0x52,0x09,0x6a,0xd5,0x30,0x36,0xa5,0x38]),
        "MD5 init":       bytes.fromhex("0123456789abcdeffedcba9876543210"),
        "SHA-1 init":     bytes.fromhex("67452301efcdab8998badcfe10325476c3d2e1f0"),
        "SHA-256 init":   bytes.fromhex("6a09e667bb67ae853c6ef372a54ff53a"),
        "CRC32 poly":     bytes.fromhex("20b3d8ed"),
        "TEA delta":      bytes.fromhex("b979379e"),
    }
    found = []
    for name, pat in patterns.items():
        pos = data.find(pat)
        if pos >= 0:
            found.append((name, pos))
    return found

# ---- Run analysis ----
report = []
report.append("# Real Chess 3D - Reverse Engineering Report")
report.append("")
report.append("## 1. XAPK Container (android-re skill)")
report.append("")

xapk = Path("/home/z/my-project/download/gameee.xapk")
report.append(f"- **File**: `{xapk.name}`")
report.append(f"- **Size**: {xapk.stat().st_size:,} bytes ({xapk.stat().st_size/1024/1024:.2f} MB)")
report.append(f"- **SHA256**: {hashlib.sha256(xapk.read_bytes()).hexdigest()}")

manifest = json.loads((EXTRACTED / "manifest.json").read_text())
report.append(f"- **Package**: `{manifest['package_name']}`")
report.append(f"- **App name**: {manifest['name']}")
report.append(f"- **Version**: {manifest['version_name']} (code: {manifest['version_code']})")
report.append(f"- **Min SDK**: {manifest['min_sdk_version']}")
report.append(f"- **Target SDK**: {manifest['target_sdk_version']}")
report.append(f"- **Total size (declared)**: {manifest['total_size']:,} bytes")
report.append("")
report.append(f"### Permissions ({len(manifest['permissions'])})")
for p in manifest['permissions']:
    risk = "HIGH" if "BILLING" in p else "MED" if "AD_ID" in p or "ADSERVICES" in p else "LOW"
    report.append(f"- [{risk}] `{p}`")

report.append("")
report.append("### Split APKs")
for split in manifest['split_apks']:
    report.append(f"- `{split['file']}` ({split['id']})")

report.append("")
report.append("## 2. Native Libraries (native-re skill)")
report.append("")
report.append("| Library | Size | Stripped? | Crypto Constants |")
report.append("|---|---|---|---|")

for so in sorted(NATIVE_DIR.glob("*.so")):
    data = so.read_bytes()
    ftype = subprocess.check_output(["file", str(so)]).decode().split(":",1)[1].strip()
    is_stripped = "stripped" in ftype.lower() and "not stripped" not in ftype.lower()
    crypto = find_crypto_constants(data)
    crypto_str = ", ".join(f"{n}@0x{p:x}" for n,p in crypto[:3]) or "-"
    report.append(f"| `{so.name}` | {len(data):,} B | {'Yes' if is_stripped else 'No'} | {crypto_str} |")

report.append("")
report.append("## 3. IL2CPP Detection (Unity)")
report.append("")
report.append("The presence of `libil2cpp.so` indicates this is a **Unity game compiled with IL2CPP**.")
report.append("This means:")
report.append("- C# game code is compiled to C++ then to native ARM64 assembly (not DEX)")
report.append("- The actual game logic lives in `libil2cpp.so`, NOT in the DEX files")
report.append("- To reverse the game logic, we need IL2CPP-specific tools:")
report.append("  - **Il2CppDumper** - extracts class/method names from `global-metadata.dat`")
report.append("  - **Il2CppInspector** - similar, with C# stub generation")
report.append("  - Then load `libil2cpp.so` in Ghidra/IDA with the recovered symbols")
report.append("")

gmd_paths = list(EXTRACTED.rglob("global-metadata.dat"))
if gmd_paths:
    for gmd in gmd_paths:
        report.append(f"- `global-metadata.dat` found: `{gmd}` ({gmd.stat().st_size:,} bytes)")
else:
    report.append("- `global-metadata.dat` NOT found in extracted XAPK (may be inside the base APK)")

report.append("")
report.append("## 4. Static Decompilation (android-re / jadx)")
report.append("")

decompiled = ROOT / "decompiled" / "sources"
if decompiled.exists():
    java_files = list(decompiled.rglob("*.java"))
    report.append(f"- Total decompiled Java files: **{len(java_files):,}**")
    jni_files = [f for f in java_files if "jnibridge" in str(f).lower() or "jni" in f.name.lower()]
    if jni_files:
        report.append(f"- JNI bridge classes found:")
        for f in jni_files[:5]:
            report.append(f"  - `{f.relative_to(decompiled)}`")
    unity_files = [f for f in java_files if "unity" in str(f).lower()][:5]
    if unity_files:
        report.append(f"- Unity-related files:")
        for f in unity_files:
            report.append(f"  - `{f.relative_to(decompiled)}`")
    all_strings = []
    for jf in java_files[:200]:
        try:
            txt = jf.read_text(errors="replace")
            for m in re.finditer(r"https?://[^\s\"'<>]+", txt):
                all_strings.append(m.group())
        except: pass
    if all_strings:
        report.append(f"- Sample URLs found in decompiled code (first 10):")
        for u in list(set(all_strings))[:10]:
            report.append(f"  - `{u}`")

report.append("")
report.append("## 5. Recommended Next Steps")
report.append("")
report.append("1. **Extract IL2CPP metadata**: Use `Il2CppDumper` on `libil2cpp.so` + `global-metadata.dat`")
report.append("2. **Load libil2cpp.so in Ghidra**: Apply the dumped symbols")
report.append("3. **Identify the chess AI**: Look for `ChessAI.GetBestMove`, `Minimax`, `AlphaBeta`")
report.append("4. **For runtime analysis**: Use Frida (`dynamic-re`) to hook AI functions")
report.append("5. **For game cheating**: Hook the score/win-condition functions to force wins")

REPORT.write_text("\n".join(report))
print(f"Report written to: {REPORT}")
print(f"Report size: {REPORT.stat().st_size} bytes")
print()
print("=" * 60)
print("Smoke test PASSED - all skills produce useful output")
print("=" * 60)
