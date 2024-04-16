import 'package:flutter/material.dart';
import 'package:todo_app_full_stack/repository/AuthRepo/AuthRepo.dart';
import 'package:todo_app_full_stack/res/routes/RoutesNames.dart';
import 'package:todo_app_full_stack/utils/Utils.dart';

class SignupViewModel with ChangeNotifier {
  final repo = AuthRepo();
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  // Register Api Hit
  Future<void> registerApi(
    TextEditingController nameController,
    TextEditingController emailController,
    TextEditingController passwordController,
    BuildContext context,
  ) async {
    try {
      if (nameController.text.isEmpty ||
          emailController.text.isEmpty ||
          passwordController.text.isEmpty) {
        Utils.displaySnackBar(context, 'Enter All the Required Feilds');
      } else {
        setLoading(true);
        Map data = {
          "name": nameController.text,
          "email": emailController.text,
          "password": passwordController.text,
        };
        repo.registerApi(data).then((value) {
          Utils.displaySnackBar(context, 'Account Created Successfully');
          Navigator.popAndPushNamed(context, RoutesNames.loginScreen);
        }).onError((error, stackTrace) {
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
