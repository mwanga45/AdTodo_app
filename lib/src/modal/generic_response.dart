// handle full response from the backend 
class GenericResponse<T> {
  final String  message;
  final bool    success;
  final bool? confirm;
  final T? data;


  GenericResponse({
    required this.message,
    required this.success,
    this.data,
    this.confirm
  });
  
  factory GenericResponse.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJsonT){
    return GenericResponse<T>(
      success:json['success'] as bool,
      message: json['message'] as String,
      confirm: json['confirm'] as bool,
      data: json['data'] != null ? fromJsonT(json['data']):null,
    );
  }
}