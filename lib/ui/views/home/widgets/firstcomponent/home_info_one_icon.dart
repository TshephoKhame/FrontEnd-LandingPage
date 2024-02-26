import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FirstIcon extends StatelessWidget {
  const FirstIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final desktop = SvgPicture.asset(
      "assets/illustration-editor-desktop.svg",
      allowDrawingOutsideViewBox: true,
    );

    final mobile = SvgPicture.asset(
      "assets/illustration-editor-mobile.svg",
      allowDrawingOutsideViewBox: true,
      fit: BoxFit.fitWidth,
      width: screenWidth(context),
    );
    return Positioned(
      width: getValueForScreenType(
        context: context,
        mobile: screenWidth(context),
        desktop: halfScreenWidth(context),
      ),
      right: getValueForScreenType(
        context: context,
        mobile: 0,
        desktop: -200,
      ),
      top: getValueForScreenType(
        context: context,
        mobile: 200,
        desktop: 100,
      ),
      child: ScreenTypeLayout.builder(
        desktop: (_) => desktop,
        mobile: (_) => mobile,
      ),
    );
  }
}
