main() {
  int num = 0;
  for(int i = 0; i < 10; i++) {
    if(i.isEven) {
      return;
    }
    num += i;
    print('第$i次循环,计入num');
  }
  print(num);
}