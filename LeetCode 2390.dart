class Solution {
  String removeStars(String s) {
    List<String> list = [];

    for(int i = 0; i<s.length; i++){
        if(s[i] == '*'){
            list.removeLast();
        } else{
            list.add(s[i]);
        }
    }
    return list.join('');
  }
}