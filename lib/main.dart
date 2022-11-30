import 'package:Edifarm/Riwayat/Riwayat_pupuk/riwayart_pupuk_screen.dart';
import 'package:Edifarm/sign_in_page.dart';
import 'package:Edifarm/splash_screen.dart';
import 'package:Edifarm/ui/pages/setting/edit_akun.dart';
import 'package:Edifarm/ui/pages/setting/page/account/edit_password.dart';
import 'package:Edifarm/ui/pages/setting/page/account/edit_username.dart';
import 'package:Edifarm/ui/pages/setting/popup.dart';
import 'package:Edifarm/ui/widgets/bottom_navigation/bottomNavigator.dart';

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
        '/edit-bio': (context) => const EditProfilePage(),
        '/edit-pass': (context) => EditPassword(),
        '/edit-user': (context) => EditUsername(),
        '/riwayatpupuk': (context) => const RiwayatPupuk(),
        '/pop': (context) => PopUp(),
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
