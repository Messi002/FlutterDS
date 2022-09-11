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
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 35),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 22),
              ),
              SizedBox(height: 8),
              TextField(
                autofocus: true,
              ),
              SizedBox(height: 10),
              RawMaterialButton(
                onPressed: null,
                constraints:
                    BoxConstraints(minWidth: double.infinity, minHeight: 35),
                fillColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
                child: Text('Add', softWrap: true, style: TextStyle(color: Colors.white,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
