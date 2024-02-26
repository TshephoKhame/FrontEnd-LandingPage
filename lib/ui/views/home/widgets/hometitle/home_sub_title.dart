import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeSubTitle extends StatelessWidget {
  const HomeSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Grow your audience and build your online brand",
        style: TextStyle(
          fontSize: getValueForScreenType(
            context: context,
            mobile: 18,
            desktop: 18,
          ),
          fontWeight: FontWeight.w200,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
