import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import './stopwatch_widget.dart';
import './button_tools.dart';
import './time_record.dart';
import './record_panel.dart';
import './setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Duration _duration = Duration.zero; // 0:00:00.000000
  late Ticker _ticker;
  List<TimeRecord> _record = []; // 列表
  Duration _secondDuration = Duration.zero; // 与上一刻记录的差值

  @override
  void initState() {
    super.initState();
    _ticker = Ticker(_onTick);
  }

  Duration dt = Duration.zero; // 已经过去的时间
  Duration lastDuration = Duration.zero; // 上次时间

  void _onTick(Duration elapsed) { // 计算时间
    setState(() {
      // 经过的时间 - 上一次的时间 = 过去的时间
      dt = elapsed - lastDuration;
      // 显示的时间 = 显示的时间 + 过去的时间
      _duration += dt;
      // 让上一次时间等于当前时间
      lastDuration = elapsed;
    });
  }

  @override
  void dispose() { // 销毁
    _ticker.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // 加阴影
        actions: buildActions(), // 右上角图标
      ),
      body: Column(
        children: [
          buildStopwatchPanel(context),
          buildRecordPanel(),
          buildTools(),
        ],
      ),
    );
  }

  // 秒表轮盘
  Widget buildStopwatchPanel(BuildContext context) {
    // MediaQuery.of(context) 包含了屏幕的信息
    // MediaQuery.of(context).size 可以获取屏幕的尺寸  ),
    double radius = MediaQuery.of(context).size.shortestSide/2*0.75;
    return StopwatchWidget( // 使用 StopwatchWidget
      radius: radius,
      duration: _duration,
      secondDuration:_secondDuration,
    );
  }

  StopWatchType _type = StopWatchType.none; // 定义变量，后面好修改
  Widget buildTools() {
    return BuildTools(
        state:_type,
        onReset:onReset,
        toggle:toggle,
        onRecoder:onRecoder
    );
  }

  void onReset() {
    setState(() {
      _duration = Duration.zero; // 初始化
      _type = StopWatchType.none; // 初始态
      _record.clear(); // 清空列表
      _secondDuration = Duration.zero;
    });
  }

  void toggle() {
    bool running = _type == StopWatchType.running;
    if(running){ // 暂停的时候
      _ticker.stop(); // 暂停执行
      lastDuration = Duration.zero; // 上次时间初始化
    }else{ // 开始的时候
      _ticker.start(); // 开始执行
    }

    if(_record.isNotEmpty) { // 如果不为空，显示和上一次记录的时间差值
      _secondDuration = _duration - _record.last.record;
    }

    setState(() {
      _type = running ? StopWatchType.stopped : StopWatchType.running;
    });
  }

  void onRecoder() {
    Duration record = _duration; // 当前时刻
    Duration addition = _duration; // 与上一课的插值
    if(_record.isNotEmpty) { // 如果不为空，则插值是本次时刻 - 上次记录的时刻
      addition = _duration - _record.last.record;
    }
    setState(() {
      _record.add(TimeRecord(record:record,addition:addition));
    });
  }

  // 中间的位置
  Widget buildRecordPanel() {
    // Expanded的父结点必须是Column，Row，Flex以及它们的子组件，
    // 不能是Column->Container->Expanded
    // 填充剩余空间
    return Expanded(
      child: RecordPanel( // 记录面板构建的逻辑
        record: _record // 接收的列表,
      )
    );
  }

  // 右上角图标弹出框
  List<Widget> buildActions() {
    return [
      PopupMenuButton<String>(
        itemBuilder: _buildItem, // 内容的显示
        onSelected: _onSelectItem, // 点击内容触发的
        icon: const Icon(Icons.more_vert_outlined,color: Color(0xff262626)), // 按钮图标颜色
        position: PopupMenuPosition.under, // 弹窗位置
        shape: const RoundedRectangleBorder( // 设置弹窗形状
            borderRadius: BorderRadius.all(Radius.circular(10)) // 设置四边圆角
        ),
      )
    ];
  }

  // 弹窗内容
  List<PopupMenuEntry<String>> _buildItem(BuildContext context) {
    return const [
      PopupMenuItem<String>(
          value: "设置", // 传给onSelected函数的值
          child:Center(child: Text("设置"))
      ),
      PopupMenuItem<String>(
          value: "测试", // 传给onSelected函数的值
          child:Center(child: Text("测试"))
      )
    ];
  }

  // 点击弹窗内容触发
  void _onSelectItem(String value) {
    if(value == "设置") {
      // 跳转页面
      Navigator.of(context).push(MaterialPageRoute(builder:(_) => const SettingPage()));
    }
  }
}
