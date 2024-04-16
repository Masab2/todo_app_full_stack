import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_full_stack/res/component/ReuseAbleBtn/reuseableBtn.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';
import 'package:todo_app_full_stack/viewModel/LoginViewModel/LoginViewModel.dart';

import '../../res/component/CustomizedFeilds/CustomizedFeilds.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final ValueNotifier<bool> _obscurepass = ValueNotifier(true);

  @override
  void dispose() {
    //implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    _obscurepass.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authviewmodel = Provider.of<LoginViewModel>(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            0.13.ph(context),
            Text(
              'Welcome Back !',
              style: GoogleFonts.lato(
                fontSize: context.mh * 0.030,
                color: AppColor.whiteColor,
              ),
            ),
            0.04.ph(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.mw * 0.04),
              child: Column(
                children: [
                  0.02.ph(context),
                  CustomizedFeild(
                    prefixIcon: const Icon(Icons.email),
                    hint: 'Enter your email',
                    controller: emailcontroller,
                    title: 'Email',
                  ),
                  0.02.ph(context),
                  ValueListenableBuilder(
                    valueListenable: _obscurepass,
                    builder: (context, value, child) {
                      return CustomizedFeild(
                        title: 'Password',
                        hint: '6 character/digit',
                        prefixIcon: const Icon(Icons.lock),
                        obscuretext: _obscurepass.value,
                        sufixIcon: InkWell(
                            onTap: () {
                              _obscurepass.value = !_obscurepass.value;
                            },
                            child: _obscurepass.value
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off)),
                        controller: passwordcontroller,
                      );
                    },
                  ),
                ],
              ),
            ),
            0.04.ph(context),
            ReuseAbleBtn(
              title: 'Login',
              btnColor: AppColor.btnColor,
              ontap: () {
                authviewmodel.loginApi(
                  emailcontroller,
                  passwordcontroller,
                  context,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
