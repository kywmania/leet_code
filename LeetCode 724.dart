class Solution {
  int pivotIndex(List<int> nums) { // ex) nums = [2, 1, -1]
    int total = nums.reduce((a, b) => a + b); // 전체 합부터 계산
    int sum = 0; // 차례대로 더할 값
    int index = -1; // -1로 초기화

    for(int i = 0; i < nums.length; i++){
        if(total - nums[i] - sum == sum){ // ex) 2 - 2 - 0 == 0
            index = i; // ex) index = 0
            break; // 만족하는 첫번째 값만 받기 위해 탈출
        }  
        
        sum += nums[i];
    }
    return index;
  }
}