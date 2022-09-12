import 'dart:convert';

import 'package:flut_app/models/todo.dart';
import 'package:flut_app/repository/repository.dart';
import 'package:http/http.dart' as http;

class TodoRepository implements Repository {
  String dataURL = 'https://jsonplaceholder.typicode.com';

  @override
  Future<String> deletedTodo(Todo todo) {
    // TODO: implement deletedTodo
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTodoList() async {
    var url = Uri.parse('$dataURL/todos');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Todo>((json) => Todo.fromJson(json)).toList();
    } else {
      throw Exception('Failed Load Todos');
    }

    // List<Todo> todoList = [];
    //var body = json.decode(response.body);
    //for(var i =0; i < body.length; i++){
    //todoList.add(Todo.fromJson(body[i]));
    //}
    // return todoList;
  }

//patch --> Modify passed variables only.
  @override
  Future<String> patchCompleted(Todo todo) async {
    var url = Uri.parse('$dataURL/todos/${todo.id}');
    //call back data
    String resData = "";
    //bool? => String
    await http.patch(
      url,
      body: {
        'completed': (!todo.completed).toString(),
      },
      headers: {'Authorization': 'your_token'},
    ).then((response) {
      //homescreen => data
      Map<String, dynamic> result = json.decode(response.body);
      return resData = result['completed'];
    });

    return resData;
  }

  @override
  Future<String> postTodo(Todo todo) {
    // TODO: implement postTodo
    throw UnimplementedError();
  }

//Modify passed variables only and treat other variables NULL or Default
  @override
  Future<String> putCompleted(Todo todo) async{
    var url = Uri.parse('$dataURL/todos/${todo.id}');
    //call back data
    String resData = "";
    //bool? => String
    await http.put(
      url,
      body: {
        'completed': (!todo.completed).toString(),
      },
      headers: {'Authorization': 'your_token'},
    ).then((response) {
      //homescreen => data
      Map<String, dynamic> result = json.decode(response.body);
      print(result);
      return resData = result['completed'];
    });

    return resData;
  }
}
