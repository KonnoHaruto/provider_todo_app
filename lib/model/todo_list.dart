import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider_todo_app/model/todo_model.dart';

part 'todo_list.freezed.dart';

@freezed
class TodoList with _$TodoList {
  const factory TodoList({
    @Default(<TodoModel>[]) List<TodoModel> todolist,
  }) = _TodoList;
}
