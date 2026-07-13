# Frida Hooks for Real Chess 3D

## Files
- `chess-hook.js` — Ad-blocking and save-game inspection hooks
- `ssl-bypass.js` — SSL pinning bypass
- `string-dump.js` — Dump all IL2CPP strings at runtime

## Usage

```bash
# 1. Make sure frida-server is running on the device
adb shell "su -c '/data/local/tmp/frida-server &'"

# 2. Spawn the game with hooks
frida -U -l chess-hook.js -f com.eivaagames.RealChess3DFree

# 3. Or attach to running game
frida -U -l chess-hook.js com.eivaagames.RealChess3DFree

# 4. Combine multiple scripts
frida -U -l ssl-bypass.js -l chess-hook.js -f com.eivaagames.RealChess3DFree
```

## Hook Targets (RVAs from dump.cs)

| Function | RVA | Effect |
|---|---|---|
| AdMobInit | 0xEC9BCC | Blocks ad SDK init |
| AMReqInters | 0xEC9C54 | Blocks interstitial ad request |
| AMOnGameCompleteEv | 0xEC15CC | Blocks end-game ad |
| AdMobOnGameStart | 0xEB6CB0 | Blocks start-of-game ad |
| SaveCurrentGame | 0xEC2F20 | Logs save game events |
| GoToHighScores | 0xEC2F20 | (verify - same RVA?) |
