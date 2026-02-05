import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_api/src/controller/todo_controller.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoController>(
      builder: (context, controller, _) {
        // 1️⃣ Loading state
        if (controller.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        // 2️⃣ Message from backend
        if (controller.message != "") {
          return Text(
            controller.message!,
            style: const TextStyle(color: Colors.green),
          );
        }

        // 3️⃣ Empty state
        if (controller.todo.isEmpty) {
          return const Text("No todos yet");
        }

        // 4️⃣ Render todos
        return Expanded(
          child: ListView.builder(
            itemCount: controller.todo.length,
            itemBuilder: (context, index) {
              final todo = controller.todo[index];
              return ListTile(
                title: Text(todo.title),
              );
            },
          ),
        );
      },
    );
  }
}
