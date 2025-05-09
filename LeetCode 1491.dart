class Solution {
  double average(List<int> salary) {
    // 최대, 최소값 구하기
    int max = salary.reduce((a, b) => a > b ? a : b);
    int min = salary.reduce((a, b) => a < b ? a : b);

    // 평균은 소수가 나올 수도 있으니 double형으로
    double sum = 0.0;

    // min, max를 제외하고 더하기
    for(var i in salary){
        if(i != max && i != min){
            sum += i;
        }
    }

    // 평균값
    return (sum / (salary.length - 2));
  }
}