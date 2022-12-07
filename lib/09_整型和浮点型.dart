main() {
  double result = bmi(weight:69,height: 1.76);
  // bool 布尔类型
  bool normal = result > 18.5 && result < 23.9;
  print(normal);

  int count = 49; // 整形
  double pi = 3.14; // 浮点型

  fun0();
  fun1();
  fun2();
  fun3();
}

double bmi({
  required double weight,
  required double height,
}) {
  return weight / (height * height);
}

fun0() {
  // num 是父类，可以声明整型或浮点型，用num声明的量，会自动类型转换
  num a = 57;
  num b = 3.28;
  // runtimeType 检测类型
  print("a:${a.runtimeType} === b:${b.runtimeType}"); // a:int === b:double
}

fun1() {
  num b = 3.28;
  print(b.abs()); // 绝对值：3.28
  print(b.ceil()); // 向上取整：4
  print(b.floor()); // 向下取整：3
  print(b.round()); // 四舍五入取整：3
  print(b.truncate()); // 去除小数部位取整：3
  print(b.toStringAsFixed(1)); // 四舍五入，保留几位小数，返回字符串：3.3
}

fun2() {
  // parse 解析数据获得数字
  double result1 = double.parse('3.3');
  int result2 = int.parse("10");
  print({result1, result2});
}

fun3() {
  int a = 2022;
  // toRadixString 返回指定进制的字符串
  print(a.toRadixString(2)); // 11111100110
  print(a.toRadixString(16)); // 7e6

  // 整形的parse也可以指定转换的进制
  int value = int.parse('7e6',radix: 16);
  print(value); // 2022
  
  int value1 = int.parse('11111100110',radix: 2);
  print(value1); // 2022
}