import 'package:flutter/material.dart';
import 'package:walleto/utils/colors.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double strokeWidth;
  final double radius;
  final Gradient borderGradient;

  const GradientButton({
    Key? key,
    required this.child,
    required this.gradient,
    this.strokeWidth = 2.0,
    this.radius = 4.0,
    required this.borderGradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 56,
      padding: EdgeInsets.all(strokeWidth),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: borderGradient,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Material(
          color: AppColor.navyPurple,
          child: Ink(
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(radius),
              onTap: () {},
              child: Center(child: child),
            ),
          ),
        ),
      ),
    );
  }
}
