"""
Use pyghidra's proper API to:
1. Open the binary
2. Run full analysis
3. Decompile chess engine functions
"""
import os
import sys
import time
from pathlib import Path

os.environ['GHIDRA_INSTALL_DIR'] = '/home/z/my-project/tools/ghidra_12.1.2_PUBLIC'
os.environ['GHIDRA_JAVA_OPTIONS'] = '-Xmx3500m -XX:+UseG1GC'

import pyghidra

# Start PyGhidra - this initializes the JVM
print(f"[{time.strftime('%H:%M:%S')}] Starting PyGhidra...")
launcher = pyghidra.start(install_dir=Path('/home/z/my-project/tools/ghidra_12.1.2_PUBLIC'))
print(f"[{time.strftime('%H:%M:%S')}] PyGhidra started: {launcher}")

# Now we can use the Ghidra Java API
# Use open_program which handles everything
binary_path = "/home/z/my-project/download/chess-re/native/config_arm64/lib/arm64-v8a/libil2cpp.so"
project_location = "/home/z/my-project/download/chess-re/ghidra-proj"
project_name = "chess_proj"

print(f"[{time.strftime('%H:%M:%S')}] Opening binary: {binary_path}")
print(f"[{time.strftime('%H:%M:%S')}] Project: {project_location}/{project_name}")

# open_program is a context manager that returns a FlatProgramAPI
# Set analyze=True to run full analysis
with pyghidra.open_program(
    binary_path,
    project_location=project_location,
    project_name=project_name,
    analyze=True,  # Run full analysis!
    nested_project_location=False  # Use standalone Ghidra layout
) as flat_api:
    
    program = flat_api.getCurrentProgram()
    print(f"[{time.strftime('%H:%M:%S')}] Program opened: {program.getName()}")
    print(f"  Memory size: {program.getMemory().getSize():,} bytes")
    print(f"  Functions: {program.getFunctionManager().getFunctionCount():,}")
    
    # Now decompile the chess engine functions
    print(f"\n[{time.strftime('%H:%M:%S')}] === DECOMPILING CHESS FUNCTIONS ===")
    
    from ghidra.app.decompiler import DecompInterface, DecompileOptions
    from ghidra.app.cmd.function import CreateFunctionCmd
    from ghidra.program.model.symbol import SourceType
    from ghidra.util.task import ConsoleTaskMonitor
    
    OUTPUT_DIR = "/home/z/my-project/download/chess-re/ghidra-decompiled-full"
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    
    TARGETS = [
        ("0xEE3E34", "ChessEngine_ctor", "Constructor"),
        ("0xEE3FF8", "ChessEngine_Suru", "Initialize from FEN"),
        ("0xEE4130", "ChessEngine_ParseFEN", "Parse FEN string"),
        ("0xEE4948", "ChessEngine_GetBestMove", "PUBLIC API: Get best move"),
        ("0xEE4DFC", "ChessEngine_StartSearch", "Start search"),
        ("0xEE4E78", "ChessEngine_AlphaBeta", "Alpha-beta search"),
        ("0xEE5290", "ChessEngine_QuiescenceSearch", "Quiescence search"),
        ("0xEE5DB8", "ChessEngine_GenerateMoves", "Generate all legal moves"),
        ("0xEE6CB8", "ChessEngine_GenerateCaptures", "Generate capture moves"),
        ("0xEE73D0", "ChessEngine_AddMove", "Add move to list"),
        ("0xEE7504", "ChessEngine_AddPromotionMove", "Add promotion move"),
        ("0xEE55AC", "ChessEngine_Evaluate", "Evaluate position"),
        ("0xEE7590", "ChessEngine_EvalWhitePawn", "Eval white pawn"),
        ("0xEE78A4", "ChessEngine_EvalBlackPawn", "Eval black pawn"),
        ("0xEE7710", "ChessEngine_EvalWhiteKing", "Eval white king"),
        ("0xEE7A40", "ChessEngine_EvalBlackKing", "Eval black king"),
        ("0xEE7BEC", "ChessEngine_EvalWhiteKingEndgame", "Eval white king endgame"),
        ("0xEE7C8C", "ChessEngine_EvalBlackKingEndgame", "Eval black king endgame"),
        ("0xEE6570", "ChessEngine_MakeMove", "Make move"),
        ("0xEE6A98", "ChessEngine_UnmakeMove", "Unmake move"),
        ("0xEE7D28", "ChessEngine_IsSquareAttacked", "Is square attacked"),
        ("0xEE5D38", "ChessEngine_IsInCheck", "Is in check"),
        ("0xEE6438", "ChessEngine_SortPV", "Sort PV"),
        ("0xEE6510", "ChessEngine_QuickSortMoves", "QuickSort moves"),
        ("0xEE7260", "ChessEngine_PartitionMoves", "Partition moves"),
        ("0xEE3C0C", "OpeningBook_GetOpeningMove", "Get opening move"),
        ("0xEE3CE0", "OpeningBook_ctor", "OpeningBook constructor"),
        ("0xEE4670", "Move_get_Empty", "Move.Empty getter"),
        ("0xEE559C", "Move_op_Equality", "Move == operator"),
        ("0xEE4CD4", "Move_ParseRegularCAN", "Parse CAN notation"),
        ("0xEE4BB8", "Move_ToString", "Move.ToString"),
        ("0xEE7FEC", "ChessEngine_cctor", "Static constructor - initializes all tables"),
    ]
    
    # Set up decompiler
    options = DecompileOptions()
    options.setMaxPayloadMBytes(64)
    decomp = DecompInterface()
    decomp.setOptions(options)
    decomp.openProgram(program)
    
    monitor = ConsoleTaskMonitor()
    fm = program.getFunctionManager()
    success = 0
    fail = 0
    
    for rva_str, name, desc in TARGETS:
        try:
            addr = program.getAddressFactory().getAddress(rva_str)
            
            # Get or create function
            func = fm.getFunctionAt(addr)
            if func is None:
                cmd = CreateFunctionCmd(addr)
                cmd.applyTo(program, monitor)
                func = fm.getFunctionAt(addr)
            
            if func is None:
                print(f"  [!] {name}: cannot create function at {rva_str}")
                fail += 1
                continue
            
            # Rename
            try:
                func.setName(name, SourceType.USER_DEFINED)
            except:
                pass
            
            # Decompile
            result = decomp.decompileFunction(func, 120, monitor)
            if result.decompileCompleted():
                code = result.getDecompiledFunction().getC()
                out_path = os.path.join(OUTPUT_DIR, f"{name}.c")
                with open(out_path, "w") as f:
                    f.write(f"// Function: {name}\n")
                    f.write(f"// RVA: {rva_str}\n")
                    f.write(f"// Description: {desc}\n")
                    f.write(f"// Decompiled: {time.strftime('%Y-%m-%d %H:%M:%S')}\n")
                    f.write(f"// Analysis: FULL (auto-analysis completed)\n")
                    f.write(f"//\n\n")
                    f.write(code)
                
                line_count = code.count("\n")
                print(f"  [+] {name:40s} {line_count:4d} lines")
                success += 1
            else:
                print(f"  [!] {name}: decompilation failed")
                fail += 1
        except Exception as e:
            print(f"  [!] {name}: {e}")
            fail += 1
    
    print(f"\n[{time.strftime('%H:%M:%S')}] === DECOMPILATION COMPLETE ===")
    print(f"Success: {success}, Failed: {fail}")
    print(f"Output: {OUTPUT_DIR}")
    
    decomp.dispose()

print(f"\n[{time.strftime('%H:%M:%S')}] Done!")
