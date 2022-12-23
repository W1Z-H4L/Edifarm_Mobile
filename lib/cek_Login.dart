import 'package:Edifarm/controler/Remember_User.dart';
import 'package:Edifarm/sign_in_page.dart';
import 'package:Edifarm/ui/pages/dashboard/list_view/dashboard_screen.dart';
import 'package:flutter/cupertino.dart';

class CekLogin extends StatefulWidget {
  const CekLogin({super.key});

  @override
  State<CekLogin> createState() => _CekLoginState();
}

class _CekLoginState extends State<CekLogin>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: RememberUser.readUser(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return SignInPage();
          } else {
            return const HomeScreen();
          }
        });
  }
}
