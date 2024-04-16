import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_full_stack/res/component/CustomizedFeilds/CustomizedFeilds.dart';
import 'package:todo_app_full_stack/res/component/ReuseAbleBtn/reuseableBtn.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';
import 'package:todo_app_full_stack/viewModel/SignupViewModel/SignupViewModel.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  final ValueNotifier<bool> _obscurepass = ValueNotifier(true);
  @override
  void dispose() {
    //implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    usernamecontroller.dispose();
    _obscurepass.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authviewmodel = Provider.of<SignupViewModel>(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            0.09.ph(context),
            Text(
              'Create Account',
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
                    controller: usernamecontroller,
                    prefixIcon: const Icon(Icons.person),
                    hint: 'Enter your name',
                    title: 'Name',
                  ),
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
            Consumer<SignupViewModel>(
              builder: (context, value, child) {
                return value.isLoading == true
                    ? const CircularProgressIndicator()
                    : ReuseAbleBtn(
                        title: 'Create Account',
                        btnColor: AppColor.btnColor,
                        ontap: () {
                          authviewmodel.registerApi(
                            usernamecontroller,
                            emailcontroller,
                            passwordcontroller,
                            context,
                          );
                        },
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
