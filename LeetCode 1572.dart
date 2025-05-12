class Solution {
  int diagonalSum(List<List<int>> mat) {
    //
    int sum = 0;
    int length = mat.length;

    // x, y이 값이 같거나 x + y값이 mat[0].length - 1 일때 대각선에 위치
    for (int i = 0; i < length; i++) {
      // for(int j = 0; j<mat[0].length; j++){
      //     if(i == j || (i + j == mat[0].length - 1)){
      //         sum += mat[i][j];
      //     }
      // }

      // 이중 for문을 사용하지 않는 방법 생각
      // i와 j는 서로 묶여있음 -> i 하나만 써도 가능할 것 같다.
      sum += mat[i][i];
      sum += mat[i][length - i - 1];
    }
    // 겹치는 값을 어떻게 빼야할까 -> 겹치는 값은 행렬의 정중앙 값
    // n x n의 행렬이 있을때 n이 짝수면 겹치는 값 x
    // " 홀수일때는 mat[n~/2][n~/2]가 겹침.
    if (length % 2 == 1) {
      sum -= mat[length ~/ 2][length ~/ 2];
    }

    return sum;
  }
}
