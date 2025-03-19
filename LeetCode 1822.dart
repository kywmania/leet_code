class Solution {
  int arraySign(List<int> nums) {
    int isMinus = 1;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 0) {
        return 0;
      } else if (nums[i] < 0) {
        isMinus = -isMinus;
      }
    }
    return isMinus;
  }
}
