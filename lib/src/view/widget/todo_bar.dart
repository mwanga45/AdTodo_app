import 'package:flutter/material.dart';

class Listbar extends StatelessWidget {

  // const Listbar({super.key});
  final String title;
  final String date;
   
  Listbar({
    super.key,
    required this.date,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.list, size:32,color: Colors.white,),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(date, style: TextStyle(color: const Color.fromARGB(255, 244, 8, 8), fontSize: 18, fontWeight: FontWeight.bold),),
            ],
          ),

        ),
      ),
    );
  }
}