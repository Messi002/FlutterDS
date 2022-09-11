import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding:EdgeInsets.only(top:60.0,left:30,right:30, bottom:30),
        child: Column(
          children: <Widget>[
            Icon(Icons.list),
            Text('Todoey')
          ],
        ),
      ),
    );
  }
}
