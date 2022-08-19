import 'package:flutter/material.dart';


class Input extends StatelessWidget {
   final String hintText;
  final Function(String)? onSubmit;
  final TextEditingController? controller;

  const RoundedInput({
    this.controller,
    required this.hintText,
    this.onSubmit,
  });
  @override
  Widget build(BuildContext context) {
    
  }
}