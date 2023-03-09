import 'package:flutter/material.dart';
import './tabViews.dart';

class encyclopediasHomePage extends StatefulWidget {
  const encyclopediasHomePage({super.key});

  @override
  State<encyclopediasHomePage> createState() => _encyclopediasHomePage();
}

class _encyclopediasHomePage extends State<encyclopediasHomePage> {
  List tabList = [
    {
      'id':1,
      "name":"传奇"
    },
    {
      'id':2,
      "name":"枪械"
    },
    {
      'id':3,
      "name":"地图"
    }
  ];
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
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
            // height: 241,
            child: Image.asset("assets/images/3.0x/encyclopediasTitleImg.png"),
          ),
          // TabViewPage(tabList: tabList,tabListChange: tabListChange,),
          TabViewPage(tabList: tabList),
          // Expanded(child: TabViewPage(tabList: tabs[tabIndex].toList(),view:true,key:UniqueKey(),)),
          // TabViewPage(tabList: tabs[tabIndex].toList(),view:true,key:UniqueKey(),)
        ],
      ),
    );
  }
}

