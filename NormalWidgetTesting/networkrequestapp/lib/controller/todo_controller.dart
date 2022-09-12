import 'package:flut_app/models/todo.dart';
import 'package:flut_app/repository/repository.dart';

class TodoController {
  final Repository _repository;
  TodoController(this._repository);

  //get
  Future<List<Todo>> fetchTodoList() async {
    return _repository.getTodoList();
  }
}
