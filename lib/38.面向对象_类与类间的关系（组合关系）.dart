main() {
  /*
  * Student 就是学生
  * Document 就是档案
  * 档案随着学生的变化而变化
  * 当学生没了，档案也就没意义了
  * */
  Document document = Document();
  Student student = Student(document);
  student.event("2000 年 入学 塘头 小学");
  student.event("2006 年 入学 临川六 初中");
  student.event("2009 年 入学 无 高中");
  student.event("2012 年 入学 抚州职业技术学院 大学");
  String info = student.callDocument();
  print(info);
}

class Student {
  Document document;

  Student(this.document);

  void event(String string) {
    // 往数组末尾添加
    document.records.add(string);
  }

  String callDocument() {
    // 数组转字符串，以换行符分割
    return document.records.join('\n');
  }

  void died() {
    // 清空数组
    document.records.clear();
  }
}

class Document {
  // 命名参数，默认值
  List<String> records = [];
  // 无需实例赋值，通过事件赋值
  void addRecord(String string) {
    records.add(string);
  }
}