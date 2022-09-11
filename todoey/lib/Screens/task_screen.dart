// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top: 60.0, left: 30, right: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30.0,
                child: Icon(
                  Icons.list,
                  size: 30,
                  color: Colors.black,
                )),
            SizedBox(height: 10.0),
            Text(
              'Todoey',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 50.0,
                color: Colors.white,
              ),
            ),
            Text('12 Tasks', style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),),
            Container(
              
            ),
          ],
        ),
      ),
    );
  }
}
