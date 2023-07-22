class Solution {
  int sumOfSquaresOfDigits(int n) {
    int total = 0;
    while (n > 0) {
      int digit = n % 10;
      total += digit * digit;
      n ~/= 10;
    }
    return total;
  }

  bool isHappy(int n) {
    int slowPointer = n;
    int fastPointer = n;

    while (true) {
      slowPointer = sumOfSquaresOfDigits(slowPointer);
      fastPointer = sumOfSquaresOfDigits(sumOfSquaresOfDigits(fastPointer));

      if (slowPointer == fastPointer) {
        return slowPointer == 1;
      }
    }
  }
}
