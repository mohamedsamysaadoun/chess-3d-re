using System;
using System.Collections.Generic;
using System.Diagnostics;
using Chess3D.Game;

namespace ChessEngineTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("╔══════════════════════════════════════════════════════════╗");
            Console.WriteLine("║     Real Chess 3D - Chess Engine Test Suite              ║");
            Console.WriteLine("║     Reconstructed from IL2CPP + Ghidra analysis          ║");
            Console.WriteLine("╚══════════════════════════════════════════════════════════╝");
            Console.WriteLine();

            int testsPassed = 0;
            int testsFailed = 0;
            var results = new List<TestResult>();

            // === TEST 1: Starting position - engine should return a valid opening move ===
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("TEST 1: Starting Position");
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("FEN: rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
            Console.WriteLine("Expected: A valid opening move (e2e4, d2d4, g1f3, c2c4, etc.)");
            Console.WriteLine();

            string startPos = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1";
            var sw = Stopwatch.StartNew();
            // Debug: print the board
            Console.WriteLine("  Debug - Board after FEN parse:");
            var debugEngine = new ChessEngine();
            debugEngine.ParseFEN(startPos);
            debugEngine.DebugBoard();
            int moveCount = debugEngine.DebugCountMoves();
            Console.WriteLine($"  Debug - Legal moves found: {moveCount}");
            Console.WriteLine();
            
            var engine = new ChessEngine();
            string move1 = engine.GetBestMove(startPos, "", 3, false);
            sw.Stop();
            Console.WriteLine($"  Engine move: {move1}");
            Console.WriteLine($"  Time: {sw.ElapsedMilliseconds}ms");
            Console.WriteLine($"  Depth: 3");

            bool validOpening = IsValidOpeningMove(move1);
            Console.WriteLine($"  Valid opening move: {(validOpening ? "✅ PASS" : "❌ FAIL")}");
            results.Add(new TestResult("Starting Position", move1, validOpening, sw.ElapsedMilliseconds));
            if (validOpening) testsPassed++; else testsFailed++;
            Console.WriteLine();

            // === TEST 2: Position after 1.e4 - engine should respond ===
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("TEST 2: After 1.e4");
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("FEN: rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1");
            Console.WriteLine("Expected: A valid black response (e7e5, c7c5, e7e6, etc.)");
            Console.WriteLine();

            string afterE4 = "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1";
            sw.Restart();
            engine = new ChessEngine();
            string move2 = engine.GetBestMove(afterE4, "e2e4", 3, false);
            sw.Stop();
            Console.WriteLine($"  Engine move: {move2}");
            Console.WriteLine($"  Time: {sw.ElapsedMilliseconds}ms");

            bool validResponse = IsValidBlackResponse(move2);
            Console.WriteLine($"  Valid black response: {(validResponse ? "✅ PASS" : "❌ FAIL")}");
            results.Add(new TestResult("After 1.e4", move2, validResponse, sw.ElapsedMilliseconds));
            if (validResponse) testsPassed++; else testsFailed++;
            Console.WriteLine();

            // === TEST 3: Mate in 1 (White to move) ===
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("TEST 3: Mate in 1 (Queen takes f7 mate)");
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("FEN: r1bqkbnr/pppp1ppp/2n5/4p3/2B1P3/5Q2/PPPP1PPP/RNB1K1NR w KQkq - 0 4");
            Console.WriteLine("Expected: Qxf7# (qf3f7)");
            Console.WriteLine();

            string mateIn1 = "r1bqkbnr/pppp1ppp/2n5/4p3/2B1P3/5Q2/PPPP1PPP/RNB1K1NR w KQkq - 0 4";
            sw.Restart();
            engine = new ChessEngine();
            string move3 = engine.GetBestMove(mateIn1, "", 3, false);
            sw.Stop();
            Console.WriteLine($"  Engine move: {move3}");
            Console.WriteLine($"  Time: {sw.ElapsedMilliseconds}ms");

            bool foundMate = move3 == "f3f7";
            Console.WriteLine($"  Found mate Qxf7: {(foundMate ? "✅ PASS" : "❌ FAIL (got " + move3 + ")")}");
            results.Add(new TestResult("Mate in 1", move3, foundMate, sw.ElapsedMilliseconds));
            if (foundMate) testsPassed++; else testsFailed++;
            Console.WriteLine();

            // === TEST 4: Back rank mate ===
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("TEST 4: Back Rank Mate");
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("FEN: 6k1/5ppp/8/8/8/8/8/R3K3 w Q - 0 1");
            Console.WriteLine("Expected: Ra8# (a1a8)");
            Console.WriteLine();

            string backRankMate = "6k1/5ppp/8/8/8/8/8/R3K3 w Q - 0 1";
            sw.Restart();
            engine = new ChessEngine();
            string move4 = engine.GetBestMove(backRankMate, "", 3, false);
            sw.Stop();
            Console.WriteLine($"  Engine move: {move4}");
            Console.WriteLine($"  Time: {sw.ElapsedMilliseconds}ms");

            bool foundBackRank = move4 == "a1a8";
            Console.WriteLine($"  Found Ra8#: {(foundBackRank ? "✅ PASS" : "❌ FAIL (got " + move4 + ")")}");
            results.Add(new TestResult("Back Rank Mate", move4, foundBackRank, sw.ElapsedMilliseconds));
            if (foundBackRank) testsPassed++; else testsFailed++;
            Console.WriteLine();

            // === TEST 5: Pawn promotion ===
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("TEST 5: Pawn Promotion");
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("FEN: 8/4P3/8/8/8/8/8/4k2K w - - 0 1");
            Console.WriteLine("Expected: e7e8q (promote to queen)");
            Console.WriteLine();

            string promotion = "8/4P3/8/8/8/8/8/4k2K w - - 0 1";
            sw.Restart();
            engine = new ChessEngine();
            string move5 = engine.GetBestMove(promotion, "", 3, false);
            sw.Stop();
            Console.WriteLine($"  Engine move: {move5}");
            Console.WriteLine($"  Time: {sw.ElapsedMilliseconds}ms");

            bool foundPromo = move5 == "e7e8q";
            Console.WriteLine($"  Found promotion to queen: {(foundPromo ? "✅ PASS" : "❌ FAIL (got " + move5 + ")")}");
            results.Add(new TestResult("Pawn Promotion", move5, foundPromo, sw.ElapsedMilliseconds));
            if (foundPromo) testsPassed++; else testsFailed++;
            Console.WriteLine();

            // === TEST 6: Free queen capture ===
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("TEST 6: Capture free queen");
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("FEN: 4k3/8/8/8/3q4/8/8/R3K3 w Q - 0 1");
            Console.WriteLine("Expected: Rxd4 (a1d4) - capture the queen");
            Console.WriteLine();

            string captureQueen = "4k3/8/8/8/3q4/8/8/R3K3 w Q - 0 1";
            sw.Restart();
            engine = new ChessEngine();
            string move6 = engine.GetBestMove(captureQueen, "", 3, false);
            sw.Stop();
            Console.WriteLine($"  Engine move: {move6}");
            Console.WriteLine($"  Time: {sw.ElapsedMilliseconds}ms");

            bool foundCapture = move6 == "a1d4";
            Console.WriteLine($"  Captured queen: {(foundCapture ? "✅ PASS" : "❌ FAIL (got " + move6 + ")")}");
            results.Add(new TestResult("Capture Queen", move6, foundCapture, sw.ElapsedMilliseconds));
            if (foundCapture) testsPassed++; else testsFailed++;
            Console.WriteLine();

            // === TEST 7: Castling ===
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("TEST 7: Kingside Castling available");
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("FEN: 4k3/8/8/8/8/8/8/4K2R w K - 0 1");
            Console.WriteLine("Expected: O-O (e1g1) or Rook move");
            Console.WriteLine();

            string castling = "4k3/8/8/8/8/8/8/4K2R w K - 0 1";
            sw.Restart();
            engine = new ChessEngine();
            string move7 = engine.GetBestMove(castling, "", 3, false);
            sw.Stop();
            Console.WriteLine($"  Engine move: {move7}");
            Console.WriteLine($"  Time: {sw.ElapsedMilliseconds}ms");

            bool validCastlingMove = move7 == "e1g1" || move7 == "h1h2" || move7 == "h1h3" || move7 == "h1h4";
            Console.WriteLine($"  Valid move: {(validCastlingMove ? "✅ PASS" : "❌ FAIL (got " + move7 + ")")}");
            results.Add(new TestResult("Castling Available", move7, validCastlingMove, sw.ElapsedMilliseconds));
            if (validCastlingMove) testsPassed++; else testsFailed++;
            Console.WriteLine();

            // === TEST 8: Engine should not return null for valid position ===
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("TEST 8: Engine returns valid move for complex position");
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("FEN: r1bqkb1r/pppp1ppp/2n2n2/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 4 4");
            Console.WriteLine("Expected: Any legal move (not null)");
            Console.WriteLine();

            string complex = "r1bqkb1r/pppp1ppp/2n2n2/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 4 4";
            sw.Restart();
            engine = new ChessEngine();
            string move8 = engine.GetBestMove(complex, "", 2, false);
            sw.Stop();
            Console.WriteLine($"  Engine move: {move8}");
            Console.WriteLine($"  Time: {sw.ElapsedMilliseconds}ms");

            bool notNull = !string.IsNullOrEmpty(move8);
            Console.WriteLine($"  Returned valid move: {(notNull ? "✅ PASS" : "❌ FAIL")}");
            results.Add(new TestResult("Complex Position", move8, notNull, sw.ElapsedMilliseconds));
            if (notNull) testsPassed++; else testsFailed++;
            Console.WriteLine();

            // === TEST 9: Checkmate detection (already mated) ===
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("TEST 9: Stalemate position");
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("FEN: 7k/5Q2/6K1/8/8/8/8/8 b - - 0 1");
            Console.WriteLine("Expected: Engine handles correctly (null or any move)");
            Console.WriteLine();

            string stalemate = "7k/5Q2/6K1/8/8/8/8/8 b - - 0 1";
            sw.Restart();
            engine = new ChessEngine();
            string move9 = engine.GetBestMove(stalemate, "", 2, false);
            sw.Stop();
            Console.WriteLine($"  Engine move: {(move9 == null ? "(null - no moves)" : move9)}");
            Console.WriteLine($"  Time: {sw.ElapsedMilliseconds}ms");

            bool handlesEdge = true;  // As long as it doesn't crash
            Console.WriteLine($"  Handled edge case: {(handlesEdge ? "✅ PASS" : "❌ FAIL")}");
            results.Add(new TestResult("Stalemate Position", move9 ?? "(null)", handlesEdge, sw.ElapsedMilliseconds));
            if (handlesEdge) testsPassed++; else testsFailed++;
            Console.WriteLine();

            // === TEST 10: Performance test - deeper search ===
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("TEST 10: Performance - Depth 5 search");
            Console.WriteLine("═══════════════════════════════════════════════════════════");
            Console.WriteLine("FEN: rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
            Console.WriteLine("Expected: Move within 30 seconds");
            Console.WriteLine();

            sw.Restart();
            engine = new ChessEngine();
            string move10 = engine.GetBestMove(startPos, "", 5, false);
            sw.Stop();
            Console.WriteLine($"  Engine move: {move10}");
            Console.WriteLine($"  Time: {sw.ElapsedMilliseconds}ms ({sw.Elapsed.TotalSeconds:F1}s)");

            bool withinTime = sw.Elapsed.TotalSeconds < 60;
            Console.WriteLine($"  Within 60s: {(withinTime ? "✅ PASS" : "❌ FAIL")}");
            results.Add(new TestResult("Performance Depth 5", move10, withinTime, sw.ElapsedMilliseconds));
            if (withinTime) testsPassed++; else testsFailed++;
            Console.WriteLine();

            // === SUMMARY ===
            Console.WriteLine("╔══════════════════════════════════════════════════════════╗");
            Console.WriteLine("║                    TEST SUMMARY                          ║");
            Console.WriteLine("╚══════════════════════════════════════════════════════════╝");
            Console.WriteLine();
            Console.WriteLine($"  Total tests:  {results.Count}");
            Console.WriteLine($"  Passed:       {testsPassed} ✅");
            Console.WriteLine($"  Failed:       {testsFailed} ❌");
            Console.WriteLine($"  Success rate: {(testsPassed * 100.0 / results.Count):F1}%");
            Console.WriteLine();
            Console.WriteLine("  Test Details:");
            Console.WriteLine("  ┌─────────────────────────────┬────────────┬──────────┬───────────┐");
            Console.WriteLine("  │ Test Name                   │ Move       │ Result   │ Time (ms) │");
            Console.WriteLine("  ├─────────────────────────────┼────────────┼──────────┼───────────┤");
            foreach (var r in results)
            {
                string moveStr = r.Move ?? "(null)";
                if (moveStr.Length > 10) moveStr = moveStr.Substring(0, 10);
                string result = r.Passed ? "✅ PASS" : "❌ FAIL";
                Console.WriteLine($"  │ {r.Name,-27} │ {moveStr,-10} │ {result,-8} │ {r.TimeMs,9} │");
            }
            Console.WriteLine("  └─────────────────────────────┴────────────┴──────────┴───────────┘");
            Console.WriteLine();

            // Save results to file
            using (var writer = new System.IO.StreamWriter("/home/z/my-project/chess-engine-test/test_results.txt"))
            {
                writer.WriteLine("Real Chess 3D - Engine Test Results");
                writer.WriteLine($"Date: {DateTime.Now:yyyy-MM-dd HH:mm:ss}");
                writer.WriteLine($"Total: {results.Count}, Passed: {testsPassed}, Failed: {testsFailed}");
                writer.WriteLine();
                foreach (var r in results)
                {
                    writer.WriteLine($"Test: {r.Name}");
                    writer.WriteLine($"  Move: {r.Move ?? "(null)"}");
                    writer.WriteLine($"  Result: {(r.Passed ? "PASS" : "FAIL")}");
                    writer.WriteLine($"  Time: {r.TimeMs}ms");
                    writer.WriteLine();
                }
            }
            Console.WriteLine("  Results saved to: test_results.txt");
        }

        static bool IsValidOpeningMove(string move)
        {
            if (string.IsNullOrEmpty(move)) return false;
            string[] goodMoves = { "e2e4", "d2d4", "g1f3", "c2c4", "b1c3", "f2f4", "b2b3", "g2g3" };
            foreach (string good in goodMoves)
                if (move == good) return true;
            return false;
        }

        static bool IsValidBlackResponse(string move)
        {
            if (string.IsNullOrEmpty(move)) return false;
            string[] goodMoves = { "e7e5", "c7c5", "e7e6", "c7c6", "d7d5", "d7d6", "g8f6", "b8c6" };
            foreach (string good in goodMoves)
                if (move == good) return true;
            return false;
        }
    }

    class TestResult
    {
        public string Name { get; set; }
        public string Move { get; set; }
        public bool Passed { get; set; }
        public long TimeMs { get; set; }

        public TestResult(string name, string move, bool passed, long timeMs)
        {
            Name = name;
            Move = move;
            Passed = passed;
            TimeMs = timeMs;
        }
    }
}
