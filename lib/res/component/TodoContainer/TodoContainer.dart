import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/Utils.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';

class TodoContainer extends StatelessWidget {
  final String title, date, description;
  const TodoContainer(
      {super.key,
      required this.title,
      required this.date,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mh * 0.10,
      margin: EdgeInsets.symmetric(
        horizontal: context.mw * 0.03,
        vertical: context.mh * 0.01,
      ),
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
      decoration: BoxDecoration(
        color: AppColor.boxColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            child: Icon(
              Icons.work,
              color: AppColor.btnColor,
            ),
          ),
          0.04.pw(context),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.lato(
                      fontSize: context.mh * 0.018,
                      color: AppColor.searchBorderColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    description,
                    style: GoogleFonts.lato(
                      fontSize: context.mh * 0.012,
                      color: AppColor.searchBorderColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        Utils.formattedDate(date),
                        style: GoogleFonts.lato(
                          fontSize: context.mh * 0.012,
                          color: AppColor.searchBorderColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
