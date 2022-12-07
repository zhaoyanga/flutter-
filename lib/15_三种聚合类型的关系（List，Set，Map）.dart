main() {
  /*
    如果 List 有重复元素，需要去重，而 Set 元素是不重复的，
    这时，可以通过 toSet 转化为 Set，在通过 toList 转化为 List，就可以达到去重
  */
  List<String> list = ['一','一','二','三','四','四'];
  Set<String> set = list.toSet();
  List<String> list1 = set.toList();
  print(list1); // [一, 二, 三, 四]

  // asMap List列表 通过 asMap 返回一个 Map对象；键是索引，值是元素值
  Map<int,String> map = list.asMap();
  print(map); // {0: 一, 1: 一, 2: 二, 3: 三, 4: 四, 5: 四}


  /*
  * Map.fromIterables(keys,values) 可以根据两个可迭代对象创建映射对象，前者是 key，后者是 value
  * 其中 List 和 Set 都是可迭代对象，可以作为 入参
  * */
  List<String> list2 = ['零','一','二','三','四','五'];
  Set<int> set1 = {1,10,100,1000,10000,100000};
  Map<int,String> map1 = Map.fromIterables(set1,list2);
  print(map1); // {1: 零, 10: 一, 100: 二, 1000: 三, 10000: 四, 100000: 五}

  /*
  * Map对象可以通过 keys 和 values 来获取可迭代对象
  * 在通过 toSet 和 toList 就可以获得 Set 和 List
  * */
  print(map1.keys); // (1, 10, 100, 1000, 10000, 100000)
  print(map1.values); // (零, 一, 二, 三, 四, 五)
  print(map1.keys.toSet()); // {1, 10, 100, 1000, 10000, 100000}
  print(map1.values.toList()); // [零, 一, 二, 三, 四, 五]
  print(map1.keys.toList()); // [1, 10, 100, 1000, 10000, 100000]
  print(map1.values.toSet()); // {零, 一, 二, 三, 四, 五}

  // print(list.toSet().toList()); 也可以链式调用

}