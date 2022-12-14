main() {
  B b = B(1,2); // 实例 b
  A a = A(); // 实例 a
  // 实例 a 调用自身的方法，实例 b 作为参数传入方法中
  a.say(b); // x:1,y:2

}

class A {

  // A类 依赖于 B类，A类 需要使用 B类 的变量/方法
  void say(B b) {
    print("x:${b.x},y:${b.y}");
  }
}

class B {
  int x;
  int y;

  B(this.x,this.y);
}