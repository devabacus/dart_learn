import 'dart:async';

void main(List<String> args) async {
  // final stream = getStream();
  // stream.forEach(print);

  // final streamFromList = getStreamFromList();
  // streamFromList.forEach(print);

  // final stream2 = Stream<String>.fromFuture(futureTask());

  // stream2.listen(print, onDone: () => print('Закончили'), onError: print);

  final stream = getNewStream();
  stream.forEach(print);
}

Stream<int> getNewStream() async* {
  yield 500000000;
  yield* getStream();
  yield* getStream2();
}

Stream<int> getStream() {
  return Stream<int>.periodic(
    const Duration(seconds: 1),
    (count) => count * count,
  ).take(5);
}

Stream<int> getStream2() {
  return Stream<int>.periodic(
    const Duration(seconds: 1),
    (count) => count * 100,
  ).take(5);
}

Stream<int> getStreamFromList() {
  return Stream.fromIterable([1, 2, 3, 4, 5]);
}

Future<String> futureTask() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Future complete';
}
