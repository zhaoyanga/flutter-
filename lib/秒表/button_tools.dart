import 'package:flutter/material.dart';

enum StopWatchType{
  none, // 初始态
  stopped, // 已停止
  running, // 运行中
}

class BuildTools extends StatelessWidget {
  final StopWatchType state;
  final VoidCallback onReset;
  final VoidCallback toggle;
  final VoidCallback onRecoder;
  const BuildTools({
    super.key,
    required this.state,
    required this.onReset,
    required this.toggle,
    required this.onRecoder
  });

  @override
  Widget build(BuildContext context) {
    bool running = state == StopWatchType.running;
    bool stopped = state == StopWatchType.stopped;
    Color activeColor = const Color(0xff3A3A3A);
    Color inactiveColor = const Color(0xffDDDDDD);
    Color resetColor = stopped ? activeColor : inactiveColor;
    Color flagColor = running ? activeColor : inactiveColor;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Wrap(
        crossAxisAlignment:WrapCrossAlignment.center,
        spacing: 50, // 间距
        children: [
          if(state != StopWatchType.none)
            GestureDetector( // 手势识别组件
              child: Icon(Icons.refresh,size: 28,color: resetColor), // 停止的时候颜色变化
              onTap: stopped ? onReset : null, // 点击回调
            ),
          FloatingActionButton( // 开始停止，特殊的按钮，悬浮按钮
            backgroundColor: Theme.of(context).primaryColor,
            child: running ? const Icon(Icons.stop) : const Icon(Icons.play_arrow),
            // child: running ? Text("暂停") : Text("开始") ,
            onPressed: toggle, // 点击事件
          ),
          if(state != StopWatchType.none)
            GestureDetector(
              child: Icon(Icons.flag_outlined,size: 28,color: flagColor), // 运行的时候颜色变化
              onTap: running ? onRecoder : null,
            ),
        ],
      ),
    );
  }
}