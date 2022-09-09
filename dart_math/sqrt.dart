extension MyMath on int {
  // General Root
  double myGRT([int degree = 2]) {
    if (this < 0) return throw ArgumentError("general root can not be extracted from a negative value", "negative_value");
    else if (this == 0) return throw ArgumentError("general root can not be extracted from a zero", "zero_value");

    const double percision = 0.001;
    double approx_value = this / degree;
    int iteration = 0;
    double root_degree_division = this.toDouble();

    while (1 / iteration > percision) {
      root_degree_division = this.toDouble();

      for (int i = 1; i < degree; i++) {
        root_degree_division = root_degree_division / approx_value;
      }

      approx_value = (root_degree_division + approx_value) / 2;
      iteration++;
    }

    return approx_value;
  }
}