// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_full_stack/models/UserModel/UserModel.dart';
import 'package:todo_app_full_stack/repository/AuthRepo/AuthRepo.dart';
import 'package:todo_app_full_stack/res/routes/RoutesNames.dart';
import 'package:todo_app_full_stack/utils/Utils.dart';
import 'package:todo_app_full_stack/viewModel/UserViewModel/UserViewModel.dart';

class LoginViewModel with ChangeNotifier {
  final repo = AuthRepo();
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  // Login Api Hit
  Future<void> loginApi(
    TextEditingController emailController,
    TextEditingController passwordController,
    BuildContext context,
  ) async {
    try {
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        Utils.displaySnackBar(context, 'Enter All the Required Feilds');
      } else {
        setLoading(true);
        Map data = {
          "email": emailController.text,
          "password": passwordController.text,
        };
        await repo.loginApi(data).then((value) {
          log(value['token'].toString());
          log(value['Id'].toString());
          final userPreference =
              Provider.of<UserViewModel>(context, listen: false);
          userPreference.saveUser(
            UserModel(
              token: value['token'].toString(),
            ),
          );
          Utils.displaySnackBar(context, 'Login Successfully');
          UserModel model = UserModel.fromJson(value);
          Navigator.popAndPushNamed(
            context,
            RoutesNames.homeScreen,
            arguments: model,
          );
        }).onError((error, stackTrace) {
          log(error.toString());
          Utils.displaySnackBar(context, error.toString());
        });
      }
    } catch (e) {
      Utils.displaySnackBar(context, e.toString());
    } finally {
      setLoading(false);
    }
  }
}
