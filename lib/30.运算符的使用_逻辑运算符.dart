main() {
  // && 并且， || 或者， ! 反值
  int age = 13;
  double height = 1.39;
  // bool allow = age < 14 && height < 1.40;  // true
  bool allow = age < 14 || height < 1.40; // true
  if(!allow) {
    print('不允许入内!');
  }
  print(allow);
}