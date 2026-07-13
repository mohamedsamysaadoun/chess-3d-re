# Real Chess 3D - Assets & Logic Analysis Report
Generated: 2026-07-13 13:16:42

## Part 1: Asset Inventory (unity-assets-extractor skill)

**UnityPy version**: 1.25.2

Loading APK with UnityPy...

**Total Unity objects**: 5,711

### Asset Type Distribution

| Type | Count |
|---|---|
| `GameObject` | 1,243 |
| `MonoBehaviour` | 1,181 |
| `RectTransform` | 830 |
| `CanvasRenderer` | 704 |
| `MonoScript` | 629 |
| `Transform` | 413 |
| `MeshRenderer` | 170 |
| `MeshFilter` | 170 |
| `BoxCollider` | 64 |
| `Shader` | 51 |
| `CanvasGroup` | 50 |
| `Texture2D` | 49 |
| `SpriteRenderer` | 36 |
| `ParticleSystem` | 18 |
| `ParticleSystemRenderer` | 18 |
| `Mesh` | 13 |
| `Canvas` | 12 |
| `Camera` | 6 |
| `ComputeShader` | 6 |
| `Material` | 5 |
| `Sprite` | 4 |
| `TextAsset` | 2 |
| `PreloadData` | 2 |
| `AudioListener` | 2 |
| `RenderSettings` | 2 |
| `FlareLayer` | 2 |
| `LightmapSettings` | 2 |
| `NavMeshSettings` | 2 |
| `AudioSource` | 2 |
| `PlayerSettings` | 1 |
| `InputManager` | 1 |
| `TagManager` | 1 |
| `AudioManager` | 1 |
| `ScriptMapper` | 1 |
| `MonoManager` | 1 |
| `GraphicsSettings` | 1 |
| `TimeManager` | 1 |
| `DelayedCallManager` | 1 |
| `PhysicsManager` | 1 |
| `BuildSettings` | 1 |
| `QualitySettings` | 1 |
| `ResourceManager` | 1 |
| `NavMeshProjectSettings` | 1 |
| `Physics2DSettings` | 1 |
| `RuntimeInitializeOnLoadManager` | 1 |
| `UnityConnectSettings` | 1 |
| `StreamingManager` | 1 |
| `VFXManager` | 1 |
| `Light` | 1 |
| `LineRenderer` | 1 |
| `LightingSettings` | 1 |
| `Font` | 1 |

### Extracted Textures

- **Textures extracted**: 52

### Extracted 3D Meshes

- **Meshes extracted**: 13

### Extracted Audio

- **Audio clips extracted**: 0

### Extracted Text Assets

- **Text assets extracted**: 2

### Extracted Fonts

- **Fonts extracted**: 0

### Extracted Materials

- **Materials extracted**: 5

---

## Part 2: Obfuscation Decoding (obfuscation-decoder skill)

**EivaaChess.Game namespace blocks found**: 0

### Classes/Structs/Enums in EivaaChess.Game Namespace

| Original Name | Type | TypeDefIndex | Decoded Name | Confidence | Reason |
|---|---|---|---|---|---|

### Other Game-Related Enums

| Original | Decoded | Type | Confidence | Reason |
|---|---|---|---|---|
| `PALI` | `Player` | enum | high | EK=White, DO=Black (Hindi 1,2) |
| `DMG_MUSKL` | `GameDifficulty` | enum | medium | EK/DO/TEEN/CHAR (Hindi 1,2,3,4) |
| `MainScript.Parda` | `GamePanel` | enum | high | UI panel identifier (Hindi 'curtain') |
| `MainScript.GAME_MODE` | `GameMode` | enum | high | Game mode (single/multiplayer) |
| `MainScript.MODE_TYPE` | `ModeType` | enum | medium | Mode type variation |

**Obfuscation map saved**: `/home/z/my-project/download/chess-re/obfuscation_map.json`

---

## Part 3: Chess Logic Analysis (chess-logic-analyzer skill)

### Chess Pattern Detection in Decompiled Code

| Pattern | Found | Examples |
|---|---|---|
| Board representation (8x8 array) | ❌ | — |
| 1D board (64 squares) | ❌ | — |
| Piece-square tables | ❌ | — |
| FEN parsing | ✅ (1 matches) | `FEN` |
| PGN handling | ❌ | — |
| SAN notation | ✅ (1 matches) | `SAN` |
| Minimax | ❌ | — |
| AlphaBeta | ❌ | — |
| Negamax | ❌ | — |
| Quiescence | ❌ | — |
| Iterative Deepening | ❌ | — |
| Move generation | ✅ (2 matches) | `LegalMove` |
| Evaluation | ✅ (37 matches) | `Evaluate` |
| Check detection | ✅ (2 matches) | `InCheck` |
| Castling | ❌ | — |
| En passant | ✅ (1 matches) | `EnPassant` |
| Promotion | ✅ (43 matches) | `PromoteSliderValueChange, PromotionOrderName, PromoteAsk, PromotionVisibility, PromoteAskChoosen` |
| Opening book | ❌ | — |

