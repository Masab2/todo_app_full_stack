import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_full_stack/utils/Assets/imageAsset.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';

class TodoEmpty extends StatelessWidget {
  const TodoEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        0.20.ph(context),
        Center(
          child: Image(
            image: const AssetImage(ImageAsset.checklist),
            height: context.mw * 0.5,
            width: context.mw * 0.5,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'What do you want to do today?',
                style: GoogleFonts.lato(
                    fontSize: context.mh * 0.018,
                    color: AppColor.whiteColor.withOpacity(0.43)),
              ),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Tap + to add your tasks',
                style: GoogleFonts.lato(
                  fontSize: context.mh * 0.015,
                  color: AppColor.whiteColor.withOpacity(0.43),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
