import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("设置",style:TextStyle(
            color: Colors.black,
            fontSize: 16
        )),
        // 导航栏最左侧，返回按钮
        leading: const BackButton(color: Colors.black),
        elevation: 0,
      ),
      body: Column(
        children: [
          buildColorItem(context)
        ],
      ),
    );
  }

  Widget buildColorItem(BuildContext context) {
    return ListTile(
      onTap:() => _selectColor(context) , // 单击
      title:const Text("选择主题色"),
      subtitle:const Text("秒表界面的高亮为主题色"),
      trailing: Container(
        width: 24,
        height: 24,
        // 背景装饰
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).primaryColor
        ),
      ),
    );
  }
}

_selectColor(BuildContext context) {
}