import 'package:todo_api/core/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:todo_api/core/services/local_storage.dart';



class Apiclient {
  final  LocalStorage localStorage;
  final Dio dio;

  Apiclient(this.localStorage)
  :dio = Dio(
    BaseOptions(
      baseUrl:ApiConstants.baseUrl ,
      connectTimeout: Duration(seconds: 15),
      receiveTimeout: Duration(seconds: 15),
      headers: {
        "constant-type":"application/json",
      }

      )
  ){
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler)async {
          final token = localStorage.getToken();
          if(token != null){
            options.headers["Authorization"] = "Baerer $token";
          }
          handler.next(options);
        }),
      );
    
  }

}