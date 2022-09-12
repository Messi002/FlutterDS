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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Todo todo = Todo(userId: 3, id: 1, title: 'hello', completed: false);
          todoController.postTodo(todo).then((value) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            duration: const Duration(
                                                seconds: 1),
                                            content: Text('Created')));
                                  });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(title: Text('Rest API')),
      body: FutureBuilder<List<Todo>>(
        future: todoController.fetchTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          }
          return ListView.separated(
            itemBuilder: (context, index) {
              var todo = snapshot.data?[index];
              return Container(
                height: 100.0,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(flex: 1, child: Text('${todo?.id}')),
                    Expanded(flex: 2, child: Text('${todo?.title}')),
                    Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  todoController
                                      .updatePatchCompleted(todo!)
                                      .then((value) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            duration: const Duration(
                                                milliseconds: 400),
                                            content: Text(value)));
                                  });
                                },
                                child: buildCallContainer(
                                    text: 'patch', color: Colors.orange[700])),
                            InkWell(
                                onTap: () {
                                  todoController.updatePutCompleted(todo!);
                                },
                                child: buildCallContainer(
                                    text: 'put', color: Colors.teal[700])),
                            InkWell(
                                onTap: () {
                                  todoController
                                      .updateDelCompleted(todo!)
                                      .then((value) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            duration: const Duration(
                                                milliseconds: 400),
                                            content: Text(value)));
                                  });
                                },
                                child: buildCallContainer(
                                    text: 'del', color: Colors.red[700])),
                          ],
                        )),
                  ],
                ),
              );
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

class buildCallContainer extends StatelessWidget {
  final String text;
  final Color? color;
  buildCallContainer({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
      child: Center(child: Text(text)),
    );
  }
}
