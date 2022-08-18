import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello',
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(109, 234, 255, 1),
          colorScheme: const ColorScheme.light(
            secondary: Color.fromRGBO(72, 74, 126, 1),
          )),
      home: const TimerPage(),
    );
  }
}

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello World"
        ),
      ),
    );
  }
}
