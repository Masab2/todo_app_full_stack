import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app_full_stack/repository/CreateTodoRepo/CreateTodoRepo.dart';
import 'package:todo_app_full_stack/utils/Utils.dart';

class CreateTodoViewModel with ChangeNotifier {
  final createTodoRepo = CreateTodoRepo();
  var pickedDate = DateTime.now();
  void setDate(BuildContext context) async {
    DateTime? newPickedDate = await showDatePicker(
      context: context,
      initialDate: pickedDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(3000),
    );
    pickedDate = newPickedDate!;
    notifyListeners();
  }

  Future<void> createTodoApi(
    TextEditingController title,
    TextEditingController description,
    String userId,
    String date,
    BuildContext context,
  ) async {
    try {
      Map<String, dynamic> data = {
        "userId": userId,
        "title": title.text,
        "description": description.text,
        "date": pickedDate.toIso8601String(),
      };
      createTodoRepo.createTodoApi(data).then((value) {
        log(value.toString());
        Utils.displaySnackBar(context, 'Todo Created Successfully');
        title.clear();
        description.clear();
        Navigator.pop(context);
        notifyListeners();
      }).onError((error, stackTrace) {
        log(error.toString());
        Utils.displaySnackBar(context, error.toString());
      });
      
    } catch (e) {
      log('Catch Error: ${e.toString()}');
      Utils.displaySnackBar(context, e.toString());
    }
  }
}
