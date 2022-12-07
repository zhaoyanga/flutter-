void main() {
  NoElementInDictException p = new NoElementInDictException('aaaa');
  // print(p.toString());
  // print(p.getArg());

  // try {
  //   getMean("about");
  // } catch (e,s) {
  //   print("${e.runtimeType}: ${e.toString()}");
  //   print("${s.runtimeType}: ${s.toString()}");
  // }
  try {
    // getMean("about");
    getMean("card");
  } on NoElementInDictException catch(e,s) {
    print('${e.toString()}/////$s');
  } catch (e,s) {
    print('${e.toString()}—————$s');
  } finally{
    print('不管是否异常，都执行');
  }
}

String getMean(String arg) {
  Map<String, String> dict = {"card": "卡片", "but": "但是"};
  String? result = dict[arg];
  if (result == null) {
    throw Exception("empty $arg mean in dict");
  }
  if(result.length == 2) {
    throw new NoElementInDictException("$arg"); // 自定义异常抛出
  }
  return result;
}

// 扩展，必须重写父类所有的方法
class NoElementInDictException implements Exception {
  final String arg;

  NoElementInDictException(String this.arg); // new 的时候自动执行，传入参数，arg 只能运行的时候赋值一次

  @override // 重写父类方法
  String toString() => "empty $arg mean in dict 错误";

  String getArg() => arg;
}