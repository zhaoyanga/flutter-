main() {
  // 创建 Map映射(键值对) <xxx,xxx>可不写
 Map<String,String> map = {
   '键':'值',
   'name':'雷学林',
   'age':'23'
 };
 // 可以通过 [key] 来访问值，通过 [key]= 来 修改 值，如果 key 不存在，则会添加
 print(map['name']); // 雷学林
 map['age'] = '18';
 print(map['age']); // 18
 map['a'] = 'b'; // {键: 值, name: 雷学林, age: 18, a: b}

 // 移除元素通过 remove('key')
 map.remove('a');
 print(map); // {键: 值, name: 雷学林, age: 18}
}