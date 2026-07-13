# Real Chess 3D - Reverse Engineering Report

## 1. XAPK Container (android-re skill)

- **File**: `gameee.xapk`
- **Size**: 35,194,001 bytes (33.56 MB)
- **SHA256**: 2d40789c715752c3524e17e809c2038f0bbeae04af81fba6ac39221b5287766a
- **Package**: `com.eivaagames.RealChess3DFree`
- **App name**: Real Chess 3D
- **Version**: 1.35 (code: 19)
- **Min SDK**: 22
- **Target SDK**: 35
- **Total size (declared)**: 35,152,354 bytes

### Permissions (9)
- [LOW] `android.permission.INTERNET`
- [LOW] `android.permission.ACCESS_NETWORK_STATE`
- [MED] `com.google.android.gms.permission.AD_ID`
- [MED] `android.permission.ACCESS_ADSERVICES_AD_ID`
- [MED] `android.permission.ACCESS_ADSERVICES_ATTRIBUTION`
- [MED] `android.permission.ACCESS_ADSERVICES_TOPICS`
- [HIGH] `com.android.vending.BILLING`
- [LOW] `android.permission.WAKE_LOCK`
- [LOW] `android.permission.FOREGROUND_SERVICE`

### Split APKs
- `com.eivaagames.RealChess3DFree.apk` (base)
- `config.arm64_v8a.apk` (config.arm64_v8a)

## 2. Native Libraries (native-re skill)

| Library | Size | Stripped? | Crypto Constants |
|---|---|---|---|
| `libil2cpp.so` | 36,216,488 B | Yes | MD5 init@0x54e480 |
| `libmain.so` | 6,728 B | Yes | - |
| `libunity.so` | 17,048,488 B | Yes | AES S-box@0x15c424, AES InvS-box@0x15c624, MD5 init@0x13caa0 |

## 3. IL2CPP Detection (Unity)

The presence of `libil2cpp.so` indicates this is a **Unity game compiled with IL2CPP**.
This means:
- C# game code is compiled to C++ then to native ARM64 assembly (not DEX)
- The actual game logic lives in `libil2cpp.so`, NOT in the DEX files
- To reverse the game logic, we need IL2CPP-specific tools:
  - **Il2CppDumper** - extracts class/method names from `global-metadata.dat`
  - **Il2CppInspector** - similar, with C# stub generation
  - Then load `libil2cpp.so` in Ghidra/IDA with the recovered symbols

- `global-metadata.dat` NOT found in extracted XAPK (may be inside the base APK)

## 4. Static Decompilation (android-re / jadx)

- Total decompiled Java files: **7,608**
- JNI bridge classes found:
  - `bitter/jnibridge/a.java`
  - `bitter/jnibridge/e.java`
  - `bitter/jnibridge/c.java`
  - `bitter/jnibridge/d.java`
  - `bitter/jnibridge/JNIBridge.java`
- Unity-related files:
  - `com/google/unity/ads/PluginUtils.java`
  - `com/google/unity/ads/UnityRewardedAdCallback.java`
  - `com/google/unity/ads/AdNetworkExtras.java`
  - `com/google/unity/ads/UnityAdInspector.java`
  - `com/google/unity/ads/Interstitial.java`

## 5. Recommended Next Steps

1. **Extract IL2CPP metadata**: Use `Il2CppDumper` on `libil2cpp.so` + `global-metadata.dat`
2. **Load libil2cpp.so in Ghidra**: Apply the dumped symbols
3. **Identify the chess AI**: Look for `ChessAI.GetBestMove`, `Minimax`, `AlphaBeta`
4. **For runtime analysis**: Use Frida (`dynamic-re`) to hook AI functions
5. **For game cheating**: Hook the score/win-condition functions to force wins