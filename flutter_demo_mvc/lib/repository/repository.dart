import 'package:flutter_demo_mvc/models/Todo.dart';

abstract class Repository {
  Future<List<Todo>> getTodoList();

  Future<String> putComplete(Todo todo);

  Future<String> deletedTodo(Todo todo);

  Future<String> postTode(Todo todo);

  Future<String> patchCompleted(Todo todo);

  /*
  

  */
}
