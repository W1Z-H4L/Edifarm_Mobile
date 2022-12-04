import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:Edifarm/sign_in_page.dart';
import 'package:Edifarm/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          toolbarHeight: 70,
          title: const Text(
            "Pengaturan",
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          titleTextStyle: whiteTextStyle1,
          titleSpacing: 20,
          shadowColor: Color.fromARGB(255, 47, 101, 88),
          backgroundColor: Color.fromARGB(255, 47, 101, 88),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
        ),
        backgroundColor: AppTheme.background,
        body: ListView(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Row(children: [
              const SizedBox(
                width: 60,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/icon_edit_account.png'),
                )),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                  child: Text(
                'Account',
                textAlign: TextAlign.start,
                style: greenTextStyle2.copyWith(
                  fontWeight: bold,
                  fontSize: 18,
                  color: subtitleColor2,
                ),
              )),
            ]),
            const SizedBox(
              height: 6,
            ),
            Container(
                color: AppTheme.background,
                padding:
                    EdgeInsets.only(left: 25, top: 25, right: 5, bottom: 6),
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: ButtonSetting(
                          alignment: Alignment.centerLeft,
                          title: 'Edit Username',
                          height: 40,
                          width: 300,
                          onPressed: () {
                            Navigator.pushNamed(context, '/edit-user');
                          })),
                  Spacer(),
                  Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppTheme.grey,
                        ),
                      )),
                ])),
            // SizedBox(
            //   height: 6,
            // ),
            Container(
                color: AppTheme.background,
                padding: EdgeInsets.only(left: 25, right: 5, bottom: 6),
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: ButtonSetting(
                          title: 'Edit Passsword',
                          height: 40,
                          width: 300,
                          onPressed: () {
                            Navigator.pushNamed(context, '/edit-pass');
                          })),
                  Spacer(),
                  Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppTheme.grey,
                        ),
                      )),
                ])),
            const SizedBox(
              height: 50,
            ),
            Row(children: [
              const SizedBox(
                width: 60,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/icon_edit_profile.png'),
                )),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                  color: AppTheme.background,
                  // padding:
                  //     EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 6),
                  child: Text(
                    'Profile',
                    textAlign: TextAlign.start,
                    style: greenTextStyle2.copyWith(
                      fontWeight: bold,
                      fontSize: 18,
                      color: subtitleColor2,
                    ),
                  )),
            ]),

            Container(
                color: AppTheme.background,
                padding: const EdgeInsets.only(
                    left: 25, top: 25, right: 5, bottom: 6),
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: ButtonSetting(
                          title: 'Edit Akun',
                          alignment: Alignment.centerLeft,
                          height: 40,
                          width: 300,
                          onPressed: () {
                            Navigator.pushNamed(context, '/edit-bio');
                          })),
                  Spacer(),
                  Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppTheme.grey,
                        ),
                      )),
                ])),
            const SizedBox(
              height: 45,
            ),
            Container(
                // height: 30,
                // width: 150,
                padding: const EdgeInsets.only(
                  left: 90,
                  right: 90,
                  bottom: 50,
                ),
                child: CustomFilledButton(
                  height: 30,
                  width: 100,
                  title: 'Logout',
                  onPressed: () => SignInPage(),
                ))
          ],
        ));
  }
}
