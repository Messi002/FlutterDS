import 'package:flut_app/constants.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    required this.widget, required this.color, required this.bordercolor, required this.bgcolor,
  });

  final Widget widget;
  final Color color;
  final Color bordercolor;
  final Color bgcolor;
  double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: AppColors.buttonBackground,
          borderRadius: BorderRadius.circular(15)),
      child: widget,
    );
  }
}
