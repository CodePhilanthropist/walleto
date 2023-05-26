import 'package:flutter/material.dart';
import 'package:walleto/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walleto/utils/outline_gradient_button.dart';
import "../../utils/buttons.dart";

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.navyPurple,
      body: SafeArea(
        child: SizedBox(
          width: deviceWidth,
          height: deviceHeight,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                          "assets/images/onboarding/landing-image.png"),
                    ),
                    Positioned(
                      child: SvgPicture.asset(
                          "assets/images/onboarding/stars.svg"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Make Payments Much\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 34,
                                    fontFamily: "Avenir",
                                    height: 1.2,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Easier In ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 34,
                                    fontFamily: "Avenir",
                                  ),
                                ),
                                TextSpan(
                                  text: 'Once Place',
                                  style: TextStyle(
                                    color: AppColor.lightOrange,
                                    fontSize: 34,
                                    fontFamily: "Avenir",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Your Money Is Safe & Growing With Us.",
                            style: TextStyle(
                              fontFamily: "Avenir",
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          const GradientButton(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffFB9F6C),
                                Color(0xffC66CFC),
                                Color(0xff8247FF),
                              ],
                            ),
                            borderGradient: LinearGradient(
                              colors: [
                                Color(0xffFB9F6C),
                                Color(0xffC66CFC),
                                Color(0xff8247FF),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            radius: 16,
                            strokeWidth: 1,
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                const Text(
                                  "Skip",
                                  style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                SvgPicture.asset(
                                  "assets/images/onboarding/arrow-right.svg",
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
