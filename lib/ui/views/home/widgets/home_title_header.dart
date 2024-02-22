import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "A modern publishing platform",
        style: TextStyle(
          fontSize: 70,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
