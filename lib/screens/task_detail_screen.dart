import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskDetailScreen extends StatelessWidget {
  final Task task;
  const TaskDetailScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detalles de la tarea")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Título:",
                style: Theme.of(context).textTheme.titleLarge),
            Text(task.title, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Text("Descripción:",
                style: Theme.of(context).textTheme.titleLarge),
            Text(task.description, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text("Estado: "),
                Icon(
                  task.completed
                      ? Icons.check_circle
                      : Icons.radio_button_unchecked,
                  color: task.completed ? Colors.green : Colors.grey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
