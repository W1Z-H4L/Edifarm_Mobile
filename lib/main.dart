import 'package:Edifarm/Riwayat/Riwayat_pengobatan/riwayart_pestisida_screen.dart';
import 'package:Edifarm/Riwayat/Riwayat_pupuk/riwayart_pupuk_screen.dart';
import 'package:Edifarm/Riwayat/riwayat_irigasi/riwayart_irigasi_screen.dart';
import 'package:Edifarm/aktivitas/activity.dart';
import 'package:Edifarm/jenispadi/jenis_padi.dart';
import 'package:Edifarm/jenispadi/jenispadi.dart';
import 'package:Edifarm/sign_in_page.dart';
import 'package:Edifarm/splash_screen.dart';
import 'package:Edifarm/ui/pages/diagnosa/diagnosa_screen.dart';
import 'package:Edifarm/ui/pages/lahan/lahan_view.dart';
import 'package:Edifarm/ui/pages/setting/edit_akun.dart';
import 'package:Edifarm/ui/pages/setting/page/account/edit_password.dart';
import 'package:Edifarm/ui/pages/setting/page/account/edit_username.dart';
import 'package:Edifarm/ui/pages/setting/pengaturan.dart';
import 'package:Edifarm/ui/pages/setting/popup.dart';
import 'package:Edifarm/ui/widgets/bottom_navigation/bottomNavigator.dart';

<<<<<<< HEAD
import 'package:edifarm/dashboard1/fitness_app_home_screen.dart';
import 'package:edifarm/training/training_screen.dart';
import 'package:edifarm/jenispadi/jenispadi.dart';
import 'package:edifarm/sign_in_page.dart';
import 'package:edifarm/splash_scren.dart';
=======
>>>>>>> c0872997ecdcc3498b5b80e90fa2896f04cf7872
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown
//   ]).then((_) => runApp(MyApp()));
// }
class MyApp extends StatefulWidget {
  const MyApp({Key? key, this.animationController}) : super(key: key);

  final AnimationController? animationController;
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> with TickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => BottomNavigator(),
        '/edit-bio': (context) =>
            EditProfilePage(animationController: animationController),
        '/edit-pass': (context) => EditPassword(),
        '/edit-user': (context) => EditUsername(),
        '/riwayatpupuk': (context) => const RiwayatPupuk(),
        '/diag': (context) =>
            DiagnosaScreen(animationController: animationController),
        '/lahan': (context) => CourseInfoScreen(
              animationController: animationController,
            ),
        '/jenis': (context) => JenisPadiPage(
              animationController: animationController,
            ),
        '/sett': (context) => SettingsPage(),
        '/iri': (context) => RiwayatIrigasi(
              animationController: animationController,
            ),
        '/obat': (context) => RiwayatPestisida(
              animationController: animationController,
            ),
        '/pupuk': (context) => RiwayatPupuk(
              animationController: animationController,
            ),
        '/act': (context) => activityPage(
              animationController: animationController,
            ),
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
