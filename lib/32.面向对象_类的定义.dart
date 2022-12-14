import 'dart:math' as math;
main() {
  // 实例化
  Ve2 p = Ve2(3, 4);
  print("${p.x},${p.y}"); // 3.0,4.0
  // 通过 实例p，可以访问和修改类中的成员变量
  p.x = 5;
  print("${p.x},${p.y}"); // 5.0,4.0
  p.name = 'P';
  //
  print(p.getInfo()); // 5.0,4.0

  Ve2 p1 = Ve2(6,0); // 36 + 0 , 36 正平方根就是 6
  print(p1.getLength()); // 6.0
  print(p1.length); // 6.0
}

class Ve2 {
  double x;
  double y;
  String? _name; // 私有变量，命名参数
  Ve2(this.x,this.y); // 构造方法，给成员变量赋值，完成初始化

  // 成员方法
  String getInfo() => "$name$x,$y"; // name读的是 get name

  // 返回传入值的正平方根
  double getLength() => math.sqrt(x * x + y * y);

  // 等同于上面的方法，调用时不加 (), 修饰方法，语法糖，只读
  double get length => math.sqrt(x * x + y * y);

  String get name => _name ?? "";

  // set，修改
  set name(value) {
    if(value == null) {
      _name = "";
    } else {
      _name = value + ":";
    }
  }
}