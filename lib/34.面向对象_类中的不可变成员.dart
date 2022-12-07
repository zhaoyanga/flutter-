main() {
  Vec2 P = Vec2(4, 3);
  // P.x = 4; // 报错

  Person.name = '雷学林';
  Person p1 = Person(23);
  p1.say(); // 我叫雷学林,我今年23岁了
}

class Vec2 {
  /*
  * 使用 final 修饰的变量只能被赋值一次，
  * 初始化后就不能在修改了，没有修改需求，
  * 可以使用 final 修饰，防止误操作
  * */
  final x;
  final y;

  Vec2(this.x,this.y);
}

class Person {
  // 通过 类 直接访问，不依赖对象
  static String name = ""; // static 静态成员变量
  int age;

  Person(this.age);

  void say() {
    print("我叫$name,我今年$age岁了");
  }

  // 静态方法中是不能直接使用 普通成员变量/方法 的
  static void printName() {
    // say(); // 无法从静态方法访问实例化成员
    print('我是$name' /*$age*/);
  }
}