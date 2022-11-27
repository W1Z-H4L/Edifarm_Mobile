import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushNamed(context, '/sign-in'),
    );
    super.initState();
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

          //   children: <Widget>[
          // Container(
          //   width: 121,
          //   height: 121,
          //   margin: const EdgeInsets.only(top: 50),
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/logo.png'),
          //     ),
          //   ),
          // ),

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

          SizedBox(
            height: 25,
          ),
          LinearPercentIndicator(
            padding: EdgeInsets.only(left: 45, right: 45, bottom: 20),
            animation: true,
            animationDuration: 100,
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