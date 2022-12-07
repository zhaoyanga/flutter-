main() {
  try {
    a('b');
  } catch(e,s) {
    /*
    * e 表示异常对象，此处为 FormatException
    * s 表示_StackTrace对象，用于记录异常的栈信息
    */
    print("${e.runtimeType}: ${e.toString()}");
    print("${s.runtimeType}: ${s.toString()}");
  }
  // 当异常通过 try/catch 进行捕捉后，这时程序就不会中断，b() 依然可以触发
  b();
}

a(num) {
  return int.parse(num);
}

b() {
  print('执行我');
}