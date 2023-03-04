import 'package:flutter/material.dart';
import './home_page.dart';
void main() {
  runApp(StopwatchApp());
}

class StopwatchApp extends StatelessWidget {
  StopwatchApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false, // 去除右上角debug标签
      home:const HomePage(),
    );
  }
}
