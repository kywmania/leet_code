class Solution {
  bool isMonotonic(List<int> nums) {
    bool plus = false;
    bool minus = false;

    for (int i = 1; i < nums.length; i++) {
      if (nums[i - 1] > nums[i]) {
        minus = true;
      } else if (nums[i - 1] < nums[i]) {
        plus = true;
      }
    }
    return !(plus && minus);
  }
}
