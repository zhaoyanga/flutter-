main() {
  // 创建 Set 集合，里面的值是 String类型，不加 <xxx> 就不限制类型，不包含相同元素。无序的，没用索引，不能通过索引来访问、修改
  Set<String> sets = { '零' ,'一' ,'二' ,'三' ,'四' ,'五' };

  sets.add('六'); // 往集合末尾添加元素
  sets.add('六'); // 添加相同元素会被自动去重
  print(sets.length); // 7
  sets.remove('六'); // 删除指定元素
  print(sets); // {零, 一, 二, 三, 四, 五}

  /*
    addAll 和 removeAll 可以添加或删除多个元素，
    入参是可迭代对象，List和Set都是可迭代对象
  */
  sets.addAll({'六','七','八','九'}); // 往集合末尾添加多个元素（集合形式）
  sets.addAll(['十','十一','十二','十三']); // 添加多个元素（列表形式）

  sets.removeAll({'六','七','八','九'}); // 删除多个元素（集合形式）
  sets.removeAll(['十','十一','十二','十三']); // 删除多个元素（列表形式）


  Set<String> part = {'零', '一', '二', '元', '角', '分'};
  // intersection交集：属于A且属于B的元素
  print(sets.intersection(part)); // {零, 一, 二}
  // union并集：属于A或属于B的元素
  print(sets.union(part)); // {零, 一, 二, 三, 四, 五, 元, 角, 分}
  // difference补集：A中的元素中B没有的
  print(sets.difference(part)); // {三, 四, 五}
  print(sets);
}