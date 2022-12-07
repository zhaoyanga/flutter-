main() {
 double result = add(3, 4, op: square);
 // double result = add(3, 4, op: (double e) => e * e * e); 可以提供一个匿名函数
 print(result);
 // 命名参数，参数名要对象，参数的值是函数
 int res = reduce(6, 4, re: handle);
 print(res);
}
double square(double a) {
  return a * a;
}
double add(double a, double b, {Operation ? op}) { // {}命名参数，？是表示该入参可为空
  if(op == null) return a + b;
  return op(a) + op(b);
}
typedef Operation = double Function(double);

int reduce(int a, int b, {reduceType ? re}) { // {}命名参数，？表示入参可为空
  if(re == null) return a - b;
  return re(a, b);
}
// 减法函数，返回类型int，接收两个int类型的参数
int handle(int a, int b) {
  // 判断a是否大于b，大于返回a-b，否则b-a
  return a > b ? a - b : b - a;
}
// 定义一个减法的函数类型。返回值是int，参数是两个，都为int
typedef reduceType = int Function(int,int);