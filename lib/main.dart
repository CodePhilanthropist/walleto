import 'package:flutter/material.dart';
import 'package:walleto/ui/home/home_screen.dart';
import 'package:walleto/ui/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
