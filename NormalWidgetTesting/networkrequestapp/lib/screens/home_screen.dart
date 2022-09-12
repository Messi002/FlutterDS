// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flut_app/controller/todo_controller.dart';
import 'package:flut_app/models/todo.dart';
import 'package:flut_app/repository/todo_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/sockets/src/sockets_io.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

//dependency injection
  var todoController = TodoController(TodoRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rest API')),
      body: FutureBuilder<List<Todo>>(
        future: todoController.fetchTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionStatus.connected) {
            return GetSnackBar(title: 'Title', message: 'hello',snackPosition: SnackPosition.TOP,);
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          }
          return ListView.separated(
            itemBuilder: (context, index) {
              return Container();
            },
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 0.5,
                height: 0.5,
              );
            },
            itemCount: snapshot.data?.length ?? 0,
          );
        },
      ),
    );
  }
}
