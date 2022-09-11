// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        borderRadius : BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
        )
        ),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text('Add Task', style:TextStyle(color: Colors.lightBlueAccent, fontSize: 14 ),),
            SizedBox(height:8),
            TextField(
              autofocus:true;
              
            )
          ],
        ),
      ),
    );
  }
}
