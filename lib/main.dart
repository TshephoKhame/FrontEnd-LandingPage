import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:landing/app/app.bottomsheets.dart';
import 'package:landing/app/app.dialogs.dart';
import 'package:landing/app/app.locator.dart';
import 'package:landing/app/app.router.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_animate/flutter_animate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await setupLocator(stackedRouter: stackedRouter);
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      preferDesktop: true,
      builder: (_) => MaterialApp.router(
        theme: Theme.of(context).copyWith(
          textTheme: GoogleFonts.openSansTextTheme().apply(
            bodyColor: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              ),
            ),
          ),
        ),
        routerDelegate: stackedRouter.delegate(),
        routeInformationParser: stackedRouter.defaultRouteParser(),
      ),
    ).animate().fadeIn(
          delay: const Duration(milliseconds: 50),
          duration: const Duration(milliseconds: 400),
        );
  }
}
