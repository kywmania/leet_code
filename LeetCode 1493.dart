class Solution {
  int longestSubarray(List<int> nums) { //[0,1,1,1,0,1,1,0,1]
    int left = 0;
    int zeroCount = 0;
    int max = 0;

    for(int right = 0; right<nums.length; right++){
        if(nums[right] == 0) zeroCount++;

        while(zeroCount > 1){
            if(nums[left] == 0) zeroCount--;
            left++;
        }
        if(max < right - left) max = right - left;
    }
    return max;
  }
}