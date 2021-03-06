import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function onPressed;
  final Function onDelete;

  TasksTile({this.taskName, this.isChecked, this.onPressed, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onDelete,
      title: Text(
        taskName,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: onPressed,
      ),
    );
  }
}
