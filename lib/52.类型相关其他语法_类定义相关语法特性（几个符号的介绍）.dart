main() {
  foo(null);

  Person toly = Person();
  toly.name = "toly";
  toly.age = 28;
  toly.log();

  toly..name = "toly"..age = 28..log(); // .. 等同于上面的写法（连续的调用）

  List<int> list = [1,2,3,4,5];
  List<int> list1 = [...list,6,7]; // ... 解构
  print(list1); // [1, 2, 3, 4, 5, 6, 7]

  GenderType genderType = GenderType.male;
  List<GenderType> li = GenderType.values;
  print("$genderType,$li"); // GenderType.male,[GenderType.male, GenderType.female, GenderType.secrecy]
  print(showInfoByGenderType(genderType)); // 男性
}

void foo(String? name) {
  String b = name ?? "UNKNOWN";
  print(b);
}

class Person {
  String name = '';
  int age = 0;

  void log(){
    print("name:$name,age:$age");
  }
}

enum GenderType {
  male,
  female,
  secrecy,
}

String showInfoByGenderType(GenderType type){
  switch(type){
    case GenderType.male:
      return "男性";
    case GenderType.female:
      return "女性";
    case GenderType.secrecy:
      return "保密";
  }
}
