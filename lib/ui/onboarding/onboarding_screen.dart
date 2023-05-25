import 'package:flutter/material.dart';
import 'package:walleto/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.navyPurple,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 85),
            child: Stack(
              children: [
                SvgPicture.asset("assets/onboarding/landing-image.svg"),
                SvgPicture.asset("assets/onboarding/stars.svg"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
