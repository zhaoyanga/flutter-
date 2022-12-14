main() {
  // 显卡（个体）
  GraphicsCard graphicsCard = GraphicsCard("NVIDIA GeForce RTX 3060");
  // 内存（个体）
  Memory memory = Memory(32,"DDR4");
  // 电脑（整体）
  Computer computer = Computer('华为',graphicsCard,memory);

  /*
  * ====电脑名称:[华为]=====
    ====电脑显卡:[NVIDIA GeForce RTX 3060]=====
    ====电脑内存:[DDR4:32.0GB]=====
  * */
  computer.printConfig();
}

// 电脑
class Computer {
  String name;
  GraphicsCard graphicsCard;
  Memory memory;

  Computer(this.name,this.graphicsCard,this.memory);

  void printConfig() {
    print("====电脑名称:[${name}]=====");
    print("====电脑显卡:[${graphicsCard.name}]=====");
    print("====电脑内存:[${memory.type}:${memory.size}GB]=====");
  }
}

// 显卡
class GraphicsCard {
  String name;
  GraphicsCard(this.name);
}

// 内存
class Memory {
  double size;
  String type;

  Memory(this.size,this.type);
}