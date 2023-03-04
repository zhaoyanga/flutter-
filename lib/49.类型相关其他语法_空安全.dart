main() {
  Person person = Person();
  person.name = 'lxl';
  String? name = null;
  person.say(name!); // 在此时一定不为空
}

class Person {
  late String name; // 保证会赋值

  void say(String name) {
    print(name);
  }
}