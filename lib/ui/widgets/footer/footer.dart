import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/styles.dart';
import 'package:landing/ui/common/ui_helpers.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(60),
      color: Color.fromRGBO(37, 37, 45, 1.000),
      width: double.infinity,
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align content to the top
        children: [
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
                  _textButton("Overview"),
                  verticalSpaceSmall,
                  _textButton("Pricing"),
                  verticalSpaceSmall,
                  _textButton("Marketplace"),
                  verticalSpaceSmall,
                  _textButton("Features"),
                  verticalSpaceSmall,
                  _textButton("Integrations"),
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
                  _textButton("About"),
                  verticalSpaceSmall,
                  _textButton("Overview"),
                  verticalSpaceSmall,
                  _textButton("Blog"),
                  verticalSpaceSmall,
                  _textButton("Careers"),
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
                  _textButton("Contact"),
                  verticalSpaceSmall,
                  _textButton("Newsletter"),
                  verticalSpaceSmall,
                  _textButton("LinkedIn"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _textButton(String name) {
  return TextButton(
    onPressed: () {}, // Provide an onPressed handler
    child: Text(
      name,
      style: Style.bodyTextWhite,
    ),
  );
}
