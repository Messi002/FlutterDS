class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  Map<String, dynamic> toJson() => {
        'userId': userId.toString(),
        'id': id.toString(),
        'title': title,
        'completed': completed.toString(),
      };
}
