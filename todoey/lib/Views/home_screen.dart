// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoey/Screens/task_screen.dart';
import 'package:flutter/foundation.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Color> colors = [Colors.red, Colors.blue, Colors.purple, Colors.teal];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxHeight < 500 || constraints.maxWidth > 500) {
          return Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(4, (index) {
                return Expanded(
                    child: Container(
                  color: colors[index],
                  child: Center(
                    child: Text(
                      '$index',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ));
              }),
            ),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(4, (index) {
            return Expanded(
                child: Container(
              color: colors[index],
              child: Center(
                child: Text(
                  '$index',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ));
          }),
        );
      }),
    );
  }
}


// Center(
          //     child: Text('devicePixelRatio: ${mediaQuery.devicePixelRatio}')),
          // Center(child: Text('height: ${mediaQuery.size.height}')),
          // Center(child: Text('width: ${mediaQuery.size.width}')),
          // Center(child: Text('width: $locale')),
          // Center(
          //     child: Text(
          //         'platfomr: ${defaultTargetPlatform == TargetPlatform.linux}')),
          // Center(child: Text('Again: $defaultTargetPlatform')),
          // Semantics(
          //   button: true,
          //   label: 'This is just a semantic test button',
          //   child: ElevatedButton(
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 fullscreenDialog: true,
          //                 builder: (context) => TasksScreen()));
          //       },
          //       child: Text('Hello')),
          // ),
