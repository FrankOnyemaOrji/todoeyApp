// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String? taskTitle;
  final Function(bool?)? checkboxCallback;
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle!,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ));
  }
}
