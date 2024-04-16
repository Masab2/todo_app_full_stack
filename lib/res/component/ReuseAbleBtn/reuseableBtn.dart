import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';

class ReuseAbleBtn extends StatelessWidget {
  final Color? btnColor;
  final BoxBorder? border;
  final String title;
  final VoidCallback ontap;
  const ReuseAbleBtn(
      {super.key, this.btnColor, this.border, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: context.mh * 0.06,
        width: context.mw * 0.90,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(10),
          border: border,
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.lato(
              fontSize: context.mh * 0.018,
              color: AppColor.whiteColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
