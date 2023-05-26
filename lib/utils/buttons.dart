import 'package:flutter/material.dart';

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
      width: 245,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: borderGradient,
      ),
      padding: EdgeInsets.all(strokeWidth),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Material(
          color: const Color.fromARGB(0, 255, 0, 0),
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                gradient: gradient,
              ),
              child: Center(
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
