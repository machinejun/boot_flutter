import 'dart:convert';

import 'package:flutter_demo_mvc/models/Todo.dart';
import 'package:flutter_demo_mvc/repository/repository.dart';
import 'package:http/http.dart' as http;

class TodoRepository implements Repository {
  String dataUrl = "https://jsonplaceholder.typicode.com";

  Map<String, String>? header = {
    'Content-type': 'application/json; charset=UTF-8'
  };

  @override
  Future<String> deletedTodo(Todo todo) {
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTodoList() async {
    List<Todo> todoList = [];
    var url = Uri.parse('$dataUrl/todos');
    var response = await http.get(url);

    var body = json.decode(response.body);

    for (var i = 0; i < body.length; i++) {
      todoList.add(Todo.fromJson(body[i]));
    }
    return todoList;
  }

  @override
  Future<String> patchCompleted(Todo todo) async {
    var httpsUri = Uri.parse('$dataUrl/posts/${todo.id}');
    String resData = 'error';
    await http.patch(httpsUri,
        body: {'completed': (todo.completed!).toString()}).then((response) {
      print("responsebody : ${response.body}");
      Map<String, dynamic> result = json.decode(response.body);
      resData = result['title'];
    });

    return resData;
  }

  @override
  Future<String> postTode(Todo todo) async {
    var httpsUri = Uri.parse('$dataUrl/posts');
    String resData = "error";
    await http.post(httpsUri, 
      body: {
        "title": todo.title,
        "body": "bar",
        "userId": todo.userId ?? 0
    }).then((value) {
      print("post response : ${value.body}");
      Map<String, dynamic> result = json.decode(value.body);
      resData = result.toString();
    });
    return resData;
  }

  @override
  Future<String> putComplete(Todo todo) async {
    return todo.toString();
  }
}
