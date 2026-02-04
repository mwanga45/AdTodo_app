
import 'package:todo_api/core/services/api_client.dart';

class TodoListService{
  final Apiclient  apiclient;

   TodoListService(this.apiclient);

  Future<List<TodoInfo>> FetchTodolist() async{
    await  apiclient.dio.get("/todoinfo");
  }

}