import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/Core/Constants/app_colors.dart';
import 'package:hungry_app/features/auth/Widgets/CustomAuthBtn.dart';
import 'package:hungry_app/shared/custom_text.dart';
import 'package:hungry_app/shared/custom_text_form_filed.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
                  const Gap(6),

                  const CustomText(
                    text: "Welcome Back Discover great food",
                    color: Colors.white,
                    size: 20,
                    Weight: FontWeight.w700,
                  ),

                  const Gap(60),

                  CustomTextFormFiled(
                    hint: "Email Address",
                    isPassword: false,
                    controller: emailController,
                  ),

                  const Gap(30),

                  CustomTextFormFiled(
                    hint: "Password",
                    isPassword: true,
                    controller: passwordController,
                  ),
                  const Gap(30),
                  CustomAuthBtn(
                    text: "Login",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        print('sussess login');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
