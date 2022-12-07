main() {
  // 通过名称来传递参数
  solution(head:35,foot: 94);
  // 无需按照参数的顺序依次传递
  solution(foot: 94,head:35);
}

// 命名参数，可以通过名称来传递参数
void solution({
  required int head,
  required int foot,
}) {
  print("头数:$head  足数:$foot");
  int y = (foot - head * 2) ~/ 2;
  int x = head - y;
  print("鸡数:$x  兔数:$y");
}