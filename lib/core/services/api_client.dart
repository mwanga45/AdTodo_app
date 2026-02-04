import 'package:todo_api/core/constants/api_constants.dart';
import 'package:dio/dio.dart';



class Apiclient {
  final Dio dio;

  Apiclient()
  :dio = Dio(
    BaseOptions(
      baseUrl:ApiConstants.baseUrl ,
      connectTimeout: Duration(seconds: 15),
      receiveTimeout: Duration(seconds: 15),
      headers: {
        "constant-type":"application/json",
      }

      )
  );

}