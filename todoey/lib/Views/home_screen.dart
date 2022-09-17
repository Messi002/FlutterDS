// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoey/Screens/task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text('${mediaQuery.devicePixelRatio}')),
          Center(child: Text('${mediaQuery.size.height}')),
          Center(child: Text('${mediaQuery.size.width}')),
          
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TasksScreen()));
              },
              child: Text('Hello'))
        ],
      ),
    );
  }
}
