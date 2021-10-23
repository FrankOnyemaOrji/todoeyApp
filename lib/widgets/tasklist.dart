// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todoapp/exports/exports.dart';

class TaskLIst extends StatefulWidget {
  @override
  State<TaskLIst> createState() => _TaskLIstState();
}

class _TaskLIstState extends State<TaskLIst> {
  List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [TaskTile(), TaskTile(), TaskTile()],
    );
  }
}
