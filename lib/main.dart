<<<<<<< HEAD
import 'dart:io';
=======
import 'package:flutter/material.dart';
import 'package:login/ui/pages/dashboard/list_view/dashboard_screen.dart';
import 'package:login/ui/pages/sign_in_page.dart';
import 'package:login/ui/pages/splash_screen.dart';
import 'package:login/ui/widgets/bottom_navigation/bottomNavigator.dart';
>>>>>>> 2429c30 (edit home)

import 'package:edifarm/dashboard/fitness_app_home_screen.dart';
import 'package:edifarm/dashboard/training/training_screen.dart';
import 'package:edifarm/jenispadi/jenispadi.dart';
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
          '/act': (context) => const TrainingScreen(),
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
>>>>>>> 2429c30 (edit home)
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
<<<<<<< HEAD
//
=======
>>>>>>> 2429c30 (edit home)
