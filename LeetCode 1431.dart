class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    // 최대값 구하기
    int maxCandy = candies.reduce((a, b) => a > b ? a : b);
    // 결과값 담을 리스트 초기화
    List<bool> result = [];

    for (int candie in candies) {
      candie + extraCandies >= maxCandy ? result.add(true) : result.add(false);
    }

    return result;
  }
}
