import "package:flutter/material.dart";
import './time_record.dart';

class RecordPanel extends StatelessWidget { // 记录面板构建的逻辑
  final List<TimeRecord> record; // 接收一个时间数组
  // 1.EdgeInsets 填充 2.symmetric 对称方向的填充 3.vertical 代表top和buttom 4.horizontal代表left和right
  final EdgeInsets itemPadding = const EdgeInsets.symmetric(horizontal: 20, vertical: 4);

  RecordPanel({
    super.key,
    required this.record
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      // 想当于 padding-top:20
      padding: const EdgeInsets.only( top: 20), // 设置于某个方向的填充
      /*
      * 如果固定列表长度可以使用 children
      * ListView(children)
      * 使用 builder 是动态构建列表，适合列表项比较多或者列表项不确定的情况
      * */
      child: ListView.builder( // 可滚动组件
          itemBuilder: _buildItemByIndex,
          itemCount: record.length, // 列表的数量，为 null 则无限列表
      ),
    );
  }

  Widget _buildItemByIndex(BuildContext context, int index) {
    int reverseIndex = (record.length - 1) - index; // 反转索引,作用：因为需要倒序显示
    bool lightIndex = reverseIndex == record.length - 1; // 是否是最后一个元素
    Color themeColor = Theme.of(context).primaryColor;
    Color? indexColor = lightIndex ? themeColor : null; // 最新的才有颜色

    return Row(
      children: [
        Padding(
          padding: itemPadding,
          // child: Text(index.toString().padLeft(2, '0')), // 两位，不够前面补 0
          child: Text(
              reverseIndex.toString().padLeft(2, '0'),
              style: TextStyle( // 设置文件样式
                color: indexColor
              ),
          ),
        ),
        Text(durationToString(record[reverseIndex].record)), // 当前时刻
        const Spacer(), // 弹簧，使两个间的距离最大
        Padding(
            padding: itemPadding,
            child: Text("+" + durationToString(record[reverseIndex].addition)) // 与上一刻差值
        ),
      ],
    );

  }
}

String durationToString(Duration duration) {
  int minus = duration.inMinutes % 60; // 分钟
  int second = duration.inSeconds % 60; // 秒
  int milliseconds = duration.inMilliseconds % 1000; // 毫秒
  String commonStr = '${minus.toString().padLeft(2,"0")}:${second.toString().padLeft(2,"0")}';
  String highlightStr = ".${(milliseconds ~/ 10).toString().padLeft(2, "0")}";
  return commonStr + highlightStr;
}