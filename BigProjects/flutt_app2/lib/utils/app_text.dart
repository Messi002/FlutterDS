import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
   AppText(
      {super.key,
      this.color = Colors.black54,
      this.size = 16.0,
      required this.text});

  String text;
  final Color color;
  double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: TextStyle(color: color,fontSize: size,),
    );
  }
}
