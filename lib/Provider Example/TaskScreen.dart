import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modal.dart';


class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final taskList = context.watch<TaskList>();

    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: Column(
        children: [
          Text("data"),
          ListView.builder(
            shrinkWrap: true,
            itemCount: taskList.tasks.length,
            itemBuilder: (context, index) {
              final task = taskList.tasks[index];
              return ListTile(
                title: Text(
                  task.title,
                  style: TextStyle(
                    decoration: task.isCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
                trailing: Checkbox(
                  value: task.isCompleted,
                  onChanged: (value) {
                    taskList.toggleTaskStatus(index);
                  },
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  taskList.addTask(value);
                }
              },
              decoration: InputDecoration(
                labelText: 'Add a Task',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                taskList.addTask(_controller.text);
                _controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}



