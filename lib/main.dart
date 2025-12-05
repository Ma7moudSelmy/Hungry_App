import 'package:flutter/material.dart';
import 'package:hungry_app/root.dart';

void main() {
  runApp(const Hunget());
}

class Hunget extends StatelessWidget {
  const Hunget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Root());
  }
}
