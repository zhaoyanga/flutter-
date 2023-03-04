import 'dart:io';
import 'package:path/path.dart' as path;

void main() {
  doTask1();
  doTask2();
  doTask3();
}

void doTask1() {
  print('doTask1');
}

// void doTask2() {
//   // // 拼接一个路径：D:\Projects\Flutter\myapp\lib\54.语言相关其他语法_同步和异步的区别.dart
//   File file = File(path.join(Directory.current.path, "README.md"));
//   print('开始读取====README.md===');
//   // String content = file.readAsStringSync(); // 同步读取，会阻塞
//   // print('结束读取====README.md===');
//   // print('README.md 内容: $content');
//
//   file.readAsString().then((value) { // 异步读取
//     print('结束读取====README.md===');
//     print('README.md 内容: $value');
//   });
// }

void doTask2() async {
  File file = File(path.join(Directory.current.path,'lib', "54.语言相关其他语法_同步和异步的区别.dart"));
  print('开始读取====README.md===');
  String content = await file.readAsString();
  print('结束读取====README.md===');
  print('README.md 内容: $content');
}

void doTask3() {
  print('doTask3');
}