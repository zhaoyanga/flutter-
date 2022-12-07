import 'dart:io';

main() {
  // while(表达式/循环条件){
  //
  // }
  List<String> list = ['零','一','二','三','四','五','六','七','八','九','十'];

  Iterator<String> li = list.iterator;
  print(li);
  while(li.moveNext()) {
    print(li.current);
  }

  int i = 0;
  while( i < list.length ) {
    print(list[i]);
    i++;
  }

  // 求1+2+3+4 ...+100的和
  int a = 0;
  int b = 0;
  while(b <= 100) {
    a+=b;
    b++;
  }
  print(a);

  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  int index = 0;
  if(cnNumUnits.isEmpty) return; // isEmpty 判断是否为空

  do {
    print(cnNumUnits[index]);
    index++;
  } while (index < cnNumUnits.length);

  // 求平均数
  List<double> list1 = [84.5,69,84,79,55,84.5,90.5,79,10];
  double total = 0;
  for(int i = 0; i < list1.length; i++) {
    total += list1[i];
  }
  print(total / list1.length);
}