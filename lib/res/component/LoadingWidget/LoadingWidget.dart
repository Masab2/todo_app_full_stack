import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';

class LoadingWidget extends StatelessWidget {
  final double size;
  const LoadingWidget({Key? key, this.size = 36.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: Platform.isIOS
            ? const CupertinoActivityIndicator(
          color: AppColor.btnColor,
        )
            : const CircularProgressIndicator(
          strokeWidth: 2.0,
          color: AppColor.btnColor,
        ),
      ),
    );
  }
}