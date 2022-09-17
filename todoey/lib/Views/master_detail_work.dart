import 'package:flutter/material.dart';

class DetailWidget extends StatefulWidget {
 DetailWidget({super.key, required this.data, });

  final int data;


  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Column(
        
      )),
    );
  }
}
