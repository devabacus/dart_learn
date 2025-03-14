void main(List<String> args) {
  // useInSwitch(SimpleEnum.value3);
  useInSwitchExpression(SimpleEnum.value1);


}

enum SimpleEnum { value1, value2, value3 }
void useInSwitch(SimpleEnum val) {
  switch (val) {
    case SimpleEnum.value1:
      print("Значение value1");
      break;
    case SimpleEnum.value2:
      print("Значение value2");
      break;
    case SimpleEnum.value3:
      print("Значение value3");
      break;
  }
}
void useInSwitchExpression(SimpleEnum val){
    return switch (val) {
      SimpleEnum.value1 => print("Значение value1"),
      SimpleEnum.value2 => print("Значение value2"),
      SimpleEnum.value3 => print("Значение value3"),
    };
}



