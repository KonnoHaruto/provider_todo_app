import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/home_page_view_model.dart';

class CreateTodoPage extends ConsumerWidget {
  const CreateTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final viewModel = watch(todoListProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('タスクを作成'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 300,
              height: 60,
              child: TextField(
                controller: viewModel.textEditingController,
              ),
            ),
            ElevatedButton(onPressed: () {
              viewModel.createTodo(viewModel.textEditingController.text);
              viewModel.textEditingController.clear();
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
            ),
            child: const Text('タスクを追加'),
            ),
          ],
        ),
      ),
    );
  }
}
