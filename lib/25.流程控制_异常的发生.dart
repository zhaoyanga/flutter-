main() {
  a('a'); // 因为传的不是数字，所以报错，中断流程
  b(); // 不会执行
}

a(String num) {
  return int.parse(num); // 将入参字符串转为数字
}

b() {
  print('执行我');
}