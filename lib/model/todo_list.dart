import 'package:freezed_annotation/freezed_annotation.dart';
import 'todo_model.dart';

part 'todo_list.freezed.dart';

@freezed
class TodoList with _$TodoList {
  const factory TodoList({
    @Default(<TodoModel>[]) List<TodoModel> todoList,
  }) = _TodoList;
}
