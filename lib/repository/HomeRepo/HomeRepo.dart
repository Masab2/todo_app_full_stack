import 'package:todo_app_full_stack/data/Network/BaseApiServices.dart';
import 'package:todo_app_full_stack/data/Network/NetworkApiServices.dart';
import 'package:todo_app_full_stack/models/TodoModel/Todo_List_Model.dart';
import 'package:todo_app_full_stack/utils/AppUrl/AppUrl.dart';

class HomeRepo {
  final BaseApi _api = NetworkApiServices();

  Future<TodoListModel> fetchAllTodos(userId) async {
    dynamic response = await _api.getGetApiServies(AppUrl.getTodoUrl(userId));
    return TodoListModel.fromJson(response);
  }
}
