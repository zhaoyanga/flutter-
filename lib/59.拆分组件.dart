import 'package:flutter/material.dart';
import './line_num_shower.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget { // StatelessWidget 无状态控件，属性不能改变，所有的值都是最终的，无状态Widget影响的仅仅是自己是无状态的，不会影响他的父Widget和子Widget
  const MyApp({super.key});
  // This widget is the root of your application. 这个小部件是应用程序的根
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( // 这是应用程序的主题
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'xxxx'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> list = [1, 0, 0, 100,0, 1, 0, 100,0, 0, 1, 0,0, 0, 0, 1];
  void addList4() {
    setState(() {
      list[3] += 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _buildContent(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addList4,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildContent() {
    return MatrixShower(list: list);
  }

}
