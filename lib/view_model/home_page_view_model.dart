import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_todo_app/model/todo_list.dart';

final todoListProvider = StateNotifierProvider<TodoListViewModel, TodoList>(
  (ref) => TodoListViewModel(),
);

class TodoListViewModel extends StateNotifier<TodoList> {
  TodoListViewModel() : super(const TodoList());

  //メソッドを定義ーー作成・編集・削除

  void createTodo() {
// ToDo 処理を記述
  }

  void updateTodo() {
// ToDo 処理を記述
  }

  void deleteTodo() {
// ToDo 処理を記述
  }
}
