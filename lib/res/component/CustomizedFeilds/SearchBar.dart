import 'package:flutter/material.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';

class SearchBarCustomized extends StatelessWidget {
  final TextEditingController controller;
  const SearchBarCustomized({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: context.mw * 0.03,
      ),
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.whiteColor.withOpacity(0.13),
          border: Border.all(color: AppColor.searchBorderColor, width: 0.3)),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: AppColor.whiteColor),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Search for your Tasks',
          prefixIcon: Icon(
            Icons.search,
            color: AppColor.searchBorderColor,
          ),
          hintStyle: TextStyle(
            color: AppColor.searchBorderColor,
          ),
        ),
      ),
    );
  }
}
