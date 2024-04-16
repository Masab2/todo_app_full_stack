import 'dart:io';
import 'package:todo_app_full_stack/data/Network/NetworkApiServices.dart';
import 'package:todo_app_full_stack/utils/AppUrl/AppUrl.dart';

import '../../data/Network/BaseApiServices.dart';

class AuthRepo {
  final BaseApi _api = NetworkApiServices();

  // Register Api handel
  Future<dynamic> registerApi(dynamic data) async {
    try {
      dynamic response = await _api.getPostApiServies(AppUrl.registerUrl, data);
      return response;
    } on SocketException {
      throw Exception('Error Occured');
    }
  }

  // Login Api handel
  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response = await _api.getPostApiServies(AppUrl.loginUrl, data);
      return response;
    } on SocketException {
      throw Exception('Error Occured');
    }
  }
}
