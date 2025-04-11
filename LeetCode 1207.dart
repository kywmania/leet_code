class Solution {
  bool uniqueOccurrences(List<int> arr) { // arr = [1, 2, 2, 1, 1, 3]
    
    Map<int, int> map = {};

    // 해당 숫자를 키값, 횟수를 밸류값으로
    for(int i=0; i<arr.length; i++){
        // 맵의 키에 포함되어 있다면
        if(map.containsKey(arr[i])){
            // 카운트 1 증가
            map[arr[i]] = (map[arr[i]] ?? 0) + 1;

        }else{ // 포함되어 있지 않다면
            // 1로 초기화
            map.addAll({arr[i] : 1});
        }
    } // 현재 map 상태) map = {1:3, 2:2, 3:1}
        
    // map의 밸류값이 중복되지 않는지 확인 해야함    
    // map.values를 List, Set으로 각각 변환시켜 길이를 비교   
    return (map.values).toList().length == (map.values).toSet().length;


  }
}