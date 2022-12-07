main() {
  /*
    第1次循环，计入 num
    第3次循环，计入 num
    第5次循环，计入 num
    第7次循环，计入 num
    第9次循环，计入 num
    num: 25
  */
  int num = 0;
  for(int i = 0; i < 10; i++) {
    if(i.isEven) { // 如果是偶数
      continue; // 结束本次循环，进行下一次循环，i++是每次循环结束后执行
    }
    num += i;
    print('第$i次循环，计入 num');
  }
  print("num: $num");


  /*
    1
    2
    3
    4
    我跳出循环了 5
    6
    7
    8
    9
    10
  */
  int j = 0;
  while(j < 10) {
    j++;
    if(j == 5) {
      print('我跳出循环了 $j');
      continue;
    }
    print('$j');
  }
}