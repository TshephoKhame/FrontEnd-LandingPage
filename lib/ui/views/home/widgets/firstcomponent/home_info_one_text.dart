import 'package:flutter/material.dart';
import 'package:landing/ui/common/styles.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FirstText extends StatelessWidget {
  const FirstText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: screenWidth(context),
      child: Row(
        children: [
          Container(
            width: getValueForScreenType(
                context: context,
                desktop:
                    halfScreenWidth(context) + quarterScreenHeight(context),
                mobile: screenWidth(context)),
            padding: getValueForScreenType(
              context: context,
              mobile: const EdgeInsets.all(20),
              desktop: const EdgeInsets.all(180),
            ),
            child: Column(
              crossAxisAlignment: getValueForScreenType(
                context: context,
                mobile: CrossAxisAlignment.center,
                desktop: CrossAxisAlignment.start,
              ),
              children: [
                getValueForScreenType(
                  context: context,
                  mobile: const SizedBox(
                    height: 650,
                  ),
                  desktop: verticalSpaceLarge,
                ),
                Text(
                  "Introducing an extensible editor",
                  style: Style.subHeader,
                  textAlign: getValueForScreenType(
                    context: context,
                    mobile: TextAlign.center,
                    desktop: TextAlign.left,
                  ),
                ),
                verticalSpaceMedium,
                Text(
                  "Blogr features an exceedingly intuitive interface which lets you focus on one thing: create content. he editor supports management of multiple and allows easy manipulation of embeds such as images, videos, annd Markdown. Extensibility or change the looks of a blog.",
                  style: Style.bodyText,
                  textAlign: getValueForScreenType(
                    context: context,
                    mobile: TextAlign.center,
                    desktop: TextAlign.left,
                  ),
                ),
                verticalSpaceLarge,
                Text(
                  "Robust content management",
                  style: Style.subHeader,
                  textAlign: getValueForScreenType(
                    context: context,
                    mobile: TextAlign.center,
                    desktop: TextAlign.left,
                  ),
                ),
                verticalSpaceMedium,
                Text(
                  "Flexible content management enabkles user to easily move through posts, increase the usability of your blog by adding customized catagories, sections, format, or flow. With this functionality you are in full control.",
                  style: Style.bodyText,
                  textAlign: getValueForScreenType(
                    context: context,
                    mobile: TextAlign.center,
                    desktop: TextAlign.left,
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
