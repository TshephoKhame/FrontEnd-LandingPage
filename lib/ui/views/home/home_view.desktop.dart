import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/styles.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:landing/ui/views/home/home_viewmodel.dart';
import 'package:landing/ui/views/home/widgets/firstcomponent/home_info_one_header.dart';
import 'package:landing/ui/views/home/widgets/firstcomponent/home_info_one_icon.dart';
import 'package:landing/ui/views/home/widgets/firstcomponent/home_info_one_text.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_title_bgC.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_title_bgI.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_title_navbar.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_title_text.dart';
import 'package:landing/ui/views/home/widgets/secondcomponent/home_info_two_icon.dart';
import 'package:landing/ui/views/home/widgets/secondcomponent/home_info_two_main.dart';
import 'package:landing/ui/views/home/widgets/thirdcomponent/home_info_three_icon.dart';
import 'package:landing/ui/views/home/widgets/thirdcomponent/home_info_three_text.dart';
import 'package:landing/ui/widgets/footer/footer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: const [
          SizedBox(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                HomeTitleBackgroundColor(),
                HomeTitleImage(),
                HomeTitleText(),
                HomeNavbar(),
              ],
            ),
          ),
          SizedBox(
            child: Stack(
              children: [
                FirstText(),
                FirstIcon(),
                FirstHeader(),
              ],
            ),
          ),
          SizedBox(
            child: Stack(
              children: [
                SecondContiner(),
                SecondIcon(),
              ],
            ),
          ),
          SizedBox(
            child: Stack(
              children: [
                ThirdText(),
                ThirdIcon(),
              ],
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
