

import 'package:flut_app/models/todo.dart';
import 'package:flut_app/repository/repository.dart';

class TodoRepository implements Repository{
  @override
  Future<String> deletedTodo(Todo todo) {
    // TODO: implement deletedTodo
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTodoList() {
    // TODO: implement getTodoList
    throw UnimplementedError();
  }

  @override
  Future<String> patchCompleted(Todo todo) {
    // TODO: implement patchCompleted
    throw UnimplementedError();
  }

  @override
  Future<String> postTodo(Todo todo) {
    // TODO: implement postTodo
    throw UnimplementedError();
  }

  @override
  Future<String> putCompleted(Todo todo) {
    // TODO: implement putCompleted
    throw UnimplementedError();
  }

}