import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_full_stack/res/component/ReuseAbleBtn/reuseableBtn.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:intl/intl.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';
import 'package:todo_app_full_stack/viewModel/CreateTodoViewModel/CreateTodoViewModel.dart';

class Utils {
  static void displaySnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: GoogleFonts.lato(color: AppColor.whiteColor),
        ),
        backgroundColor: AppColor.btnColor,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(10),
        duration: const Duration(seconds: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        showCloseIcon: true,
      ),
    );
  }

  static String dateFormated(var date) {
    DateTime dateTime = DateTime.parse(date);
    return DateFormat('MMMM:dd:yyyy').format(dateTime).toString();
  }

  static String formattedDate(String dateString) {
    DateTime dateTime = DateTime.parse(dateString);
    String formatted = DateFormat('MM/dd/yyyy HH:mm').format(dateTime);
    return formatted;
  }

  // Add Task Bottom Sheet
  static void showAddTaskBottomSheet(BuildContext context, VoidCallback ontap,
      TextEditingController title, TextEditingController description) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColor.backgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Add Task',
                        style: GoogleFonts.lato(
                          fontSize: context.mh * 0.033,
                          fontWeight: FontWeight.bold,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                    0.04.ph(context),
                    TextField(
                      controller: title,
                      style: TextStyle(
                        color: AppColor.whiteColor.withOpacity(0.43),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter your task',
                        hintStyle: TextStyle(
                          color: AppColor.whiteColor.withOpacity(0.23),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColor.btnColor), // Set the border color
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.btnColor
                                  .withOpacity(0.5)), // Set the border color
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    0.014.ph(context),
                    TextField(
                      maxLines: 4,
                      controller: description,
                      style: TextStyle(
                        color: AppColor.whiteColor.withOpacity(0.43),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Task Description',
                        hintStyle: TextStyle(
                          color: AppColor.whiteColor.withOpacity(0.23),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColor.btnColor), // Set the border color
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.btnColor.withOpacity(0.5),
                          ), // Set the border color
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    0.014.ph(context),
                    Consumer<CreateTodoViewModel>(
                      builder: (context, value, child) {
                        return Row(
                          children: [
                            IconButton.outlined(
                              onPressed: () {
                                value.setDate(context);
                              },
                              icon: const Icon(
                                Icons.date_range_outlined,
                                color: AppColor.btnColor,
                              ),
                            ),
                            0.03.pw(context),
                            Text(
                              Utils.dateFormated(value.pickedDate.toString()),
                              style: GoogleFonts.lato(
                                color: AppColor.whiteColor,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    0.03.ph(context),
                    Row(
                      children: [
                        Expanded(
                            child: ReuseAbleBtn(
                          title: 'Add Task',
                          ontap: ontap,
                          btnColor: AppColor.btnColor,
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ));
  }
}
