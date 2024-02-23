import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/ui_helpers.dart';

class FirstIcon extends StatelessWidget {
  const FirstIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: halfScreenWidth(context),
      right: -200,
      top: 100,
      child: SvgPicture.asset(
        "assets/illustration-editor-desktop.svg",
        allowDrawingOutsideViewBox: true,
      ),
    );
  }
}
