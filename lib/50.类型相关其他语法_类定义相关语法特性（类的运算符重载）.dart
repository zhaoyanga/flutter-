main() {
  Vec2 p0 = Vec2(3, 4);
  Vec2 p1 = Vec2(2, 5);
  // Vec2 p2 = p0.add(p1);
  Vec2 p2 = p0 + p1;
  print(p2);
  print(p2[true]);
}

class Vec2 {
  final double x;
  final double y;

  Vec2(this.x,this.y);
  // operator 重载
  // Vec2 add(Vec2 other) => Vec2(other.x + x, other.y + y);
  Vec2 operator +(Vec2 other) => Vec2(other.x + x, other.y + y);
  double operator [](bool flag) => flag ? x : y;

  String toString() => "Vec2($x,$y)";
}