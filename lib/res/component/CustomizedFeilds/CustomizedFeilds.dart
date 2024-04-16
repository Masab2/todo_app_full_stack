import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';

// ignore: must_be_immutable
class CustomizedFeild extends StatelessWidget {
  String? title;
  String? hint;
  Widget? sufixIcon;
  Widget? prefixIcon;
  bool? obscuretext = false;
  VoidCallback? onchanged;
  TextEditingController controller;
  int maxlines;
  CustomizedFeild(
      {super.key,
      this.title,
      this.onchanged,
      required this.controller,
      this.hint,
      this.sufixIcon,
      this.prefixIcon,
      this.maxlines = 1,
      this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title ?? "",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                color: AppColor.whiteColor,
              ),
            )
          ],
        ),
        0.01.ph(context),
        Container(
          padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.whiteColor.withOpacity(0.13),
              border: Border.all(color: AppColor.btnColor, width: 0.3)),
          child: TextFormField(
            controller: controller,
            obscureText: obscuretext ?? false,
            maxLines: maxlines,
             style: const TextStyle(color: AppColor.whiteColor),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              prefixIcon: prefixIcon,
              suffixIcon: sufixIcon,
              suffixIconColor: AppColor.btnColor,
              prefixIconColor: AppColor.btnColor,
            ),
          ),
        ),
      ],
    );
  }
}
