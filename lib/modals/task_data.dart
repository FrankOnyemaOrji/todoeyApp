import 'package:flutter/foundation.dart';
import 'package:todoapp/exports/exports.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy Eggs', isDone: false),
    Task(name: 'Buy Bread', isDone: false),
  ];
  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  String newTaskTitle = "";
  void onChanged(String? newValue) {
    newTaskTitle = newValue!;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void addTask() {
    final tasks = Task(name: newTaskTitle, isDone: false);
    _tasks.add(tasks);
    notifyListeners();
  }

  void delectTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
