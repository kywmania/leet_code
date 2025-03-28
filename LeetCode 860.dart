class Solution {
  bool lemonadeChange(List<int> bills) {
    //[5,5,10,10,20]
    Map<int, int> cash = {5: 0, 10: 0, 20: 0};

    for (int i = 0; i < bills.length; i++) {
      if (bills[i] == 5) {
        cash[5] = cash[5]! + 1;
      } else if (bills[i] == 10) {
        if (cash[5]! > 0) {
          cash[5] = cash[5]! - 1;
          cash[10] = cash[10]! + 1;
        } else {
          return false;
        }
      } else if (bills[i] == 20) {
        if (cash[10]! >= 1 && cash[5]! >= 1) {
          cash[10] = cash[10]! - 1;
          cash[5] = cash[5]! - 1;
          cash[20] = cash[20]! + 1;
        } else if (cash[5]! >= 3) {
          cash[5] = cash[5]! - 3;
          cash[20] = cash[20]! + 1;
        } else {
          return false;
        }
      }
    }
    return true;
  }
}
