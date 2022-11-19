import 'dart:io';

import 'package:edifarm/dashboard/fitness_app_home_screen.dart';
import 'package:edifarm/dashboard/training/training_screen.dart';
import 'package:edifarm/sign_in_page.dart';
import 'package:edifarm/splash_scren.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main(List<String> args) => runApp(MyApp());
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown
//   ]).then((_) => runApp(MyApp()));
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarIconBrightness: Brightness.dark,
    //     statusBarBrightness:
    //         !kIsWeb && Platform.isAndroid ? Brightness.dark : Brightness.light,
    //     systemNavigationBarColor: Colors.white,
    //     systemNavigationBarDividerColor: Colors.transparent,
    //     systemNavigationBarIconBrightness: Brightness.dark,
    //   ));
    return MaterialApp(debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        //   textTheme: AppTheme.textTheme,
        //   platform: TargetPlatform.iOS,
        // ),
        routes: {
          '/': (context) => const SplashScreen(),
          '/sign-in': (context) => SignInPage(),
          '/home': (context) => FitnessAppHomeScreen(),
          '/act': (context) => const TrainingScreen(),
        });
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
//