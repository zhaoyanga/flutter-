import 'package:flutter/material.dart';
import './passQi.dart';

class TapViewChildren extends StatefulWidget {
  List tabList; // tab的名称数组
  String id;
  Map propsData; // 接收的数据
  TapViewChildren({super.key,required this.tabList,required this.id,required this.propsData});
  @override
  State<TapViewChildren> createState() => _TapViewChildren();
}

class _TapViewChildren extends State<TapViewChildren> with SingleTickerProviderStateMixin {
  // 选项卡控制器
  late TabController _tabController;
  // 子组件数据
  Map childList = {};
  // 输入框默认值
  late TextEditingController _controller;
  // 输入框的值
  String inputValue = '';
  // 是否有内容
  bool isValue = false;
  // 当前tab点击的哪个下标
  int tabIndex = 0;
  //  初始化滑动器
  @override
  void initState() {
    super.initState();
    childList = copyWithList(widget.propsData.values.map((e) => e).toList()).asMap();
    _tabController = TabController(length: widget.tabList.length, vsync: this);
    _controller = new TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: TabBar(
              onTap: changeTab,
              isScrollable: true,
              labelPadding:const EdgeInsets.symmetric(horizontal: 20),
              controller: _tabController,
              tabs: widget.tabList.asMap().keys.map(_buildTabItem).toList(),
              indicatorColor: Colors.black,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 16.0,
              ),
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          Container(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
              child: TextField(
                cursorColor: Colors.black, // 光标颜色
                controller: _controller, // 初始内容控制器
                decoration: InputDecoration(
                  contentPadding:EdgeInsets.only(top: 0, bottom: 0,left: 8), // 文字边距
                  hintText: "关键词搜索",
                  prefixIcon: Icon(Icons.search,color:Colors.black),
                  suffixIcon:isValue ? IconButton(
                    icon: Icon(Icons.clear,color:Colors.black),
                    onPressed: iconTap,
                  ) : null,
                  // 聚焦的样式
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  // 普通的样式
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide(
                      color: Color(0x3C3C3C3c),
                      width: 1.0,
                    ),
                  ),
                ),
                onSubmitted: inputChange, // 点击键盘的完成
                onChanged:(v) { // 输入触发
                  setState(() {
                    isValue = v.length > 0;
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only( top: 8),
              child: TabBarListView(tabController: _tabController,fatherTabs:childList,key: UniqueKey(),),
            ),
          ),
        ]
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _controller.dispose();
  }
  // 遍历tab
  Widget _buildTabItem(int index) {
    return Tab(
        text: widget.tabList[index]
    );
  }
  // 切换tab栏
  void changeTab(int index) {
    tabIndex = index;
    _controller.clear();
    setState(() {
      isValue = false;
      childList[tabIndex].removeRange(0,childList[tabIndex].length);
      childList[tabIndex].addAll(widget.propsData[tabIndex]);
    });
  }

  // 输入框点击回车
  void inputChange(String value) {
    // inputValue = value;
    inputValue = "亡灵";
    if(value.length > 0) {
      setState(() {
        List searchList = widget.propsData[tabIndex].asMap().values.map((e) {
          if(e['name'].contains(inputValue)) {
            return e;
          }
        }).toList();
        searchList.removeWhere((e) => e == null);
        childList[tabIndex].removeRange(0,childList[tabIndex].length);
        childList[tabIndex].addAll(searchList);
      });
    }
  }

  // 点击图标
  void iconTap() {
    if(isValue) {
      _controller.clear();
      setState(() {
        isValue = false;
        childList[tabIndex].removeRange(0,childList[tabIndex].length);
        childList[tabIndex].addAll(widget.propsData[tabIndex]);
      });
    }
  }


  /// 数组拷贝
  List copyWithList(List list) {
    List copyList = [];
    for (var item in list) {
      if (item is Map) {
        copyList.add(Map.from(item));
      } else if (item is List) {
        copyList.add(copyWithList(item));
      } else {
        copyList.add(item);
      }
    }
    return copyList;
  }
}