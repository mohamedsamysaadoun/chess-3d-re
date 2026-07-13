#!/bin/bash
# Rebuild the APK with patched libil2cpp.so
set -e

WORK="/home/z/my-project/download/chess-re"
PATCHED_SO="$WORK/modded/libil2cpp-patched.so"

if [ ! -f "$PATCHED_SO" ]; then
  echo "Error: $PATCHED_SO not found. Run patch_libil2cpp.py first."
  exit 1
fi

# Step 1: Decode the config.arm64_v8a.apk
echo "[1/5] Decoding config.arm64_v8a.apk..."
/home/z/my-project/tools/apktool d -f -o "$WORK/modded/decoded-config" \
  "$WORK/extracted/config.arm64_v8a.apk"

# Step 2: Replace the .so file
echo "[2/5] Replacing libil2cpp.so..."
cp "$PATCHED_SO" "$WORK/modded/decoded-config/lib/arm64-v8a/libil2cpp.so"

# Step 3: Rebuild the config APK
echo "[3/5] Rebuilding config APK..."
/home/z/my-project/tools/apktool b "$WORK/modded/decoded-config" \
  -o "$WORK/modded/config.arm64_v8a-patched-unsigned.apk"

# Step 4: Generate debug keystore (if not exists)
if [ ! -f "$WORK/modded/debug.keystore" ]; then
  echo "[4/5] Generating debug keystore..."
  keytool -genkey -v -keystore "$WORK/modded/debug.keystore" \
    -alias debug -keyalg RSA -keysize 2048 -validity 10000 \
    -storepass android -keypass android \
    -dname "CN=Debug, OU=Debug, O=Debug, L=Debug, ST=Debug, C=US"
else
  echo "[4/5] Using existing keystore"
fi

# Step 5: Sign
echo "[5/5] Signing..."
jarsigner -verbose -sigalg SHA256withRSA -digestalg SHA-256 \
  -keystore "$WORK/modded/debug.keystore" \
  -storepass android -keypass android \
  "$WORK/modded/config.arm64_v8a-patched-unsigned.apk" debug

mv "$WORK/modded/config.arm64_v8a-patched-unsigned.apk" \
   "$WORK/modded/config.arm64_v8a-patched.apk"

echo ""
echo "=== Done! ==="
echo "Patched config APK: $WORK/modded/config.arm64_v8a-patched.apk"
echo ""
echo "To install on device:"
echo "  adb install-multiple \\"
echo "    $WORK/extracted/com.eivaagames.RealChess3DFree.apk \\"
echo "    $WORK/modded/config.arm64_v8a-patched.apk"
