import 'package:flutter_demo_mvc/models/Todo.dart';
import 'package:flutter_demo_mvc/repository/repository.dart';

class TodoController {
  // 다형성 활용
  final Repository _repository;

  TodoController(this._repository);

  // 컨트롤러는 함수 기능을 만들어 주면 된다.

  // get Todo List
  Future<List<Todo>> fetchTodoList() async {
    return _repository.getTodoList();
  }

  Future<String> updatePatchCompleted(Todo todo) async {
    return _repository.patchCompleted(todo);
  }
  Future<String> postTodoData(Todo todo) async {
    return _repository.postTode(todo);
  }

  Future<String> delTodo(todo) {
    return _repository.deletedTodo(todo);
  }
}
