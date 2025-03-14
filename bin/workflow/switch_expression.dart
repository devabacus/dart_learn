void main(List<String> args) {
  final mvar1 = 6;
  var result = switch (mvar1) {
    1 => 'один',
    2 => 'два',
    3 => 'три',
    _ => 'другое число',
  };

  print(result);


  final mvar2 = 2;

  print(switch (mvar2) {
    1 => 'один',
    2 => 'два',
    3 => 'три',
    _ => 'другое число',
  });
}
