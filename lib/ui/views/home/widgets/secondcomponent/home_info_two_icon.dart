import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/ui_helpers.dart';

class SecondIcon extends StatelessWidget {
  const SecondIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: thirdScreenWidth(context), // One third of screen width
      left: 100,
      // Slightly above the container
      child: SvgPicture.asset(
        "assets/illustration-phones.svg",
        allowDrawingOutsideViewBox: true,
      ),
    );
  }
}
