class Delimiters {

  int gcd(int a, int b) {
    if (!(a > 0 && b > 0)) throw "Zero or negative input";

    int _cycles = 0;

    while (b != 0) {
      var t = b;
      b = a % t;
      a = t;
      _cycles++;
    }

    // print("finished in ${_cycles} cycles");
    return a;
  }

  int lcm(int a, int b) {
    return (a * b) ~/ this.gcd(a, b);
  }

  Delimiters();
}