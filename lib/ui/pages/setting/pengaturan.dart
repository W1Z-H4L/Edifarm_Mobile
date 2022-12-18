import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:Edifarm/sign_in_page.dart';
import 'package:Edifarm/ui/pages/setting/edit_akun.dart';
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
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppTheme.white,
              size: 20,
            )),
        shadowColor: AppTheme.grey,
        backgroundColor: AppTheme.green,
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
              padding: EdgeInsets.only(top: 25, right: 18, bottom: 6),
              alignment: Alignment.centerLeft,
              child: Row(children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: ButtonSetting(
                        alignment: Alignment.centerLeft,
                        title: 'Edit Username',
                        height: 40,
                        width: 250,
                        onPressed: () {
                          Navigator.pushNamed(context, '/edit-user');
                        })),
                Spacer(),
                Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/edit-user');
                      },
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
              padding: EdgeInsets.only(right: 18, bottom: 6),
              alignment: Alignment.centerLeft,
              child: Row(children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: ButtonSetting(
                        alignment: Alignment.centerLeft,
                        title: 'Edit Password',
                        height: 40,
                        width: 250,
                        onPressed: () {
                          Navigator.pushNamed(context, '/edit-pass');
                        })),
                Spacer(),
                Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/edit-pass');
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppTheme.grey,
                      ),
                    )),
              ])),

          Container(
              color: AppTheme.background,
              padding: EdgeInsets.only(right: 18, bottom: 6),
              alignment: Alignment.centerLeft,
              child: Row(children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: ButtonSetting(
                        alignment: Alignment.centerLeft,
                        title: 'Edit Biodata',
                        height: 40,
                        width: 250,
                        onPressed: () {
                          Navigator.pushNamed(context, '/edit-bio');
                        })),
                Spacer(),
                Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/edit-bio');
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppTheme.grey,
                      ),
                    )),
              ])),
          const SizedBox(
            height: 50,
          ),

          InkWell(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 50, left: 100, bottom: 50, right: 100),
              child: Container(
                height: 40,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppTheme.green,
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  'Keluar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: AppTheme.fontName,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: EdgeInsets.only(top: 50, bottom: 50),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: AlertDialog(
                        title: const Text(
                          "Apakah Anda Yakin Ingin Keluar Dari Aplikasi ? \n ",
                          selectionColor: Colors.white,
                          style: TextStyle(
                              color: AppTheme.black,
                              fontFamily: AppTheme.fontName,
                              fontSize: 12),
                        ),
                        actions: [
                          Container(
                            height: 30,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppTheme.orange,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Tidak",
                                  style: TextStyle(
                                      color: AppTheme.white,
                                      fontFamily: AppTheme.fontName,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.orange),
                                color: AppTheme.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/sign-in');
                                },
                                child: const Text(
                                  "Ya",
                                  style: TextStyle(
                                      color: AppTheme.orange,
                                      fontFamily: AppTheme.fontName,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                        ],
                      ),
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
