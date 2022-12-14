main() {
  Computer computer = Computer();
  computer.calculate();
  computer.open();
  computer.close();

  Human human = Human();
  human.calculate();
}

// 通过 abstract 关键字定义抽象类，不能被实例化
abstract class Calculate {
  // 抽象方法，不能使用 abstract 关键字
  void calculate();
}

abstract class Electric {
  open();
  close();
}

/*
* 实现某些类通过 implements 关键字完成，其后可以加多个接口，通过 , 号隔开
* 当 Computer 实现 Calculate 和 Electric 接口时，就必须实现(覆写)接口中定义的全部属性和方法
* */
class Computer implements Calculate,Electric {
  @override // 重写父类方法
  void calculate() {
    print("我是实现（重写） Calculate 中的方法");
  }

  @override // 重写父类方法
  open() {
    print("我是实现（重写） Electric 中的 open 方法");
  }

  @override // 重写父类方法
  close() {
    print("我是实现（重写） Electric 中的 close 方法");
  }
}

class Human implements Calculate{
  @override
  void calculate() {
    print("我是实现（重写） Calculate 中的方法");
  }
}