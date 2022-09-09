import 'dart:math';

class Point {
  final int x;
  final int y;
  final int z;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }
  factory Point.one() {
    return Point(1, 1, 1);
  }
  
  distanceTo(Point point) {
      return sqrt(pow(point.x - this.x, 2) + pow(point.y - this.y, 2) + pow(point.z - this.z, 2));
  }
}

double AreaOfTriangle(Point p1, Point p2, Point p3) {
  final A = p1.distanceTo(p2);
  final B = p2.distanceTo(p3);
  final C = p3.distanceTo(p1);

  final s = (A+B+C)/2; // semi-perimiter

  return sqrt(s*(s-A)*(s-B)*(s-C));
}