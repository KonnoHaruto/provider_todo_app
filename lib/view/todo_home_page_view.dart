
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/home_page_view_model.dart';
import 'todo_create_page_view.dart';
import 'todo_update_page_view.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(todoListProvider);
    final viewModel = watch(todoListProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Todo App'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemCount: state.todoList.length,
        itemBuilder: (BuildContext context, int index) {
          final data = state.todoList[index];
          return ListTile(
            title: Text(data.content),
            onTap: () {
              Navigator.push<Widget>(
                context,
                MaterialPageRoute(
                  builder: (context) => 
                  UpdateTodoPage(data: data),
                ),
              );
            },
            trailing: IconButton(
              onPressed: () {
                viewModel.deleteTodo(data.id);
              },
              icon: const Icon(Icons.check_box_outline_blank),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.push<Widget>(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateTodoPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
