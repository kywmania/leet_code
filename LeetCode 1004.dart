class Solution {
  int longestOnes(List<int> nums, int k) {
    int left = 0;
    int maxLength = 0;
    int zerosCount = 0;

    for (int right = 0; right < nums.length; right++) {
      if (nums[right] == 0) {
        zerosCount++;
      }

      // zerosCount가 k를 초과하면 left 포인터 이동
      while (zerosCount > k) {
        if (nums[left] == 0) {
          zerosCount--;
        }
        left++;
      }

      maxLength = maxLength > (right - left + 1)
          ? maxLength
          : (right - left + 1);
    }

    return maxLength;
  }
}
