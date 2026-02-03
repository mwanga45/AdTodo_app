import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        leading: Icon(Icons.circle_notifications_rounded, color: const Color.fromARGB(255, 134, 134, 134), size: 30,),
        title: Text("Advanced todoApp", style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 217, 217, 218), fontWeight:FontWeight.bold),),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        color: Colors.white24,
        child: MainContent(),
      ),
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
      ba
      child: Row(
        children: [
          
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey
            ),
          )
        ],
      ),
    );
  }
}
