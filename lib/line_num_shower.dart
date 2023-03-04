import 'package:flutter/material.dart';

class MatrixShower extends StatelessWidget {
  final List<num> list;

  const MatrixShower({super.key,required this.list});

  List<Widget> buildLines () {
    List<Widget> result = [];
    final int count = list.length ~/ 4;
    for(int i = 0; i < count; i++) {
      List<num> nums = [list[i * 4 + 0],list[i * 4 + 1],list[i * 4 + 2],list[i * 4 + 3]];
      result.add(LineNumShower(nums:nums));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: buildLines()
    );
  }
}

class LineNumShower extends StatelessWidget {
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
