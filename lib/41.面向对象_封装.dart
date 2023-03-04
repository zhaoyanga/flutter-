main() {
  Rectangle rectangle = Rectangle(Vec2(10,10), 200, 100);
  rectangle.move();
  rectangle.draw(); // 绘制矩形，中心点(20.0,20.0)宽:100.0, 高: 200.0
}

// 统一类型不通用，仅通过封装会产生很多重复代码
class Rectangle {
  Vec2 center;
  double width;
  double height;

  Rectangle(this.center,this.width,this.height);

  void draw() {
    String info = "绘制矩形，中心点(${center.x},${center.y})"
        "宽:$width, 高: $height";
    print(info);
  }

  void move() {
    center.x += 10;
    center.y += 10;
  }

  void rotate() {

  }
}

class Circular {
  Vec2 center;
  double radius;

  Circular(this.center,this.radius);

  void draw() {
    String info = "绘制圆形，中心点(${center.x},${center.y})"
        "半径：$radius";
    print(info);
  }

  void move() {
    center.x += 10;
    center.y += 10;
  }

  void rotate() {

  }
}

class Vec2 {
  double x;
  double y;

  Vec2(this.x,this.y);
}