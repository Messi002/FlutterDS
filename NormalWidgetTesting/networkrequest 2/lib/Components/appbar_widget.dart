import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget{
  final String title;
  AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
  
  @override
  Size get preferredSize => Size.fromHeight(50.0);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      
    );
  }
}
