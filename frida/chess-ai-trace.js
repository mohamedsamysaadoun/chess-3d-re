// chess-ai-trace.js — Trace the chess AI's thinking process
// Based on decoded ChessEngine class (formerly SechDMG)
// Apply with: frida -U -l chess-ai-trace.js -f com.eivaagames.RealChess3DFree

const il2cpp = Module.findBaseAddress('libil2cpp.so');
console.log('[*] libil2cpp.so @', il2cpp);

// ==== Chess Engine Hooks (from decoded dump.cs) ===

// GetBestMove @ RVA 0xEE4948 — the public API
Interceptor.attach(il2cpp.add(0xEE4948), {
  onEnter(args) {
    console.log('\n[AI] === GetBestMove called ===');
    console.log('  Position (FEN):', args[1]);
    console.log('  Search depth:', args[3].toInt32());
    this.startTime = Date.now();
  },
  onLeave(retval) {
    const elapsed = Date.now() - this.startTime;
    console.log('[AI] Chose move:', retval, '(took', elapsed, 'ms)');
  }
});

// AlphaBeta @ RVA 0xEE4E78 — count search nodes
let alphaBetaNodes = 0;
Interceptor.attach(il2cpp.add(0xEE4E78), {
  onEnter(args) {
    alphaBetaNodes++;
    if (alphaBetaNodes % 1000 === 0) {
      console.log('[Search] AlphaBeta nodes:', alphaBetaNodes);
    }
  }
});

// QuiescenceSearch @ RVA 0xEE5290 — count quiescence nodes
let quiescenceNodes = 0;
Interceptor.attach(il2cpp.add(0xEE5290), {
  onEnter(args) {
    quiescenceNodes++;
  }
});

// Evaluate @ RVA 0xEE55AC — log significant scores
Interceptor.attach(il2cpp.add(0xEE55AC), {
  onLeave(retval) {
    const score = retval.toInt32();
    if (Math.abs(score) > 500) {
      console.log('[Eval] Significant position score:', score);
    }
  }
});

// MakeMove @ RVA 0xEE6570 — log moves made during search
Interceptor.attach(il2cpp.add(0xEE6570), {
  onEnter(args) {
    // Move struct: byte from, byte to, byte promote, byte flags
    const movePtr = args[1];
    const from = movePtr.readU8();
    const to = movePtr.add(1).readU8();
    const flags = movePtr.add(3).readU8();
    // Only log capture moves (bit 1 of flags usually)
    if (flags & 0x02) {
      console.log('[Move] Capture:', from, '→', to);
    }
  }
});

// ParseFEN @ RVA 0xEE4130 — log FEN strings being parsed
Interceptor.attach(il2cpp.add(0xEE4130), {
  onEnter(args) {
    const fen = args[1].readUtf8String();
    console.log('[FEN] Parsing:', fen);
  }
});

// Reset counters when search starts
// StartSearch @ RVA 0xEE4DFC
Interceptor.attach(il2cpp.add(0xEE4DFC), {
  onEnter(args) {
    console.log('\n[Search] === Starting search ===');
    console.log('  Depth:', args[1].toInt32());
    alphaBetaNodes = 0;
    quiescenceNodes = 0;
    this.startTime = Date.now();
  },
  onLeave(retval) {
    const elapsed = Date.now() - this.startTime;
    console.log('[Search] Search complete:');
    console.log('  AlphaBeta nodes:', alphaBetaNodes);
    console.log('  Quiescence nodes:', quiescenceNodes);
    console.log('  Total time:', elapsed, 'ms');
    console.log('  Nodes/sec:', Math.round((alphaBetaNodes + quiescenceNodes) / (elapsed / 1000)));
  }
});

// ==== Ad Blocking Hooks (from earlier analysis) ===

// AdMobInit @ RVA 0xEC9BCC
Interceptor.attach(il2cpp.add(0xEC9BCC), {
  onEnter(args) {
    console.log('[Ad] AdMobInit blocked');
  }
});

// AMReqInters @ RVA 0xEC9C54
Interceptor.attach(il2cpp.add(0xEC9C54), {
  onEnter(args) {
    console.log('[Ad] AMReqInters blocked (interstitial)');
  }
});

// AMOnGameCompleteEv @ RVA 0xEC15CC
Interceptor.attach(il2cpp.add(0xEC15CC), {
  onEnter(args) {
    console.log('[Ad] AMOnGameCompleteEv blocked (end-game ad)');
  }
});

// AdMobOnGameStart @ RVA 0xEB6CB0
Interceptor.attach(il2cpp.add(0xEB6CB0), {
  onEnter(args) {
    console.log('[Ad] AdMobOnGameStart blocked');
  }
});

console.log('[*] All hooks installed');
console.log('[*] Play the game — AI moves and ad blocks will be logged here');
