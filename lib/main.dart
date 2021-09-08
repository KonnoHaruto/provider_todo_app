import 'package:flutter/material.dart';
import 'package:provider_todo_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Todo App',
      home: MyHomePage(),
    );
  }
}
