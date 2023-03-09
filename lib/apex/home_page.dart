import 'package:flutter/material.dart';
import './encyclopedias/encyclopediasHomePage.dart';
import './shop/shopHomePage.dart';
import './headline/headlineHomePage.dart';
import './me/meHomePage.dart';
import './bottom_button/bottom_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BottomItem> tabList = [
    BottomItem(icon:"assets/images/encyclopedias.png",
        activeIcon:"assets/images/encyclopedias_active.png",
        label:"百科",
        width:23),
    BottomItem(icon:"assets/images/shop.png",
        activeIcon:"assets/images/shop_active.png",
        label:"商店",
        width:23),
    BottomItem(icon:"assets/images/headline.png",
        activeIcon:"assets/images/headline_active.png",
        label:"头条",
        width:23),
    BottomItem(icon:"assets/images/me.png",
        activeIcon:"assets/images/me_active.png",
        label:"我的",
        width:23),
  ];
  int tabBarIndex = 0;
  List<Widget> homePageList = [
    encyclopediasHomePage(),
    shopHomePage(),
    headlineHomePage(),
    meHomePage()
  ];

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     body: homePageList[tabBarIndex],
    //     bottomNavigationBar: BottomButton(tabBarIndex:tabBarIndex,tabBarTap:tabBarTap,buttonList:tabList),
    // );
    return Scaffold(
      body: IndexedStack( // 切换时保持状态
        children: homePageList,
        index: tabBarIndex
      ),
      bottomNavigationBar: BottomButton(tabBarIndex:tabBarIndex,tabBarTap:tabBarTap,buttonList:tabList),
    );
  }

  void tabBarTap(value) {
    setState(() {
      tabBarIndex = value;
    });
  }
}