class Solution {
  String tictactoe(List<List<int>> moves) {
    List<List<int>> board = List.generate(3, (_) => List.filled(3, 0));

    for (int i = 0; i < moves.length; i++) {
      int row = moves[i][0];
      int col = moves[i][1];
      board[row][col] = (i % 2 == 0) ? 1 : 4; // A: 1, B: 4
    }

    // 승리 조건 확인
    for (int i = 0; i < 3; i++) {
      // 가로 체크
      if (board[i][0] + board[i][1] + board[i][2] == 3) return 'A';
      if (board[i][0] + board[i][1] + board[i][2] == 12) return 'B';

      // 세로 체크
      if (board[0][i] + board[1][i] + board[2][i] == 3) return 'A';
      if (board[0][i] + board[1][i] + board[2][i] == 12) return 'B';
    }

    // 대각선 체크
    if (board[0][0] + board[1][1] + board[2][2] == 3) return 'A';
    if (board[0][0] + board[1][1] + board[2][2] == 12) return 'B';
    if (board[0][2] + board[1][1] + board[2][0] == 3) return 'A';
    if (board[0][2] + board[1][1] + board[2][0] == 12) return 'B';

    // 무승부인지 확인 (모든 칸이 채워진 경우)
    if (moves.length == 9) return "Draw";

    // 아직 게임이 끝나지 않음
    return "Pending";
  }
}
