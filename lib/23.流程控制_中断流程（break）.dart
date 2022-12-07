main() {
  int num = 0;
  for(int i = 0; i < 10; i++) {
    if(i.isEven) { // 因为 0 是偶数，所以直接中断循环
      break; // 完全中断循环，不会进行下一次循环
    }
    num += i;
    print("第$i次循环，计入 num");
  }
  print('num:$num'); // num:0
}