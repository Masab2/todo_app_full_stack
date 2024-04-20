import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_full_stack/res/routes/Routes.dart';
import 'package:todo_app_full_stack/res/routes/RoutesNames.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/viewModel/CreateTodoViewModel/CreateTodoViewModel.dart';
import 'package:todo_app_full_stack/viewModel/HomeViewModel/HomeViewModel.dart';
import 'package:todo_app_full_stack/viewModel/LoginViewModel/LoginViewModel.dart';
import 'package:todo_app_full_stack/viewModel/ProfileViewModel/ProfileViewModel.dart';
import 'package:todo_app_full_stack/viewModel/SignupViewModel/SignupViewModel.dart';
import 'package:todo_app_full_stack/viewModel/UserViewModel/UserViewModel.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SignupViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => LoginViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => CreateTodoViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProfileViewModel(),
        ),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        theme: ThemeData(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: AppColor.btnColor,
          ),
          appBarTheme: const AppBarTheme(
            color: AppColor.backgroundColor,
            iconTheme: IconThemeData(color: AppColor.whiteColor),
          ),
          scaffoldBackgroundColor: AppColor.backgroundColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RoutesNames.splashScreen,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