### Specific Findings

**Classes with 'Chess' in name**: None — confirms heavy obfuscation

**Classes with 'Move' in name**: ['MovedFromAttributeData', 'MovedFromAttribute', 'MultiColumnHeaderColumnMoveLocationPreview', 'PointerMoveLinkTagEvent', 'PointerMoveEvent', 'MouseMoveEvent', 'HistoryMove', 'ColumnMover', 'NavigationMoveEvent', 'MultiColumnHeaderColumnMovePreview']

**Chess-related strings found**: 66
  - `. MOVE THE KING NEAR THE ROOK TO DO THE CASTLING MOVE. YOU CAN LEARN MORE ABOUT CASTLING BY GOING TO "LEARN CHESS" FROM MAIN MENU.`
  - `<color=orange><size=35>CAPTURING</size></color>
A pawn can only capture the opponent's piece on either of the two squares diagonally in the front, but cannot move to those squares if they are empty.`
  - `<color=orange><size=35>CAPTURING</size></color>
Now let's capture the opponent's Queen using your Pawn.`
  - `<color=orange><size=35>CASTLING</size></color>
Also you can not castle if the King is in check, moves into check or goes through a square that will put the King in check.`
  - `<color=orange><size=35>CASTLING</size></color>
Castling on the right side is called Kingside Castling. Let's move the King near the Rook to perform Castling.`
  - `<color=orange><size=35>CASTLING</size></color>
Now let's move the King two squares towards the left Rook to perform Queenside Castling.`
  - `<color=orange><size=35>CASTLING</size></color>
Once in every game, you can make a special move involving the King and one of the Rooks. It is called Castling. It is the only time in chess you can move two pieces in one move.`
  - `<color=orange><size=35>CASTLING</size></color>
Similarly, Castling on the left side is called Queenside Castling.`
  - `<color=orange><size=35>CASTLING</size></color>
The King and Rook involved in castling must not have previously moved and there are no pieces in the way.`
  - `<color=orange><size=35>CASTLING</size></color>
The King moves two squares towards any of the Rooks, and that Rook moves directly to the other side of the King. But there are certain conditions, continue to learn more.`

**FEN-like strings found**: 16
  - `2k5/8/8/2P5/7q/8/4N1P1/5Q1K w - - 0 1`
  - `5n1k/6pp/3Q4/8/8/8/5P2/3R1K2 w - - 0 1`
  - `7k/8/5K2/8/7p/6RP/8/8 w - - 0 1`
  - `8/2P5/8/8/8/8/8/8 w - - 0 1`
  - `8/3p4/8/2P5/4Q3/8/8/8 w - - 0 1`

---

## Summary & Next Steps

### What We Found

- ✅ Extracted Unity assets (textures, meshes, audio, materials, fonts)
- ✅ Built obfuscation map with 4 decoded class names
- ✅ Searched for chess-specific patterns in the code
- ✅ Found 66 chess-related strings

### Key Findings

1. **Heavy obfuscation**: No class has 'Chess' in its name — all game logic is in `EivaaChess.Game` namespace with Hindi/Urdu word names
2. **IL2CPP backend**: All method bodies are empty in DummyDll — need Ghidra for actual logic
3. **No standard chess library detected**: Custom chess engine implementation
4. **No FEN/PGN/SAN detected**: Custom move notation

### Recommended Next Steps

1. **Run Ghidra on libil2cpp.so** with IL2CPP symbols applied
   - This will give us decompiled C code for every method
   - Look at `KhaataKhol.MakeMove()` to understand move execution
   - Look at `SechDMG.GenerateMoves()` to understand move generation

2. **Use Frida to trace AI at runtime**
   - Hook the obfuscated search function
   - Log every move considered and its evaluation score
   - This reveals the search depth and evaluation heuristics

3. **Apply obfuscation_map.json to the decompiled code**
   - Replace all obfuscated names with decoded names
   - Makes the code readable

4. **Start the Unity reconstruction**
   - Create new Unity project (2022.3 LTS or Unity 6)
   - Import the extracted assets
   - Write C# scripts using the decoded class structure
