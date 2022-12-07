main() {
  foo();
  foo1();
  foo2();
  foo3();
  foo4();
  foo5();
}

foo() {
  String addr = '大亚湾基地';
  String name = '雷学林';
  // 通过 +号 可以拼接字符串内容
  String result = '今天我和' + name + '一起去' + addr + '上班!';
  print(result);
  // 变量非常多，用加号拼接就很复杂，可以通过字符串模板进行拼接，语法是通过 $ + {} 包裹变量
  // 如果大括号中只是变量名，大括号可以省略
  String result1 = '今天我和${fun1()}一起去$addr上班';
  print(result1);
}
String fun1() {
  return '李艺';
}
foo1() {
  String name = '雷学林23';
  // 字符串可以通过下标取值
  print(name[2]); // 林
  // 取最后一位字符
  print(name[name.length - 1]); // 3
  // substring 截取字符
  print(name.substring(0,3)); // 雷学林
}

foo2() {
  String name = '  雷学林  23 ';
  // 去除左右的空格
  print(name.trim()); // 雷学林空23
  // 去除左边的空格
  print(name.trimLeft()); // 雷学林空23空
  // 去除右边的空格
  print(name.trimRight()); // 空雷学林空23
}

foo3() {
  String name = 'toly1994';
  // 把字符串中的字母转大写
  print(name.toUpperCase()); // TOLY1994
  // 把字符串中的字母转小写
  print(name.toLowerCase()); // toly1994
}

foo4() {
  String name = 'toly1994';
  // 是否以某字符串开头
  print(name.startsWith('T')); // false
  // 是否以某字符串结尾
  print(name.endsWith('4')); // true
  // 是否包含某字符串
  print(name.contains('19')); // true
}

foo5() {
  String name = 'toly 1994';
  // 替换字符串
  print(name.replaceAll(' ', '&')); // toly&1994
  // 分割字符串
  print(name.split(' ')); // [toly, 1994]
}