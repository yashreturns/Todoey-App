import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_tile_widget.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.task[index];
              return TasksTile(
                taskName: task.name,
                isChecked: task.isDone,
                onPressed: (newValue) {
                  taskData.updateTask(task);
                },
                onDelete: () {
                  print(task.name);
                  taskData.delete(index);
                },
              );
            },
            itemCount: taskData.taskCount);
      },
    );
  }
}
