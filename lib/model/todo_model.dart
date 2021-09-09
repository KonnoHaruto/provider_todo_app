import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    @Default(0) int id,
    @Default('') String content,
  }) = _TodoModel;
}
