import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.Weight,
  });
  final String text;
  final Color color;
  final double size;
  final FontWeight Weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: Weight, color: color),
    );
  }
}
