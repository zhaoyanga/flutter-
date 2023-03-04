main() {

}

class Rectangle extends Shape {
  double width;
  double height;
  Rectangle(Vec2 center,{this.width = 200,this.height = 100}):super(center);
  
  void darw() {
    String info = "绘制矩形，中心点(${center.x},${center.y})"
        "宽:$width, 高: $height";
    print(info);
  }
}

class Circular extends Shape {
  double radius;
  Circular(Vec2 center,{this.radius = 50}) :super(center);

  void darw() {
    String info = "绘制圆形，中心点(${center.x},${center.y})"
        "半径:$radius";
    print(info);
  }
}

// 父类
class Shape {
  Vec2 center;

  Shape(this.center);

  void move() {
    center.x += 10;
    center.y += 10;
  }

  void rotate(){

  }
}

// 被关联类
class Vec2 {
  double x;
  double y;

  Vec2(this.x,this.y);
}