// chess-hook.js — Frida hooks for Real Chess 3D
// Apply with: frida -U -l chess-hook.js -f com.eivaagames.RealChess3DFree

const il2cpp = Module.findBaseAddress('libil2cpp.so');
console.log('[*] libil2cpp.so @', il2cpp);

// === Ad Bypass Hooks ===
// AdMobInit @ RVA 0xEC9BCC
Interceptor.attach(il2cpp.add(0xEC9BCC), {
  onEnter(args) {
    console.log('[+] AdMobInit blocked');
  },
  onLeave(retval) {
    console.log('    AdMobInit returned');
  }
});

// AMReqInters (Request Interstitial) @ RVA 0xEC9C54
Interceptor.attach(il2cpp.add(0xEC9C54), {
  onEnter(args) {
    console.log('[+] AMReqInters blocked (interstitial request)');
  }
});

// AMOnGameCompleteEv @ RVA 0xEC15CC
Interceptor.attach(il2cpp.add(0xEC15CC), {
  onEnter(args) {
    console.log('[+] AMOnGameCompleteEv blocked (end-game ad)');
  }
});

// AdMobOnGameStart @ RVA 0xEB6CB0
Interceptor.attach(il2cpp.add(0xEB6CB0), {
  onEnter(args) {
    console.log('[+] AdMobOnGameStart blocked');
  }
});

// === Save Game Hooks ===
// SaveCurrentGame @ RVA 0xEC2F20
Interceptor.attach(il2cpp.add(0xEC2F20), {
  onEnter(args) {
    console.log('[+] SaveCurrentGame called');
    console.log('    this:', args[0]);
  }
});

// bSaveGameExists @ search dump.cs for actual RVA
// GoToHighScores @ RVA 0xEC2F20 - same offset? need to verify

console.log('[*] All hooks installed');
