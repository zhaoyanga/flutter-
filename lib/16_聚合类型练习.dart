main() {
  List<String> list = ['零','一','二','二'];
  print(list.toSet()); // {零, 一, 二}
  Set<int> set = {1,2,3,4};
  print(set.toList()); // [1, 2, 3, 4]

  Map<int,String> map = list.asMap();
  print(map); // {0: 零, 1: 一, 2: 二, 3: 二}

  Map<int,String> map1 = Map.fromIterables(set, list);
  print(map1); // {1: 零, 2: 一, 3: 二, 4: 二}

  List<String> list1 = map1.values.toList();
  Set<int> set1 = map1.keys.toSet();
  print({list1,set1}); // {[零, 一, 二, 二], {1, 2, 3, 4}}
}
