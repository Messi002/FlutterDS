import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskTile extends StatefulWidget {
  bool _value = false;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Building something', style:TextStyle(
        decoration: widget._value ? TextDecoration.lineThrough : null,
      ) ),
      trailing: Checkbox(
          value: widget._value,
          onChanged: (newValue) {
            setState(() {
             widget._value = newValue!;
            });
          }),
    );
  }
}