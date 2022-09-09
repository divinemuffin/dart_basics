double integral(num min, num max, Function(num) func, num _num) {
    double sum = 0;
    var dx = (max - min) / _num;
    var currentX = min + dx / 2;
    for (var i = 0; i < _num; i++) {
      var currentY = func(currentX);

      sum += dx * currentY;
      currentX += dx;
    }
    return sum;
  }