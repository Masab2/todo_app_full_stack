import 'dart:io';

import 'package:todo_app_full_stack/data/Network/BaseApiServices.dart';
import 'package:todo_app_full_stack/data/Network/NetworkApiServices.dart';
import 'package:todo_app_full_stack/utils/AppUrl/AppUrl.dart';

class CreateTodoRepo {
  final BaseApi _api = NetworkApiServices();
  Future<dynamic> createTodoApi(dynamic data) async {
    try {
      dynamic response =
          await _api.getPostApiServies(AppUrl.createTodoUrl, data);
      return response;
    } on SocketException {
      throw Exception('Error Occured');
    }
  }
}
