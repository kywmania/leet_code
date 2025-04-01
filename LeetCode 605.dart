class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    // 꽃들은 서로 인접하지 않아야 한다
    // 0의 이어붙은 수가 3개면 1, 5개면 2, 7개면 3
    // (zero - 1 ) ~/ 2
    int zeroCount = 1;
    int canPlaceCount = 0;
    for (int flower in flowerbed) {
      if (flower == 0) {
        zeroCount++;
      } else {
        canPlaceCount += (zeroCount - 1) ~/ 2;
        zeroCount = 0;
      }
    }
    //마지막이 0으로 끝날 때 처리
    canPlaceCount += (zeroCount) ~/ 2;

    return n <= canPlaceCount;
  }
}
