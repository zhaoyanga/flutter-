import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset("assets/images/3.0x/img_5.png",fit: BoxFit.cover,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("userName"),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
              child: Row(
                crossAxisAlignment:CrossAxisAlignment.start, // 底部对齐
                verticalDirection:VerticalDirection.up,
                children: [
                  Text("抽奖"),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("0",style: TextStyle(
                        fontSize: 18,
                      ),),
                      Text("中奖次数")
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text("0",style: TextStyle(
                        fontSize: 18,
                      ),),
                      Text("抽奖次数")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}