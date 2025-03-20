class Solution {
  int calPoints(List<String> ops) {
    //ops = ["5","2","C","D","+"]
    List<int> records = [];
    int score = 0;

    for (String op in ops) {
      if (op == 'C') {
        if (records.isNotEmpty) {
          records.removeLast();
        }
      } else if (op == 'D') {
        records.add(records.last * 2);
      } else if (op == '+') {
        records.add(records[records.length - 1] + records[records.length - 2]);
      } else {
        records.add(int.parse(op));
      }
    }

    for (int record in records) {
      score += record;
    }

    return score;
  }
}

void main() {
  Solution solution = Solution();
  int score = solution.calPoints(["5", "2", "C", "D", "+"]);
  print(score);
}
