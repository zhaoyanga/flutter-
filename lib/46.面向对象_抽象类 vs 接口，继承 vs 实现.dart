main() {
  C c = C();
  // c.run();
}

abstract class A {
  String name;
  A(this.name);
  // void run();
}

class B {
  String name;
  B(this.name);
}

class C implements A,B {
  // C(name):super(name);
  String get name => 'lxl';
  set name(String val) {
    name = val;
  }
  // @override
  // void run() {
    // print(name);
  // }
}