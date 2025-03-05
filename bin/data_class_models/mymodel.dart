import 'package:freezed_annotation/freezed_annotation.dart';
part 'mymodel.freezed.dart';
part 'mymodel.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String name,
    required String author,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}