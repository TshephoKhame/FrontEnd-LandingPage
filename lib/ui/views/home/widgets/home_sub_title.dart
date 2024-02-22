import 'package:flutter/material.dart';

class HomeSubTitle extends StatelessWidget {
  const HomeSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Grow your audience and build your online brand",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}
