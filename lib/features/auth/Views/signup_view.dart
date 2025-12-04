import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/Core/Constants/app_colors.dart';
import 'package:hungry_app/features/auth/Widgets/CustomAuthBtn.dart';
import 'package:hungry_app/shared/custom_text.dart';
import 'package:hungry_app/shared/custom_text_form_filed.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();

    TextEditingController passwordController = TextEditingController();

    TextEditingController confirmpasswordController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Gap(100),
                SvgPicture.asset("assets/logo/logo.svg"),
                const Gap(60),

                CustomTextFormFiled(
                  hint: "Full Name",
                  isPassword: false,
                  controller: nameController,
                ),
                const Gap(20),
                CustomTextFormFiled(
                  hint: "Email Address",
                  isPassword: false,
                  controller: emailController,
                ),
                const Gap(20),
                CustomTextFormFiled(
                  hint: "Password",
                  isPassword: true,
                  controller: passwordController,
                ),
                const Gap(20),
                CustomTextFormFiled(
                  hint: "Confirm Password",
                  isPassword: true,
                  controller: confirmpasswordController,
                ),
                const Gap(40),
                CustomAuthBtn(
                  text: "Sign Up",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print('sussess signup');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
