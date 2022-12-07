main() {

}

foo1() {
  // 字符串可以通过 单引号，双引号，三单引号，三双引号 进行包裹
  String a = 'hello,toly';
  String b = "hello,toly";
  String c = '''hello,toly''';
  String d = """hello,toly""";
}

foo2() {
  // 单引号中可以直接使用双引号
  String a = 'hello,"toly';
  // 双引号中使用双引号，必须使用 \" 转义
  String b = "hello,\"toly\"";
}

foo3() {
  // 单引号中使用单引号，也要使用 \' 转义
  String a = 'hello,\'toly\'';
  // 双引号中可以直接使用单引号
  String b = "hello,'toly'";
}

foo4() {
  // 三单引号和三双引号里都可以直接使用单引号双引号
  String a = '''
  'hello',"toly"
  ''';
  String b = """
  'hello',"toly"
  """;
}