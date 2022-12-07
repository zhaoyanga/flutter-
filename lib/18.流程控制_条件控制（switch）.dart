main() {
  String result = getLightStatus(TrafficLightStatus.blue);
  print(result); // 信号灯故障，请注意
  print(TrafficLightStatus.blue.index); // 3

  // [TrafficLightStatus.red, TrafficLightStatus.yellow, TrafficLightStatus.green, TrafficLightStatus.blue]
  print(TrafficLightStatus.values);

  print(getStatus('1')); // 110
}
// 枚举,从0开始计算
enum TrafficLightStatus {
  red,yellow,green,blue
}

String getLightStatus(TrafficLightStatus status) {
  String result = '';
  switch(status) {
    case TrafficLightStatus.red: // case 后只能是常量值
      result = '红灯，禁止通行';
      break;
    case TrafficLightStatus.green:
      result = '绿灯，允许通行';
      break;
    case TrafficLightStatus.yellow:
      result = '黄灯，请稍后通行';
      break;
    case TrafficLightStatus.blue:
      result = '信号灯故障，请注意';
      break;
  }
  return result;
}

String getStatus(String status) {
  switch(status) {
    case '1':
      return '110';
    case '2':
      return '120';
  }
  return 'name';
}