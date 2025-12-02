import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/Core/Constants/app_colors.dart';
import 'package:hungry_app/shared/custom_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            Gap(100),
            SvgPicture.asset("assets/logo/logo.svg"),
            Gap(6),

            CustomText(
              text: "Welcome Back 👋",
              color: Colors.white,
              size: 24,
              Weight: FontWeight.w700,
            ),
            Gap(40),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
