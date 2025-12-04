import 'package:flutter/material.dart';
import 'package:hungry_app/Core/Constants/app_colors.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CustomAuthBtn extends StatelessWidget {
  const CustomAuthBtn({super.key, this.onTap, this.text});
  final Function()? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,

        color: Colors.white,
        width: double.infinity,

        child: Center(
          child: CustomText(
            color: AppColors.primary,
            text: text!,
            size: 18,
            Weight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
