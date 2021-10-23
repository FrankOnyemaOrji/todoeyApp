// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a Task',
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(isChecked, (bool checkBoxState) {
        setState(() {
          isChecked = checkBoxState;
        });
      }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool) toggleCheckBoxState;
  TaskCheckBox(this.checkBoxState, this.toggleCheckBoxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: (newName) => toggleCheckBoxState(newName!),
    );
  }
}
