import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/todo_model.dart';
import '../view_model/home_page_view_model.dart';

class UpdateTodoPage extends ConsumerWidget {
  const UpdateTodoPage({Key? key, required this.data}) : super(key: key);
  final TodoModel data;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final viewModel = watch(todoListProvider.notifier);
    final textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('タスクを編集'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 280,
              height: 59,
              child: TextField(
                controller: textEditingController,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                viewModel.updateTodo(data.id, textEditingController.text);
                textEditingController.clear();
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
              ),
              child: const Text('変更を適用'),
            ),
          ],
        ),
      ),
    );
  }
}
