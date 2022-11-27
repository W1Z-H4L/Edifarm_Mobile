import 'package:edifarm/shared/Theme_App.dart';
import 'package:edifarm/shared/theme.dart';
import 'package:edifarm/ui/widgets/buttons.dart';
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
          title: Text(
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
            decoration: BoxDecoration(
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
            Container(
                padding: EdgeInsets.only(
                  left: 45,
                  right: 45,
                  top: 45,
                ),
                child: Text(
                  'Account',
                  textAlign: TextAlign.start,
                  style: greenTextStyle2.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                    color: subtitleColor2,
                  ),
                )),
            SizedBox(
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
                          title: 'Edit Username',
                          height: 50,
                          width: 200,
                          onPressed: () {
                            Navigator.pushNamed(context, '/edit-user');
                          })),
                  Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
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
                padding:
                    EdgeInsets.only(left: 25, top: 25, right: 5, bottom: 6),
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: ButtonSetting(
                          title: 'Edit Passsword',
                          height: 50,
                          width: 200,
                          onPressed: () {
                            Navigator.pushNamed(context, '/edit-pass');
                          })),
                  Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppTheme.grey,
                        ),
                      )),
                ])),
            SizedBox(
              height: 20,
            ),
            Container(
                color: AppTheme.background,
                padding:
                    EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 6),
                child: Text(
                  'Profile',
                  textAlign: TextAlign.start,
                  style: greenTextStyle2.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                    color: subtitleColor2,
                  ),
                )),

            Container(
                color: AppTheme.background,
                padding:
                    EdgeInsets.only(left: 25, top: 25, right: 5, bottom: 6),
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: ButtonSetting(
                          title: 'Edit Akun',
                          height: 50,
                          width: 200,
                          onPressed: () {
                            Navigator.pushNamed(context, '/edit-bio');
                          })),
                  Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppTheme.grey,
                        ),
                      )),
                ])),
            SizedBox(
              height: 45,
            ),
            Container(
                // height: 30,
                // width: 150,
                padding: EdgeInsets.only(
                  left: 90,
                  right: 90,
                  bottom: 50,
                ),
                child: CustomFilledButton(
                  height: 50,
                  width: 150,
                  title: 'Logout',
                  onPressed: () {},
                ))
          ],
        ));
  }
}
