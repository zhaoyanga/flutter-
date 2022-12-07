main() {
  // 调用传参
  solution(85, 94);
}
// void没有返回值，函数接受两个参数
void solution(int n,int m) {
  print("头数:$n  足数:$m");
  int y = (m - n * 2) ~/ 2;
  int x = n - y;
  print("鸡数:$x  兔数:$y");
}