import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "A modern publishing platform",
        style: TextStyle(
          fontSize: getValueForScreenType(
            context: context,
            mobile: 40,
            desktop: 70,
          ),
          fontWeight: FontWeight.w900,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
