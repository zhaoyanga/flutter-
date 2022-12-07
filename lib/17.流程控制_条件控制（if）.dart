import 'dart:math';

main() {
  // Random().nextBool() 生成一个随机的布尔值
  bool a = Random().nextBool();
  if(a) {
        // a为true时执行的逻辑
  } else {
        // a为false时执行的逻辑
  }

  String result = getLevel(85);
  print(result);
}

String getLevel(double grade) {
  String level = '';
  if(grade >= 0 && grade <60) {
    level = 'E';
  } else if(grade <= 70) {
    level = 'D';
  } else if(grade <= 80) {
    level = 'C';
  } else if(grade <= 90) {
    level = 'B';
  } else {
    level = 'A';
  }

  return level;
}