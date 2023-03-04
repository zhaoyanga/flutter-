main() {
  // Base base = Base(); // 无法实例化抽象类
  // 通过 factory 关键字定义工厂构造方法
  Exception exception = Exception("hello");
  print(exception.runtimeType);
}

abstract class Base {
  void foo(){
    commonLogic1(); // 共同逻辑
    diffLogic(); // 不同子类，执行不同的逻辑
    commonLogic2(); // 共同逻辑
  }
  void diffLogic();
  void commonLogic1(){ }
  void commonLogic2(){ }
}