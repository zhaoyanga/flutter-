main() {
  List<int> list = [0,10,100,1000,10000];
  Set<int> set = {0,10,100,1000};
  for(int element in list) {
    print(element); // 获取每个元素，拿不到索引
  }

  for(int i in set) {
    print(i); // 获取每个元素
  }
}