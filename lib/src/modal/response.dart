class GetResponse {
  final String message;
  final bool successfuly;

  GetResponse({
    required this.message,
    required this.successfuly
  });
  factory GetResponse.fromJson(Map<String , dynamic>json){
    return GetResponse(message: json['message'], successfuly: json['successfuly']);
  }
}