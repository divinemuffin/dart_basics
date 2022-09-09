class Binary {

  String toBinary(int a) {
    String bin = "";

    while (a > 0) {
      bin = (a % 2 == 0 ? '0' : '1') + bin;
      a ~/= 2;
    }

    return bin;
  }

  int toDecimal(int a) {
    int dec = 0;
    int base = 1; // [2,4,8,16 ...]

    int temp = a;
    while (temp > 0) {
      int last_digit = temp % 10;
      temp ~/= 10;
      dec += last_digit * base;
      base *= 2;
    }

    return dec;
  }
}