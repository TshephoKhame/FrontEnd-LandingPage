import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/ui_helpers.dart';

class ThirdIcon extends StatelessWidget {
  const ThirdIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: halfScreenWidth(context),
      left: 0,
      top: 100,
      child: SvgPicture.asset(
        "assets/illustration-laptop-desktop.svg",
        allowDrawingOutsideViewBox: true,
      ),
    );
  }
}
