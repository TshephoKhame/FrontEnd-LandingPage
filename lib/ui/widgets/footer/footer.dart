import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/styles.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key});

  @override
  Widget build(BuildContext context) {
    final children = [
      Expanded(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              SvgPicture.asset(
                'assets/logo.svg',
              ),
            ],
          ),
        ),
      ),
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              const Text(
                "Product",
                style: Style.bodyTextWhite,
              ),
              verticalSpaceMedium,
              _textButton(context, "Overview"),
              verticalSpaceSmall,
              _textButton(context, "Pricing"),
              verticalSpaceSmall,
              _textButton(context, "Marketplace"),
              verticalSpaceSmall,
              _textButton(context, "Features"),
              verticalSpaceSmall,
              _textButton(context, "Integrations"),
            ],
          ),
        ),
      ),
      Expanded(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              const Text(
                "Company",
                style: Style.bodyTextWhite,
              ),
              verticalSpaceMedium,
              _textButton(context, "About"),
              verticalSpaceSmall,
              _textButton(context, "Overview"),
              verticalSpaceSmall,
              _textButton(context, "Blog"),
              verticalSpaceSmall,
              _textButton(context, "Careers"),
            ],
          ),
        ),
      ),
      Expanded(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              const Text(
                "Connect",
                style: Style.bodyTextWhite,
              ),
              verticalSpaceMedium,
              _textButton(context, "Contact"),
              verticalSpaceSmall,
              _textButton(context, "Newsletter"),
              verticalSpaceSmall,
              _textButton(context, "LinkedIn"),
            ],
          ),
        ),
      ),
    ];

    return Container(
      padding: EdgeInsets.all(60),
      color: Color.fromRGBO(37, 37, 45, 1.000),
      width: double.infinity,
      child: ScreenTypeLayout.builder(
        mobile: (_) => Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Align content to the top
          children: children,
        ),
        desktop: (_) => Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the top
          children: children,
        ),
      ),
    );
  }
}

Widget _textButton(BuildContext context, String name) {
  return TextButton(
    onPressed: () {}, // Provide an onPressed handler
    child: Text(
      name,
      style: Style.bodyTextWhite,
      textAlign: getValueForScreenType(
        context: context,
        mobile: TextAlign.center,
        desktop: TextAlign.left,
      ),
    ),
  );
}
