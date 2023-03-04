class TimeRecord { // 每一条的记录
  final Duration record; // 当前时刻
  final Duration addition; // 与上一刻差值

  TimeRecord({
    required this.record,
    required this.addition
  });
}