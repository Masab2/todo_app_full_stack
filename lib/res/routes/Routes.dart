import 'package:flutter/material.dart';
import 'package:todo_app_full_stack/models/UserModel/UserModel.dart';
import 'package:todo_app_full_stack/res/routes/RoutesNames.dart';
import 'package:todo_app_full_stack/views/Auth/LoginScreen.dart';
import 'package:todo_app_full_stack/views/Auth/SignupScreen.dart';
import 'package:todo_app_full_stack/views/ChoiceScreen/ChoiceScreen.dart';
import 'package:todo_app_full_stack/views/HomeScreen/HomeScreenView.dart';
import 'package:todo_app_full_stack/views/ProfileScreen/ProfileScreen.dart';
import 'package:todo_app_full_stack/views/SplashView/SplashView.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RoutesNames.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case RoutesNames.choiceScreen:
        return MaterialPageRoute(
          builder: (_) => const ChoiceScreen(),
        );
      case RoutesNames.signupScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case RoutesNames.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreenView(),
        );
      case RoutesNames.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreenView(
            args: args as UserModel,
          ),
        );
      case RoutesNames.profileScreen:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(
            args: args.toString(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No Route Defined'),
            ),
          );
        });
    }
  }
}
