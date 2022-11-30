import 'package:Edifarm/shared/Theme_App.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  @override
  State<PopUp> createState() => _PopUp();
}

class _PopUp extends State<PopUp> {
  final double coverHeight = 280;
  final double profileHeight = 158;
  final TextEditingController passwordController = new TextEditingController();
  bool _isObsecure3 = true;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            const Text(
              'Apakah Anda Yakin Ingin Merubah Data Diri ?',
              style: TextStyle(
                fontFamily: AppTheme.fontName,
                fontSize: 12,
                color: AppTheme.green,
              ),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: AppTheme.orange),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Tidak',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 10,
                        color: AppTheme.orange,
                        fontFamily: AppTheme.fontName),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 30,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppTheme.orange,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Ya',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontFamily: AppTheme.fontName),
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
