import 'package:flutter/material.dart';

class encyclopediasHomePage extends StatefulWidget {
  const encyclopediasHomePage({super.key});

  @override
  State<encyclopediasHomePage> createState() => _encyclopediasHomePage();
}

class _encyclopediasHomePage extends State<encyclopediasHomePage> with SingleTickerProviderStateMixin{
  // 选项卡1控制器
  late TabController _tabController;

  //  初始化滑动器
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    print(_tabController);
    return Scaffold(
      backgroundColor: Color(0xEDEDEDED),
      appBar: AppBar(
        backgroundColor: Color(0xEDEDEDED),
        elevation: 0,
        title: Center(
          child: Text("英雄小百科",style: TextStyle(
              color: Colors.black
          ),),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 241,
            child: Image.asset("assets/images/encyclopediasImage/encyclopediasTitleImg.png"),
          ),
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: "传奇"),
              Tab(text: "枪械"),
              Tab(text: "地图")
            ],
            indicatorColor: Colors.black,
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 16.0,
            ),
            unselectedLabelColor: Color(0x3C3C3C3c),
            unselectedLabelStyle: TextStyle(
              fontSize: 14.0,
            ),
          ),
          Container(
              child: TabViewPage(),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}

class TabViewPage extends StatefulWidget {
  const TabViewPage({super.key});

  @override
  State<TabViewPage> createState() => _TabViewPage();
}

class _TabViewPage extends State<TabViewPage> with SingleTickerProviderStateMixin{
  // 选项卡2控制器
  late TabController _tabController2;

  //  初始化滑动器
  @override
  void initState() {
    super.initState();
    _tabController2 = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: _tabController2,
        tabs: [
          Tab(text: "传奇"),
          Tab(text: "枪械"),
          Tab(text: "地图")
        ],
        indicatorColor: Colors.black,
        indicatorWeight: 3,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Colors.black,
        labelStyle: TextStyle(
          fontSize: 16.0,
        ),
        unselectedLabelColor: Color(0x3C3C3C3c),
        unselectedLabelStyle: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController2.dispose();
  }
}

