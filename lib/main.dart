import 'package:edifarm/riwayat/riwayart_pupuk.dart';
import 'package:edifarm/sign_in_page.dart';
import 'package:edifarm/splash_screen.dart';
import 'package:edifarm/ui/pages/setting/edit_akun.dart';
import 'package:edifarm/ui/pages/setting/page/account/edit_password.dart';
import 'package:edifarm/ui/pages/setting/page/account/edit_username.dart';
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
<<<<<<< HEAD
        '/edit-bio': (context) => const EditProfilePage(),
        '/edit-pass': (context) => EditPassword(),
        '/edit-user': (context) => EditUsername(),
=======
        '/riwayatpupuk': (context) => ListViewRiwayatPupuk(),
>>>>>>> jenis
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
