class Solution {
  List<int> countBits(int n) {

    List<int> bits = [];

    for(int i=0; i<=n; i++){
        int count = 0;
        int num = i;
        
        while(num>0){
            if(num % 2 == 1){
                count++;
            }
            num ~/= 2;
        }
        bits.add(count);
    }
    return bits;
  }
}