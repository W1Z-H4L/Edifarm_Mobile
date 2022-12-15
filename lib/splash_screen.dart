import 'dart:async';

import 'package:Edifarm/login.dart';
import 'package:Edifarm/sign_in_page.dart';
import 'package:Edifarm/ui/pages/dashboard/list_view/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? username;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getValidationData().whenComplete(() async {
      Timer(const Duration(seconds: 4),
          () => Get.to(username == null ? SignInPage() : HomeScreen()));
      Navigator.pushNamed(context, '/sign-in');
    });
    super.initState();
  }

  Future getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainedusername = sharedPreferences.getString('password');
    setState(() {
      username = obtainedusername;
    });
    print(username);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 150),
            padding: const EdgeInsets.all(25),
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              'assets/icon_splash.png',
            ))),
          ),
          SizedBox(
            height: 20,
          ),

          Text(
            "Proses\n",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                color: Color(0xff006B6C),
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "\n Sedang Memuat fitur \n Mohon Tunggu Sebentar ... \n \n",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                color: Color(0xff006B6C),
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
          MaterialButton(
            onPressed: () async {
              final SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              sharedPreferences.remove('password');
              Get.to(SignInPage());
            },
          ),

          SizedBox(
            height: 25,
          ),
          LinearPercentIndicator(
            padding: EdgeInsets.only(left: 45, right: 45, bottom: 20),
            animation: true,
            animationDuration: 1500,
            lineHeight: 22,
            percent: 1.0,
            progressColor: Color(0xff006B6C),
            backgroundColor: Color(0xffBDE2E7),
          ),
          // Container(
          //     height: 30,
          //     padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          //     child: ElevatedButton(
          //       child: const Text('Next'),
          //       onPressed: () {},
          //     )),
        ],
      ),
    );
  }
}
///