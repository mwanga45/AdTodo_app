class Getresponse {
   final String message;
   final bool success;

   Getresponse({
    required this.message,
    required this.success,
   });

   factory Getresponse.fromJson(Map<String, dynamic>json){
    return Getresponse(message: json['message'], success: json['success']);
   }
}