import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF542E50),
                Color(0xFF120041),
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Column(
                    children: [],
                  ),
                  Container(),
                  Container(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
