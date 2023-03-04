main() {
  B b = B();
  b.count = 20;
  b.log();
  print(b.num);
}

mixin A {
  int count = 10;

  void log() {
    print("$runtimeType,$count");
  }

  void init();
}

mixin C {
  int num = 0;
  void log() {
    print("$runtimeType,$num");
  }
}

class B with A,C {
  @override
  void init() {
  }

  @override
  void log() {
    super.log();
    print('B');
  }

}

// 被关联类
class Vec2 {
  double x;
  double y;

  Vec2(this.x,this.y);
}

mixin MoveAble on Position {
  void move() {
    vec2.x += 10;
    vec2.y += 10;
    print("$runtimeType====move");
  }
}

mixin Position {
  Vec2 vec2 = Vec2(0, 0);
}

class D with Position,MoveAble {

}