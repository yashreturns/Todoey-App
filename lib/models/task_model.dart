import 'package:flutter/cupertino.dart';

class Task {
  String name;
  bool isDone;

  Task({@required this.name, this.isDone = false});

  void changeCheckBoxState() {
    isDone = !isDone;
  }
}
