main() {
  Computer computer = Computer('雷学林');
  User user = User(computer);
  user.printSay(); // ====电脑开机:[雷学林]=====
}

class User {
  // 被关联者(Computer)通常以 成员变量 的形式存在于关联者(User)类中
  Computer computer;

  User(this.computer);

  void printSay() {
    computer.open();
  }
}

class Computer {
  String name;
  User? owner; // 表示电脑的 主人， 这时 User 和 Computer 就是双向的关联关系
  Computer(this.name);

  void open() {
    print("====电脑开机:[${name}]=====");
  }
}