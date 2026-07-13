# Real Chess 3D - Reverse Engineering Project

Complete reverse engineering analysis of the Real Chess 3D Unity mobile game.

## Target
- **App**: Real Chess 3D
- **Package**: `com.eivaagames.RealChess3DFree`
- **Version**: 1.35 (code: 19)
- **Architecture**: arm64-v8a
- **Engine**: Unity 6 (2023+) with IL2CPP backend

## What's Inside

### IL2CPP Analysis
- `il2cpp-dumped/dump.cs` — All C# class/method signatures (14 MB)
- `il2cpp-dumped/stringliteral.json` — 12,004 string literals
- `il2cpp-dumped/DummyDll/` — 68 .NET DLL stubs for dnSpy
- `dump_decoded.cs` — Decoded dump with readable names

### Obfuscation Decoding
- `obfuscation_map_full.json` — 91 mappings (Marathi/Hindi → English)
- `OBFUSCATION_ANALYSIS.md` — Decoding analysis report

The game uses Marathi/Hindi word substitution for obfuscation. Examples:
- `SechDMG` → `ChessEngine`
- `KhaataKhol` → `OpeningBook`
- `SechChal` → `Move`
- `DhoondoNormal` → `AlphaBeta`
- `PichheLe` → `UnmakeMove`

### Chess Engine Architecture
- **Board representation**: 10x12 mailbox (classic)
- **Search**: Alpha-beta pruning + Quiescence search
- **Evaluation**: Material + Piece-Square Tables + King safety
- **Max depth**: 10 plies
- **Opening book**: Separate `OpeningBook` class

### Assets Extracted
- 294 textures (24 MB) — including 115 chess piece textures
- 49 meshes (8 MB) — including 14 chess piece meshes
- 95 materials
- 51 shaders
- Complete scene hierarchy (1,243 GameObjects)

### Binary Patches
- `scripts/patch_libil2cpp.py` — Patches 4 ad functions with ARM64 RET
- Patched functions:
  - `AdMobScript.AdMobInit` @ 0xEC9BCC
  - `AdMobScript.AMReqInters` @ 0xEC9C54
  - `AdMobScript.AMOnGameCompleteEv` @ 0xEC15CC
  - `AdMobScript.AdMobOnGameStart` @ 0xEB6CB0

### Frida Hooks
- `frida/chess-hook.js` — Ad blocking + save game logging
- `frida/chess-ai-trace.js` — AI thinking process tracer
- `frida/ssl-bypass.js` — SSL pinning bypass
- `frida/string-dump.js` — String literal dumper

### Documentation
- `FINAL_CONSOLIDATED_REPORT.md` — Complete analysis report
- `FINAL_REPORT.md` — Initial pipeline report
- `ASSETS_AND_LOGIC_REPORT.md` — Asset + logic analysis
- `OBFUSCATION_ANALYSIS.md` — Obfuscation decoding details

## Tools Used
- jadx 1.5.6, apktool 2.10.0
- rizin 0.9.1, Ghidra 12.1.2
- Il2CppDumper (built from source)
- UnityPy 1.25.2
- capstone 5.0.7 (Python disassembler)
- frida 17.15.4

## Skills Used
- android-re, native-re, dynamic-re, binary-re, crypto-re
- unity-il2cpp-re, unity-assets-extractor, unity-decompiler
- unity-scene-extractor, unity-project-rebuilder
- chess-logic-analyzer, obfuscation-decoder
- ghidra-automation, ghidra-decompile-export
- modding-re, re-pipeline

## Legal Notice
This analysis is for educational and research purposes only. All trademarks belong to their respective owners. The extracted assets are not included in this repository due to copyright — only the analysis artifacts are shared.

## License
MIT (for the analysis scripts and documentation)
