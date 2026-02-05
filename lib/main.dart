import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_api/core/services/api_client.dart';
import 'package:todo_api/core/services/app_wide.dart';
import 'package:todo_api/core/services/local_storage.dart';
import 'package:todo_api/src/controller/todo_controller.dart';
import 'package:todo_api/src/view/widget/list_widget.dart';

void main() {
  final localstorage = LocalStorage();
  final apiclient = Apiclient(localstorage);
  final todolistserv = TodoListService(apiclient);
  final todocontroller = TodoController(todolistserv);
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => todocontroller)],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 46, 112),
        centerTitle: true,
        leading: Icon(
          Icons.circle_notifications_rounded,
          color: const Color.fromARGB(255, 134, 134, 134),
          size: 30,
        ),
        title: Text(
          "Advanced todoApp",
          style: TextStyle(
            fontSize: 30,
            color: const Color.fromARGB(255, 217, 217, 218),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: TodoList()
    );
  }
}

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(10),

      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
