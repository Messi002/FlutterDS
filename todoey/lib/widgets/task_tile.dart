import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);
  final _value = false;
  final bool? newValue = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Building something'),
      trailing: Checkbox(
          value: _value,
          onChanged: (bool? newValue) {
            setState(() {
             _value = newValue!;
            });
          }),
    );
  }
}