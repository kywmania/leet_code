import 'dart:math';

class Solution {
  int maxArea(List<int> height) {
    int left = 0;
    int right = height.length - 1;
    int maxSize = 0;
    while(left<right){

        int size = min(height[left], height[right]) * (right - left);
        maxSize = size > maxSize ? size : maxSize;

        if(height[left] > height[right]){
            right--;
        }else{
            left++;
        }
    }
    return maxSize;
  }
}