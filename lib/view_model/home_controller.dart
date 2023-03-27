import 'dart:developer';

import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../model/todo.dart';

class HomeController extends GetxController {
  List<Todo> todos = [];

  Future<void> getTodos() async {
    Stopwatch stopwatch = Stopwatch()..start();
    final response =
        await GetConnect().get('https://jsonplaceholder.typicode.com/todos');
    todos = response.body.map<Todo>((json) => Todo.fromJson(json)).toList();
    update();
   log('getTodos() took ${stopwatch.elapsed}');
  }

  @override
  void onInit() {
    super.onInit();
    getTodos();
  }
}
