import 'package:flutter/material.dart';

const double _btnRounding = 20;

class HomeTitleBtn extends StatelessWidget {
  const HomeTitleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                "Start for Free",
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(_btnRounding),
                      side: const BorderSide(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      )),
                ),
                foregroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {},
              child: const Text(
                "LearnMore",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
