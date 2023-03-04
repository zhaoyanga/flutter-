main() {
  List<Egg> egg = [];
  egg.add(Egg());
  // egg.add(TableTennis());
  print(egg);

  Aclass<Egg> eggType = Aclass(Egg());
  Aclass<int> intType = Aclass(10);
  print(intType.numberT);
  eggType.printType();

  Map<int,String?> map = {1:null};
  // 空安全，可为kong（null）
  String? info = find<int,String?>(1, map);
  print(info); // null
}

class Egg {
  final String name = '鸡蛋';
}

class TableTennis {
  final String name = '乒乓球';
}

class Aclass<T> {
  final T numberT;

  Aclass(this.numberT);

  void printType() {
    print("当前对象的类型:${numberT.runtimeType}");
  }

  T getNumberT() => numberT;
}

class Bclass<T,V> {
  final T name;
  final V age;

  Bclass(this.name,this.age);
}

V? find<K,V>(K k,Map<K,V> map) {
  return map[k];
}