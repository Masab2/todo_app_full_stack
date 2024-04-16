import 'package:flutter/material.dart';
import 'package:todo_app_full_stack/res/routes/RoutesNames.dart';
import 'package:todo_app_full_stack/utils/Assets/imageAsset.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.popAndPushNamed(context, RoutesNames.choiceScreen);
        },
        child: Center(
          child: Image(
            height: context.mw * 0.4,
            width: context.mw * 0.4,
            image: const AssetImage(ImageAsset.splash),
          ),
        ),
      ),
    );
  }
}
