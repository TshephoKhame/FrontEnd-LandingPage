import 'package:flutter/material.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:landing/ui/views/home/widgets/home_sub_title.dart';
import 'package:landing/ui/views/home/widgets/home_title_header.dart';
import 'package:landing/ui/views/home/widgets/home_title_btns.dart';

class HomeTitleText extends StatelessWidget {
  const HomeTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: screenHeight(context) * 0.8,
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
