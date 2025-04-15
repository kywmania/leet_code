class Solution {
  int largestPerimeter(List<int> nums) { // nums = [2, 1, 2]
    // 내림차순으로 정렬하면 이 조건만 만족해도 됨 a < b + c

    // 내림차순 정렬
    nums.sort((a, b) => b.compareTo(a)); // nums = [2, 2, 1]
    for(int i=0 ; i<nums.length - 2; i++){
        if(nums[i] < nums[i+1] + nums[i+2]){
            return nums[i] + nums[i+1] + nums[i+2];
        }
    }
    return 0;
  }
}