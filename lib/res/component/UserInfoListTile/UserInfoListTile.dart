import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';

class UserInfoListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const UserInfoListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0,
      semanticContainer: true,
      color: AppColor.boxColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
        20,
      )),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColor.backgroundColor,
          child: Icon(
            icon,
            color: AppColor.btnColor,
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.018,
            fontWeight: FontWeight.bold,
            color: AppColor.searchBorderColor,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.016,
          ),
        ),
      ),
    );
  }
}

class LogOutListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback ontap;
  const LogOutListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: AppColor.boxColor,
      elevation: 0,
      semanticContainer: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        onTap: ontap,
        leading: CircleAvatar(
          backgroundColor: AppColor.backgroundColor,
          child: Icon(
            icon,
            color: AppColor.btnColor,
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.018,
            fontWeight: FontWeight.bold,
            color: AppColor.searchBorderColor,
          ),
        ),
        subtitle: Text(
          'Logout From UpTodo',
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.016,
          ),
        ),
      ),
    );
  }
}
