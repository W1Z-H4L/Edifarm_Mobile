import 'package:edifarm/sign_in_page.dart';
import 'package:edifarm/splash_scren.dart';
import 'package:edifarm/ui/widgets/bottom_navigation/bottomNavigator.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => BottomNavigator(),
      },
    );
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
