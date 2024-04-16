import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_full_stack/res/component/ReuseAbleBtn/reuseableBtn.dart';
import 'package:todo_app_full_stack/res/routes/RoutesNames.dart';
import 'package:todo_app_full_stack/utils/Assets/imageAsset.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            0.16.ph(context),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Welcome to UpTodo',
                style: GoogleFonts.lato(
                  fontSize: context.mh * 0.033,
                  fontWeight: FontWeight.bold,
                  color: AppColor.whiteColor,
                ),
              ),
            ),
            0.02.ph(context),
            Column(
              children: [
                Text(
                  'Please login to your account or create ',
                  style: GoogleFonts.lato(
                    fontSize: context.mh * 0.014,
                    color: AppColor.whiteColor.withOpacity(0.29),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'new account to continue ',
                  style: GoogleFonts.lato(
                    fontSize: context.mh * 0.014,
                    color: AppColor.whiteColor.withOpacity(0.29),
                  ),
                ),
                0.06.ph(context),
                Image(
                  image: const AssetImage(ImageAsset.splash),
                  height: context.mw * 0.4,
                  width: context.mw * 0.4,
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.mw * 0.02,
          vertical: context.mh * 0.03,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ReuseAbleBtn(
              title: 'Login',
              btnColor: AppColor.btnColor,
              ontap: () {
                Navigator.pushNamed(context, RoutesNames.loginScreen);
              },
            ),
            0.03.ph(context),
            ReuseAbleBtn(
              title: 'Create Account',
              border: Border.all(
                color: AppColor.btnColor,
              ),
              ontap: () {
                Navigator.pushNamed(context, RoutesNames.signupScreen);
              },
            )
          ],
        ),
      ),
    );
  }
}
