
dart pub add freezed_annotation
dart pub add dev:build_runner
dart pub add dev:freezed
# if using freezed to generate fromJson/toJson, also add:
dart pub add json_annotation
dart pub add dev:json_serializable

dart run build_runner watch -d