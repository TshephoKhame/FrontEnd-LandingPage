import 'package:flutter/material.dart';

class HomeTitleBackgroundColor extends StatelessWidget {
  const HomeTitleBackgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(255, 61, 84, 1.000),
            Color.fromRGBO(255, 143, 112, 1.000),
          ],
        ),
      ),
    );
  }
}
