class TodoInfo {
  final String title;
  final int id;
  final bool completed;

  TodoInfo({
    required this.completed,
    required    this.id,
    required this.title
  });

  factory TodoInfo.fromJson(Map<String, dynamic>json){
    return TodoInfo(completed: json['completed'], id: json['id'], title: json['title']);
  }

}