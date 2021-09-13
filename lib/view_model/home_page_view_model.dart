import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_todo_app/model/todo_list.dart';
import 'package:provider_todo_app/model/todo_model.dart';

final todoListProvider = StateNotifierProvider<TodoListViewModel, TodoList>(
  (ref) => TodoListViewModel(),
);

class TodoListViewModel extends StateNotifier<TodoList> {
  TodoListViewModel() : super(const TodoList());


//メソッドを定義ーー作成・編集・削除
//作成
  void createTodo(String content) {
    final todo = TodoModel(id: state.todoList.length + 1, content: content);
    final newList = [
      todo,
      ...state.todoList,
    ];
    //状態を更新
    state = state.copyWith(todoList: newList);
  }

//編集
  void updateTodo(int id, String content) {
    final updatedList = state.todoList
        .map((todo) => todo.id == id ? TodoModel(content: content) : todo)
        .toList();
    //状態を更新
    state = state.copyWith(todoList: updatedList);
  }

//削除
  void deleteTodo(int id) {
    final deletedList = state.todoList.where((todo) => todo.id != id).toList();
    state = state.copyWith(todoList: deletedList);
  }
}
