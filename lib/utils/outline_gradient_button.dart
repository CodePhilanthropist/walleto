import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class NewOutlineGradientButton extends StatefulWidget {
  const NewOutlineGradientButton({super.key});

  @override
  State<NewOutlineGradientButton> createState() =>
      _NewOutlineGradientButtonState();
}

class _NewOutlineGradientButtonState extends State<NewOutlineGradientButton> {
  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      gradient: const LinearGradient(
        colors: [
          Color(0xffFB9F6C),
          Color(0xffC66CFC),
          Color(0xff8247FF),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      strokeWidth: 1,
      // radius: const Radius.circular(16),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFB9F6C),
              Color(0xffC66CFC),
              Color(0xff8247FF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        width: 245,
        height: 56,
        child: const Text(
          'Get Started',
          style: TextStyle(
            fontFamily: "Avenir",
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
