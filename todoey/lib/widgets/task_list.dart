import 'package:flutter/material.dart';

import 'package:todoey/widgets/task_tile.dart';

import '../Model/task_model.dart';

class TaskList extends StatelessWidget {
  List<Task> task = [
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy eggs'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[TaskTile(), TaskTile()],
    );
  }
}
