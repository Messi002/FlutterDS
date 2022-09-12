import 'package:flut_app/controller/todo_controller.dart';
import 'package:flut_app/repository/todo_repository.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

//dependency injection
  var todoController = TodoController(TodoRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rest API')),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                todoController.fetchTodoList();
              },
              child: Text('Fetch')),
        ),
      ),
    );
  }
}
