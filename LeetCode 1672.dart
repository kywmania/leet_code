class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int max = -1;

    for (int i = 0; i < accounts.length; i++) {
      int money = accounts[i].reduce((a, b) => a + b);
      max = money > max ? money : max;
    }

    return max;
  }
}
