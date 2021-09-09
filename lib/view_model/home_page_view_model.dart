import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_todo_app/model/todo_list.dart';
import 'package:provider_todo_app/model/todo_model.dart';

final todoListProvider = StateNotifierProvider<TodoListViewModel, TodoList>(
  (ref) => TodoListViewModel(),
);

class TodoListViewModel extends StateNotifier<TodoList> {
  TodoListViewModel() : super(const TodoList());

  //メソッドを定義ーー作成・編集・削除

  void createTodo(String content) {
// ToDoモデルを宣言
// id/text
    final todo = TodoModel(id: state.todoList.length + 1, content: content);
    final newList = [
      todo,
      ...state.todoList,
    ];
    //状態を更新
    state = state.copyWith(todoList: newList);
  }

  void updateTodo() {
// ToDo 処理を記述
  }

  void deleteTodo() {
// ToDo 処理を記述
  }
}
