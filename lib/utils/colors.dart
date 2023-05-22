import 'package:flutter/material.dart';

class AppColor {
  static const navyPurple = Color(0xff120041);
  static const darkOrange = Color(0xffB35F35);
  static const lightPink = Color(0xffC66CFC);
  static const lightPurple = Color(0xff8247FF);
  static const green = Color(0xff29CB90);
  static const purpleShade = Color(0xff5A508C);
  static const darkPink = Color(0xff8F30B5);
  static const darkBlue = Color(0xff5826EB);
  static const lightOrange = Color(0xffFB9F6C);
  static const white = Color(0xffFFFFFF);
  static Widget gradient1 = Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xffFB9F6C),
          Color(0xffC66CFC),
          Color(0xff8247FF),
        ],
        stops: [0.0, 1.0],
      ),
    ),
  );
}
