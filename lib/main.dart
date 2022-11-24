<<<<<<< HEAD
import 'dart:io';

import 'package:edifarm/dashboard/activity/activity.dart';
import 'package:edifarm/dashboard/fitness_app_home_screen.dart';
import 'package:edifarm/dashboard/activity/activity.dart';
import 'package:edifarm/jenispadi/jenispadi.dart';
import 'package:edifarm/sign_in_page.dart';
import 'package:edifarm/splash_screen.dart';
=======
import 'package:edifarm/sign_in_page.dart';
import 'package:edifarm/splash_scren.dart';
import 'package:edifarm/ui/widgets/bottom_navigation/bottomNavigator.dart';
>>>>>>> 960adc2e828b55ce62aad1680eaa20d6d79d8424
import 'package:flutter/material.dart';

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
<<<<<<< HEAD
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
          '/act': (context) => const activityPage(),
          '/jenis': (context) => const jenisPadi(),
        });
=======
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => BottomNavigator(),
      },
    );
>>>>>>> 960adc2e828b55ce62aad1680eaa20d6d79d8424
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
