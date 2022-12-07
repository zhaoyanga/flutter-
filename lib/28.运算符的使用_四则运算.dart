main() {
  foo2();
}

void foo1() {
  int a = 10;
  int b = 3;
  print(a + b); // 13
  print(a - b); // 7
  print(a * b); // 30
  print(a / b); // 3.3333333333333335
  print(a ~/ b); // ~/ 整除 3
  print(a % b); // 1
}

void foo2() {
  // 浮点类型运算，精确缺失，一般保留几位小数(toStringAsFixed(xx))，如果是需要高度精确的,可以使用 decimal 第三方库
  double a = 10.2;
  int b = 3;
  print(a + b); // 13.2
  print(a - b); // 7.199999999999999
  print(a * b); // 30.599999999999998
  print(a / b); // 3.4
  print(a ~/ b); // ~/ 整除 3
  print(a % b); // 1.1999999999999993
}