import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/styles.dart';
import 'package:landing/ui/common/ui_helpers.dart';

class SecondContiner extends StatelessWidget {
  const SecondContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.none,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(160),
                bottomLeft: Radius.circular(160),
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(63, 65, 100, 1.000),
                  Color.fromRGBO(44, 45, 63, 1.000),
                ],
              ),
            ),
            height: screenHeight(context) / 5 * 2,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: thirdScreenWidth(context) + 100,
              right: thirdScreenWidth(context) / 2,
              top: screenHeight(context) / 8,
            ), // Padding to offset text from the left

            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to the left
              children: [
                Text(
                  "State of the Art Infrastructure",
                  style: Style.headerWhite,
                ),
                verticalSpaceMedium,
                Text(
                  "With reliablility and speed in mind, worldwide data centers provide the backdoor for ultra-fast connectivity.This ensures your side will load instantly, no matter where your readers are keeping your site competitive.",
                  style: Style.bodyTextWhite,
                ),
              ],
            ),
          ),
          Positioned(
            width: halfScreenWidth(context),
            left: -150, // One third of screen width
            bottom: -270, // Slightly above the container
            child: SvgPicture.asset(
              "assets/bg-pattern-circles.svg",
              allowDrawingOutsideViewBox: true,
              height: screenHeight(context) * 1.5,
              width: screenWidth(context) * 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
