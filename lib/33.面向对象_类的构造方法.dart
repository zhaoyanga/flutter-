import 'dart:math' as math;
main() {
  Vec2 P0 = Vec2(4, 3,name:'P0');
  print(P0.getInfo());  // P04.0,3.0

  Vec2 P1 = Vec2(4, 3);
  print(P1.getInfo());  // 4.0,3.0

  Vec3 P2 = Vec3(y: 5);

  Vec4 P3 = Vec4.polar(10, math.pi / 4);
  print(P3.getInfo()); // 7.0710678118654755,7.0710678118654755

  Vec4 P4 = Vec4.ride(10, 5);
  print(P4.getInfo()); // 5.0,-5.0
}

class Vec2 {
  double x;
  double y;
  String? _name; // 命名参数,可选
  // Vec2(this.x, this.y); // 是下面写法的简化版
  // Vec2(double arrX, double arrY) // x = x 会导致歧义，通过this可以明确指出 如果变量名不同，可以省略this
  //     : x = arrX,
  //       y = arrY;
  Vec2(this.x,this.y,{String? name})
      : _name = name;
  // 成员方法
  String getInfo() => "$name$x,$y"; // name读的是 get name

  String get name => _name ?? "";
}

class Vec3 {
  double x;
  double y;
  /*
  * 命名参数可选的，如果没有默认值，就必须提供一个方案让其初始化，就可以使用 required
  * x 成员提供默认值，y 成员提供 required 关键字表示必须提供
  * */
  //
  Vec3({
    this.x = 0,
    required this.y
  });
}

class Vec4 {
  double x;
  double y;
  // 命名构造
  Vec4.polar(double length,double rad)
    : x = length * math.cos(rad),
      y = length * math.sin(rad);
  Vec4.ride(double a,double b)
    : x = a - b,
      y = b - a;

  String getInfo() => "$x,$y";
}