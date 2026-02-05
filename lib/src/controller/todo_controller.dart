import 'package:flutter/material.dart';
import 'package:todo_api/core/services/app_wide.dart';
// import 'package:todo_api/src/modal/generic_response.dart';
import 'package:todo_api/src/modal/get_response.dart';


class TodoController extends ChangeNotifier {
  final TodoListService todoListService;
  // create constructor

  TodoController(this.todoListService);
  // create an  variable 
  bool _loading = false;
  String _message = "";
  List<Getresponse> _todo = [];

  // Public getter (Read-only)
  bool get loading => _loading;
  String  get message => _message;
  List<Getresponse> get todo => _todo;

  Future<void> createtodo()async{
    _loading = true;
    notifyListeners();
    try {
      final response =  await todoListService.createtodo();
      if(response.success){
        _message = response.message;
        _todo =  response.data ?? [];

      }
      
    } catch (e) {
      _message = "Something went wrong";
      
    }finally{
      _loading = false;
      notifyListeners();
    }
  }


}