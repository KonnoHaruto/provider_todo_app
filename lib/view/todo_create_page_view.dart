import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_todo_app/view_model/home_page_view_model.dart';

class CreateTodoPage extends ConsumerWidget {
  const CreateTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final viewModel = watch(todoListProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Todo Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          // mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: viewModel.textEditingController,
            ),
            ElevatedButton(onPressed: () {
              viewModel.createTodo(viewModel.textEditingController.text);
              viewModel.textEditingController.clear();
              Navigator.pop(context);
            },
            child: const Text('Create Todo'),
            ),
          ],
        ),
      ),
    );
  }
}
