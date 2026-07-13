// Standalone Move struct - no Unity dependencies
using System;

namespace Chess3D.Game
{
    [Serializable]
    public struct Move
    {
        public byte fromSquare;
        public byte toSquare;
        public byte promotionPiece;
        public byte moveFlags;

        public const byte FLAG_CAPTURE = 0x01;
        public const byte FLAG_CASTLE = 0x02;
        public const byte FLAG_EN_PASSANT = 0x04;
        public const byte FLAG_PROMOTION = 0x08;
        public const byte FLAG_DOUBLE_PAWN = 0x10;

        public static Move Empty => new Move { fromSquare = 0, toSquare = 0, promotionPiece = 0, moveFlags = 0 };

        public bool IsCapture => (moveFlags & FLAG_CAPTURE) != 0;
        public bool IsCastling => (moveFlags & FLAG_CASTLE) != 0;
        public bool IsEnPassant => (moveFlags & FLAG_EN_PASSANT) != 0;
        public bool IsPromotion => (moveFlags & FLAG_PROMOTION) != 0;

        public static bool operator ==(Move m1, Move m2)
        {
            return m1.fromSquare == m2.fromSquare &&
                   m1.toSquare == m2.toSquare &&
                   m1.promotionPiece == m2.promotionPiece;
        }

        public static bool operator !=(Move m1, Move m2) => !(m1 == m2);

        public override bool Equals(object obj)
        {
            if (!(obj is Move)) return false;
            return this == (Move)obj;
        }

        public override int GetHashCode() => fromSquare | (toSquare << 6) | (promotionPiece << 12);

        public static Move ParseRegularCAN(string can)
        {
            if (string.IsNullOrEmpty(can) || can.Length < 4) return Empty;
            Move move = new Move();
            move.fromSquare = SquareToIndex(can.Substring(0, 2));
            move.toSquare = SquareToIndex(can.Substring(2, 2));
            if (can.Length >= 5)
            {
                move.promotionPiece = CharToPiece(can[4]);
                move.moveFlags |= FLAG_PROMOTION;
            }
            return move;
        }

        public override string ToString()
        {
            string result = IndexToSquare(fromSquare) + IndexToSquare(toSquare);
            if (IsPromotion && promotionPiece != 0)
                result += PieceToChar(promotionPiece);
            return result;
        }

        private static byte SquareToIndex(string square)
        {
            if (square.Length < 2) return 0;
            int file = square[0] - 'a';
            int rank = square[1] - '1';
            return (byte)((7 - rank) * 8 + file);
        }

        private static string IndexToSquare(byte index)
        {
            int file = index % 8;
            int rank = 7 - (index / 8);
            return $"{(char)('a' + file)}{(char)('1' + rank)}";
        }

        private static byte CharToPiece(char c)
        {
            switch (char.ToLower(c))
            {
                case 'q': return 4;
                case 'r': return 1;
                case 'b': return 3;
                case 'n': return 2;
                default: return 0;
            }
        }

        private static char PieceToChar(byte piece)
        {
            switch (piece)
            {
                case 1: return 'r';
                case 2: return 'n';
                case 3: return 'b';
                case 4: return 'q';
                default: return '?';
            }
        }
    }

    [Serializable]
    public struct ScoredMove
    {
        public Move move;
        public int score;
    }

    [Serializable]
    public struct HistoryMove
    {
        public Move move;
        public int capture;
        public int castle;
        public int ep;
        public int fifty;
    }

    public class OpeningBook
    {
        private Random random;
        private int[] openingIndex;
        private short[] openingMoves;

        public short GetOpeningMove(int moveNumber) => -1;  // No opening book in test

        public OpeningBook()
        {
            random = new Random();
        }
    }
}
