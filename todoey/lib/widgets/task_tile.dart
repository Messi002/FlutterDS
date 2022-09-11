import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  bool? _value = false;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Building something'),
      trailing: Checkbox(
          value: widget._value,
          onChanged: (newValue) {
            setState(() {
             widget._value = newValue;
            });
          }),
    );
  }
}