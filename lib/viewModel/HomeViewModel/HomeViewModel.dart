import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app_full_stack/data/Response/ApiResponse.dart';
import 'package:todo_app_full_stack/models/TodoModel/Todo_List_Model.dart';
import 'package:todo_app_full_stack/repository/HomeRepo/HomeRepo.dart';

class HomeViewModel with ChangeNotifier {
  final HomeRepo _repo = HomeRepo();
  List todoList = ['Completed', 'InProgress'];
  String _selectedFilter = 'InProgress';
  ApiResponse<TodoListModel> apiResponse = ApiResponse.loading();

  setTodoList(ApiResponse<TodoListModel> response) {
    apiResponse = response;
    notifyListeners();
  }

  setselectedFilter(String filter) {
    _selectedFilter = filter;
    notifyListeners();
  }

  String get selectedFilter => _selectedFilter;

  Future<void> fetchAllTodoList(userId) async {
    log('Helllo Loading');
    setTodoList(ApiResponse.loading());
    _repo.fetchAllTodos(userId).then((value) {
      log('Hloo');
      setTodoList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setTodoList(ApiResponse.error(error.toString()));
    });
  }
}
