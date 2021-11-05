import 'package:flutter/foundation.dart';
import 'package:todoapp/exports/exports.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy Eggs', isDone: false),
    Task(name: 'Buy Bread', isDone: false),
  ];
  int get taskCount {
    return tasks.length;
  }

  // UnmodifiableListView<Task> get tasks {
  //   return UnmodifiableListView(_tasks);
  // }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle, isDone: false);
    tasks.add(task);
    notifyListeners();
  }
}
