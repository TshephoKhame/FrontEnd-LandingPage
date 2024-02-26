import 'package:flutter/material.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_sub_title.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_title_btns.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_title_header.dart';

class HomeTitleText extends StatelessWidget {
  const HomeTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: screenHeight(context) * 0.8 - 100,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: const [
            verticalSpaceMassive,
            HomeTitle(),
            verticalSpaceMedium,
            HomeSubTitle(),
            verticalSpaceLarge,
            HomeTitleBtn()
          ],
        ),
      ),
    );
  }
}
