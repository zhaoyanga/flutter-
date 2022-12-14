import '33.面向对象_类的构造方法.dart';
main() {
  int y = square(8);
  print(y);

  Vec2 P0 = Vec2(4, 3,name:'P0');
  // print(P0._name);
  print(P0.getInfo());
}
// 定义函数,如果只有一条语句，可以省略{}
int square(int x) => x * x;