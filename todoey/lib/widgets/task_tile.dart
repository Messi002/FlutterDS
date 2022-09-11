import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Building something'),
      trailing: Checkbox(
          value: _value,
          onChanged: (newValue) {
            setState(() {
             _value = newValue;
            });
          }),
    );
  }
}