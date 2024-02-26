import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeTitleImage extends StatelessWidget {
  const HomeTitleImage({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = SvgPicture.asset(
      'assets/bg-pattern-intro-mobile.svg',
      alignment: Alignment.centerRight,
      width: screenWidth(context),
      height: screenHeight(context),
      allowDrawingOutsideViewBox: true,
    );
    final desktop = SvgPicture.asset(
      'assets/bg-pattern-intro-desktop.svg',
      alignment: Alignment.centerRight,
      width: screenHeight(context) * 4.8,
      height: screenHeight(context) * 4.8,
      allowDrawingOutsideViewBox: true,
    );

    return Positioned(
      bottom: -screenHeight(context) * 1.9,
      left: -screenHeight(context) * 0.6,
      child: ScreenTypeLayout.builder(
        mobile: (_) => mobile,
        desktop: (_) => desktop,
      ),
    );
  }
}

// return Positioned(
//       bottom: -screenHeight(context) * 1.9,
//       left: -screenHeight(context) * 0.6,
//       child: SvgPicture.asset(
//         'assets/bg-pattern-intro-desktop.svg',
//         alignment: Alignment.centerRight,
//         width: screenHeight(context) * 4.8,
//         height: screenHeight(context) * 4.8,
//         allowDrawingOutsideViewBox: true,
//       ),
//     );