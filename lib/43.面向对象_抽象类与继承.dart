main() {
  Rectangle rectangle = Rectangle(Vec2(50,100),width: 100,height: 200);
  rectangle.draw(); // 绘制长方形，中心点(50.0,100.0),宽:200.0, 高: 100.0
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