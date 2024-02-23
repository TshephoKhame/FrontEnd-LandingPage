import 'package:landing/ui/common/app_colors.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_title_bgC.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_title_bgI.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_title_navbar.dart';
import 'package:landing/ui/views/home/widgets/hometitle/home_title_text.dart';
import 'package:landing/ui/widgets/footer/footer.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  HomeTitleBackgroundColor(),
                  HomeTitleImage(),
                  HomeTitleText(),
                  HomeNavbar(),
                ],
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
