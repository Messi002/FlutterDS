import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
   AppLargeText(
      {super.key,
      this.color = Colors.black,
      this.size = 30.0,
      required this.text});

  String text;
  final Color color;
  double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: TextStyle(color: color,fontSize: size,fontWeight: FontWeight.bold),
    );
  }
}
