// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoey/Screens/add_task_screen.dart';

import '../widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Icon(
                        Icons.list,
                        size: 30,
                        color: Colors.black,
                      )),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 50.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20)),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
