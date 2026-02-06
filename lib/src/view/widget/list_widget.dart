import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_api/src/controller/todo_controller.dart';
import 'package:todo_api/src/view/widget/todo_bar.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoController>(
      builder:(context,controller,_){
        if(controller.loading){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
       if(controller.todo.isEmpty){
        return Center(
          child: Text("No todo Available ", style: TextStyle(fontSize: 30, color: Colors.black12, fontWeight: FontWeight.bold),),
        );
       }
      return ListView.builder(
        itemCount: controller.todo.length,
        itemBuilder: (context, index) {
         final todo = controller.todo[index];
         return Listbar(date: todo.date, title: todo.title);
        }
      );

      });
  
  }
}