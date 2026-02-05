import 'package:todo_api/core/services/api_client.dart';
import 'package:todo_api/src/modal/generic_response.dart';


class TodoListService {
  final Apiclient apiclient;

  TodoListService(this.apiclient);

  Future<List<GenericResponse>> fetchtodoinfo() async {
    final response = await apiclient.dio.get("/getlist");
    return (response.data as List).map((e) => GenericResponse.fromJson(e)).toList();
  }
  Future<List<GenericResponse>> createtodo() async{
    final response  = await apiclient.dio.get("/create-todo");

    final apiResponse =  GenericResponse<List<





    
  }
}
