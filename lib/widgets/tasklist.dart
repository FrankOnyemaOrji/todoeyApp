// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/tasktile.dart';
import 'package:todoapp/exports/exports.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
