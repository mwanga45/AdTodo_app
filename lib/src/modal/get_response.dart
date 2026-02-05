class Getresponse {
   final String date;
   final String title;

   Getresponse({
    required this.title,
    required this.date,
   });

   factory Getresponse.fromJson(Map<String, dynamic>json){
    return Getresponse(date: json['date'], title: json['title']);
   }
}