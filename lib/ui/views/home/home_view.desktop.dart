import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/styles.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:landing/ui/views/home/widgets/home_info_one_header.dart';
import 'package:landing/ui/views/home/widgets/home_info_one_icon.dart';
import 'package:landing/ui/views/home/widgets/home_info_one_text.dart';
import 'package:landing/ui/views/home/widgets/home_title_bgC.dart';
import 'package:landing/ui/views/home/widgets/home_title_bgI.dart';
import 'package:landing/ui/views/home/widgets/home_title_text.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                HomeTitleBackgroundColor(),
                HomeTitleImage(),
                HomeTitleText(),
              ],
            ),
          ),
          const SizedBox(
            child: Stack(
              children: [
                FirstText(),
                FirstIcon(),
                FirstHeader(),
              ],
            ),
          ),
          verticalSpaceLarge,
          SizedBox(
            child: Stack(
              children: [
                // Positioned to center the text vertically and horizontally
                Container(
                  clipBehavior: Clip.none,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(160),
                    ),
                    color: Color.fromRGBO(63, 65, 100, 1.000),
                  ),
                  height: screenHeight(context) / 2,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: thirdScreenWidth(context) + 100,
                        right: 250), // Padding to offset text from the left

                    child: const Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center vertically
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
                ),
                // Positioned to place the image overlapping the container
                Positioned(
                  width: thirdScreenWidth(context), // One third of screen width
                  left: 0,
                  top: -100, // Slightly above the container
                  child: SvgPicture.asset(
                    "assets/illustration-phones.svg",
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
