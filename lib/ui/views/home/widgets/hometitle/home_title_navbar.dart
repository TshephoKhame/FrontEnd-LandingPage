import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing/ui/common/ui_helpers.dart';

const double _kNavbarHeight = 70;

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: SizedBox(
          height: _kNavbarHeight,
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
        ),
      ),
    );
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
