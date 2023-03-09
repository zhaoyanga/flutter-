import 'package:flutter/material.dart';
import './line_panel.dart';
class headlineHomePage extends StatelessWidget {
  List<LinePanel> linePanel = [
    LinePanel(name:"《Apex英雄》2021年节日礼物指南",time: '2021-9-28',img: 'assets/images/3.0x/img_3.png'),
    LinePanel(name:"在攻略收集活动中玩冬季快车",time: '2021-9-28',img: 'assets/images/3.0x/img_4.png'),
    LinePanel(name:"市场在 APEX 推出新的传奇服装系列",time: '2021-9-28',img: 'assets/images/3.0x/img_5.png'),
    LinePanel(name:"《Apex英雄》2021年节日礼物指南",time: '2021-9-28',img: 'assets/images/3.0x/img_3.png'),
    LinePanel(name:"在攻略收集活动中玩冬季快车",time: '2021-9-28',img: 'assets/images/3.0x/img_4.png'),
    LinePanel(name:"市场在 APEX 推出新的传奇服装系列",time: '2021-9-28',img: 'assets/images/3.0x/img_5.png'),
    LinePanel(name:"《Apex英雄》2021年节日礼物指南",time: '2021-9-28',img: 'assets/images/3.0x/img_3.png'),
    LinePanel(name:"在攻略收集活动中玩冬季快车",time: '2021-9-28',img: 'assets/images/3.0x/img_4.png'),
    LinePanel(name:"市场在 APEX 推出新的传奇服装系列",time: '2021-9-28',img: 'assets/images/3.0x/img_5.png'),
    LinePanel(name:"《Apex英雄》2021年节日礼物指南",time: '2021-9-28',img: 'assets/images/3.0x/img_3.png'),
    LinePanel(name:"在攻略收集活动中玩冬季快车",time: '2021-9-28',img: 'assets/images/3.0x/img_4.png'),
    LinePanel(name:"市场在 APEX 推出新的传奇服装系列",time: '2021-9-28',img: 'assets/images/3.0x/img_5.png'),
    LinePanel(name:"《Apex英雄》2021年节日礼物指南",time: '2021-9-28',img: 'assets/images/3.0x/img_3.png'),
    LinePanel(name:"在攻略收集活动中玩冬季快车",time: '2021-9-28',img: 'assets/images/3.0x/img_4.png'),
    LinePanel(name:"市场在 APEX 推出新的传奇服装系列",time: '2021-9-28',img: 'assets/images/3.0x/img_5.png'),
  ];
  headlineHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text("头条",style: TextStyle(
            color: Colors.black,
          )),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemBuilder: itemBuilder,
        itemCount: linePanel.length,
      ),
    );
  }

  Widget itemBuilder(BuildContext context,int index) {
    String name = linePanel[index].name;
    String time = linePanel[index].time;
    String img = linePanel[index].img;
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(name,style: TextStyle(
                        fontWeight: FontWeight.w400
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,),
                    child: Text(time,style: TextStyle(
                        color: Color(0xAFAFAFAF)
                    ),),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Container(
                  child: Image.asset(img),
                ),
              )
          )
        ],
      ),
      decoration: UnderlineTabIndicator(
        borderSide: BorderSide(width: 1,color: Color(0xAFAFAFAF)),
        insets: const EdgeInsets.symmetric(horizontal: 24)
      ),
    );
  }
}
