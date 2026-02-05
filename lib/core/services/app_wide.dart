import 'package:todo_api/core/services/api_client.dart';
import 'package:todo_api/src/modal/generic_response.dart';
import 'package:todo_api/src/modal/get_response.dart';


class TodoListService {
  final Apiclient apiclient;

  TodoListService(this.apiclient);

  Future<GenericResponse<List<Getresponse>>> fetchtodoinfo() async {
    final response = await apiclient.dio.get("/getlist");
    final apiResponse = GenericResponse<List<Getresponse>>.fromJson(
      response.data , (data) => (data as List).map((e)=> Getresponse.fromJson(e as Map<String, dynamic>)).toList()
    );
    return apiResponse;
       
  }
  Future<GenericResponse<List <Getresponse>>> createtodo() async{
    final response  = await apiclient.dio.post("/create-todo");

    final apiResponse =  GenericResponse<List<Getresponse>>.fromJson(
      response.data, (data) => (data as List).map((e)=> Getresponse.fromJson(e as Map<String, dynamic>)).toList(),
    );

    return apiResponse;
    
    
  }
}
