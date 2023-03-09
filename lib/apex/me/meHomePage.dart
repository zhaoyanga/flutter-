import 'package:flutter/material.dart';
import './userInfo.dart';
class meHomePage extends StatelessWidget {
  meHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("个人中心",
          style: TextStyle(
            color: Colors.black
          ),),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Color(0xEDEDEDED),
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
            children: [
              Positioned(
                top: 0,
                child: Image.asset("assets/images/3.0x/img_6.png"),
                height: 240,
              ),
              Positioned(
                  top: 150,
                  left: 16,
                  right: 16,
                  child: UserInfo()
              )
            ],
          ),
        ),
      ),
    );
  }
}
