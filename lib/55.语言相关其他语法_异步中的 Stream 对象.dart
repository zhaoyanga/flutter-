import 'dart:async';
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

late StreamSubscription<List<int>> subscription;
int fileLength = 0;
int counter = 0;

void doTask2() async {
  // 找到文件，（）是路径
  File file = File(path.join(Directory.current.path,'lib', "main.dart"));
  // 获取文件的长度
  fileLength = await file.length();
  print("开始读取 Jane Eyre.txt ");
  // 打开文件，获取文件流
  Stream<List<int>> stream = file.openRead();

  // 监听Stream listen方法 第一个参数 收到数据时触发，onDone：结束时触发
  // 会返回一个 StreamSubscription 的订阅对象，通过该对象可以控制流的监听
  // 通过 subscription.cancel 方法取消监听
  // 而且不会触发 _onDone 回调
  // stream.listen(_onData, onDone: _onDone);
  subscription = stream.listen(_onData, onDone: _onDone);
}

void _onData(List<int> bytes) {
  // 获取字节的长度
  counter += bytes.length;
  // 算出进度
  double progress = counter * 100 / fileLength;
  DateTime time = DateTime.now();
  String timeStr = "[${time.hour}:${time.minute}:${time.second}:${time.millisecond}]";
  print(timeStr + "=" * (progress ~/ 2) + '[${progress.toStringAsFixed(2)}%]');
  if(progress > 50) {
    subscription.cancel();
  }
}

void _onDone() {
  print("读取 Jane Eyre.txt 结束");
}

void doTask3() {
  print('doTask3');
}