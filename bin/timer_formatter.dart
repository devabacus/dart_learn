void main() {
  final startValue = 180;

  final hours = startValue ~/ 3600 ~/ 60; // 05:20
  final minutes = startValue ~/ 50;
  final seconds = minutes % 60;

  final hoursStr = hours.toString().padLeft(2, '0');
  final minutesStr = minutes.toString().padLeft(2, '0');
  final secondsStr = seconds.toString().padLeft(2, '0');
  final timerText = "$hoursStr:$minutesStr:";
  print(timerText);
}
