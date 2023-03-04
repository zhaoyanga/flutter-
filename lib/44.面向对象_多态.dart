import 'package:myapp/39.%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1_%E7%B1%BB%E4%B8%8E%E7%B1%BB%E9%97%B4%E7%9A%84%E5%85%B3%E7%B3%BB%EF%BC%88%E7%BB%A7%E6%89%BF%E5%85%B3%E7%B3%BB%EF%BC%89.dart';

main() {
  Shape rectangle = Rectangle(Vec2(50,100));
  // rectangle.draw();
  drawShape(rectangle);

  Shape circle = Circle(Vec2(50,100));
  // circle.draw();
  drawShape(circle);

  Exception exception = Exception("hellow");
  print(exception);
}

void drawShape(Shape shape) {
  if(shape is Rectangle) {
    print(shape.width);
  }
  shape.draw();
}

// 子类
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(Vec2 center,{this.width = 200,this.height = 100}):super(center, shape : '长方形');

  @override
  String drawInChild() => "宽:$width, 高: $height";

  @override
  void draw() { // 调用这个方法时，会优先调用覆写的方法，没有就调用父类的方法，super.xxx 可以调用父类的方法
    print("绘制图形前");
    super.draw();
    print("绘制图形后");
  }
}

class Circle extends Shape {
  double radius;

  Circle(Vec2 center,{this.radius = 100}):super(center,shape:'圆形');

  @override
  String drawInChild() => "半径:$radius";

  @override
  void draw() { // 调用这个方法时，会优先调用覆写的方法，没有就调用父类的方法，super.xxx 可以调用父类的方法
    print("绘制图形前");
    super.draw();
    print("绘制图形后");
  }
}

// 抽象类
abstract class Shape {
  Vec2 center;
  String shape;

  Shape(this.center,{this.shape = '图形'});

  void move() {
    center.x += 10;
    center.y += 10;
  }

  void draw() {
    String info = "绘制$shape，中心点(${center.x},${center.y}),${drawInChild()}";
    print(info);
  }

  // 抽象方法
  String drawInChild();

  void rotate() {

  }
}

// 被关联类
class Vec2 {
  double x;
  double y;

  Vec2(this.x,this.y);
}