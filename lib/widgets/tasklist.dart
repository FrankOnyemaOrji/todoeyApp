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
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallBack: () {
              taskData.delectTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
