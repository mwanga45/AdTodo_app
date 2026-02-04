
import 'package:dio/dio.dart';
import 'package:todo_api/core/services/api_client.dart';
import 'package:todo_api/src/modal/todo_info.dart';

class TodoListService{
  final Apiclient  apiclient;

   TodoListService(this.apiclient);

 Future <List<TodoInfo>> fetchtodoinfo()async{
  final response = await apiclient.dio.get("/getlist");
  return (response.data as List).map((e)=> TodoInfo.Json(e)).toList();

 }

}