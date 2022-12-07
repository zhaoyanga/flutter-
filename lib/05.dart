main() {
  // 未指定某个参数时，会使用默认值
  String s1 = repeat();
  print(s1);

  String s2 = repeat(src:'李艺',count: 3);
  print(s2);
}

String repeat({
  String src = '雷学林',
  int count = 2
}) {
  return src * count;
}