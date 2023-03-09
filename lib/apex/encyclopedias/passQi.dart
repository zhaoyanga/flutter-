import 'package:flutter/material.dart';

class TabBarListView extends StatefulWidget {
  TabController tabController;
  Map fatherTabs;
  TabBarListView({super.key,required this.tabController,required this.fatherTabs});

  @override
  State<TabBarListView> createState() => _TabBarListView();
}

class _TabBarListView extends State<TabBarListView> {
  List tabViews = [];
  Map tabViewsChildren = {};

  Widget build(BuildContext context) {
    List<Widget> list = widget.fatherTabs.values.toList().asMap().keys.map(tabItemBuild).toList();
    return TabBarView(
        physics: NeverScrollableScrollPhysics(), // 禁止左右滑动！
        controller: widget.tabController,
        children: list,
    );
  }

  Widget tabItemBuild(int index) {
    tabViews = widget.fatherTabs.values.toList()[index];
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 0,bottom:20,left: 17,right: 17) ,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 23,
              runSpacing: 10,
              // alignment:  WrapAlignment.spaceBetween,
              children:tabViews.asMap().keys.map(contentItem).toList(),
            ),
          ),
        )
    );
  }

  Widget contentItem(int index) {
    tabViewsChildren = tabViews[index];
    return Container(
      width: 110,
      child: Padding(
          padding: const EdgeInsets.only( top: 0),
          child: Column(
            children: [
              Image.asset(tabViewsChildren['img']!,width: 110,),
              Text(tabViewsChildren['name']!),
              Text(tabViewsChildren['context']!,style: TextStyle(
                fontSize: 10,
              ))
            ]
          )
      ),
    );
  }
}