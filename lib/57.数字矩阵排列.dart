import 'package:flutter/material.dart';

void main() {
  runApp(_buildContent());
}

Widget _buildContent() {
  return Column( // 从上往下
    children: [
      LineNumShower(nums: [1, 0, 0, 0]),
      LineNumShower(nums: [0, 1, 0, 0]),
      LineNumShower(nums: [0, 0, 1, 0]),
      LineNumShower(nums: [0, 0, 0, 1]),
    ],
  );
}

class LineNumShower extends StatelessWidget { // StatelessWidget 无状态控件
  final List<num> nums;
  const LineNumShower({Key? key,required this.nums}):super(key : key);
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr, // 从左往右排列
      mainAxisSize: MainAxisSize.min, // 根据内容大小撑开
      children: nums.asMap().keys.map(_buildItemByIndex).toList(), // 转成map，获取所有的下标，遍历，执行函数，传入当前遍历的值
    );
  }

  Widget _buildItemByIndex(int index) {
    // print(index); // 0，1，2，3
    bool last = index == nums.length - 1;
    String endFix = last ? "" : ","; // 如果当前的下标是最后一个，就不加 , 号
    return Text(textDirection: TextDirection.ltr,nums[index].toString() + endFix);
  }
}