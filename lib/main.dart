import 'package:flutter/material.dart';
import 'package:hungry_app/splash.dart';

void main() {
  runApp(Hunget());
}

class Hunget extends StatelessWidget {
  const Hunget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
