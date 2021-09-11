import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_todo_app/view_model/home_page_view_model.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(todoListProvider);
    final viewModel = watch(todoListProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Todo App'),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {{{}}
        return const ListTile();
      }),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
      ));
  }
}
