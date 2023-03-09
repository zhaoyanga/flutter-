main() {
  // 创建 List 列表。里面的值是 String类型，不加 <xxx> 就不限制类型
  List<String> list = ['零','壹','贰','叁','肆','伍','陆','柒','捌','玖'];
  list.add('拾'); // 往列表末尾添加元素
  list.addAll(['十一','十二','十三']); // 往列表末尾添加多个元素
  list.insert(14, '十四'); // 在指定索引处添加元素
  list.insertAll(15, ['十五','十六']); // 在指定索引中添加多个值
  list.remove('十六'); // 删除指定值
  list.removeAt(0); // 删除指定下标的值
  list[0] = '一';
  print(list); // [壹, 贰, 叁, 肆, 伍, 陆, 柒, 捌, 玖, 拾, 十一, 十二, 十三, 十四, 十五]
  print(list[0]); // 壹
  
  List<Map<String,String>> arr = [
    {
      'id':'1',
      'name':'传奇'
    },
    {
      'id':'2',
      'name':'枪械'
    }
  ];
  print(arr.length);
}