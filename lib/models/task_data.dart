import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task_model.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Veggies'),
    Task(name: 'Buy Fruits'),
    Task(name: 'Buy Car'),
  ];

  UnmodifiableListView get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void newTask(String taskName) {
    _task.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.changeCheckBoxState();
    notifyListeners();
  }

  void delete(int taskPos) {
    _task.removeAt(taskPos);
    notifyListeners();
  }
}
