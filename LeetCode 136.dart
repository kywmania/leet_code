class Solution {
  int singleNumber(List<int> nums) {
    //Map<숫자, 카운트>
    Map<int, int> map = {};

        // 배열 순회
        for(int num in nums){
            // null이면 1로 초기화, 아니면 +1
            map[num] = (map[num]?? 0) + 1;
        }

        // map의 키들을 순회
        for(int key in map.keys){
            // 카운트가 1일때의 키값 리턴
            if(map[key] == 1){
                return key;
            }
        }

    return -1;
  }
}