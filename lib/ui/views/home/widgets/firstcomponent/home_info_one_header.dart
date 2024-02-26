import 'package:flutter/material.dart';
import 'package:landing/ui/common/styles.dart';
import 'package:landing/ui/common/ui_helpers.dart';

class FirstHeader extends StatelessWidget {
  const FirstHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: SizedBox(
        height: quarterScreenHeight(context),
        width: screenWidth(context),
        child: const Center(
          child: Text(
            "Designed for the future",
            style: Style.headerLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
