import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeNavbar extends StatefulWidget {
  const HomeNavbar({super.key});

  @override
  State<HomeNavbar> createState() => _HomeNavbarState();
}

class _HomeNavbarState extends State<HomeNavbar> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    void toggleMenu() {
      setState(() {
        isMenuOpen = !isMenuOpen;
      });
    }

    final desktop = Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/logo.svg',
              ),
              horizontalSpaceLarge,
              Row(
                children: [
                  _droppdownBtn("Product"),
                  horizontalSpaceSmall,
                  _droppdownBtn("Company"),
                  horizontalSpaceSmall,
                  _droppdownBtn("Connect"),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  foregroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Log In",
                ),
              ),
              horizontalSpaceMedium,
              ElevatedButton(
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  foregroundColor: MaterialStateProperty.all(
                    Colors.red,
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: const Text(
                  "Sign Up",
                ),
              ),
            ],
          )
        ],
      ),
    );

    final mobile = Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/logo.svg',
          ),
          GestureDetector(
            onTap: () {
              toggleMenu();
            },
            child: SvgPicture.asset(
              isMenuOpen
                  ? "assets/icon-close.svg" // Change to close icon
                  : "assets/icon-hamburger.svg",
            ),
          ),
        ],
      ),
    );

    return Positioned(
        top: 0,
        child: ScreenTypeLayout.builder(
          desktop: (_) => desktop,
          mobile: (_) => mobile,
        ));
  }
}

Widget _droppdownBtn(String name) {
  return Row(
    children: [
      Text(
        name,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_drop_down,
        ),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
    ],
  );
}
