class Solution {
  bool closeStrings(String word1, String word2) {
    if (word1.length != word2.length) {
      print('길이가 다름');
      return false;
    }

    Set set1 = word1.split('').toSet();
    Set set2 = word2.split('').toSet();
    print('$set1 $set2');
    if (set1.difference(set2).isNotEmpty) {
      print('요소가 다름');
      return false;
    }

    Map<String, int> map1 = {};
    Map<String, int> map2 = {};
    // 빈도 수 체크
    for (int i = 0; i < word1.length; i++) {
      map1[word1[i]] = (map1[word1[i]] ?? 0) + 1;
      map2[word2[i]] = (map2[word2[i]] ?? 0) + 1;
    }
    List<int> freq1 = map1.values.toList()..sort();
    List<int> freq2 = map2.values.toList()..sort();
    print('$freq1 $freq2');

    // 빈도 수가 같다면 true
    int length = freq1.length;
    for (int i = 0; i < length; i++) {
      if (freq1[i] != freq2[i]) {
        return false;
      }
    }
    return true;
  }
}
