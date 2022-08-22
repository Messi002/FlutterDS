import 'package:flut_app/constants.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    this.widget, required this.color, required this.bordercolor, required this.bgcolor,
  });

  final Widget? widget;
  final Color color;
  final Color bordercolor;
  final Color bgcolor;
  double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: bordercolor,
        ),
          color: bgcolor,
          borderRadius: BorderRadius.circular(15)),
      child: widget,
    );
  }
}
