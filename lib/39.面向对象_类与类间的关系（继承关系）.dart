main() {
  Circle circle = Circle(Vec2(100,100), 50);
  Rectangle rectangle = Rectangle(Vec2(50,50));
  circle.move();
  rectangle.move();
}

// 父类
class Shape {
  Vec2 center;
  Shape(this.center);

  void move() {
    center.x += 1;
    center.y += 1;
    // 因为上面是两个子类调用，所以运行时的类型是子类
    print("$runtimeType:move(10,10)==> center:(${center.x},${center.y})");
  }
}

// 子类继承父类，super是调用父类的构造函数，子类可以使用父类的变量和方法
class Circle extends Shape {
  int radius;
  Circle(Vec2 center,this.radius)
      :super(center);
}

// 子类继承父类，super是调用父类的构造函数
class Rectangle extends Shape{
  double width;
  double height;

  // 命名参数默认值
  Rectangle(Vec2 center,{this.width=20,this.height=20})
      : super(center);
}

// 关联类
class Vec2 {
  int x;
  int y;

  Vec2(this.x,this.y);
}