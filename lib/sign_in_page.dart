import 'dart:convert';

import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/controler/Remember_User.dart';
import 'package:Edifarm/models/User_model.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/dashboard/list_view/dashboard_screen.dart';

import 'package:Edifarm/ui/widgets/buttons.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

enum Loginstatus { notSignin, signin }

class _SignInPageState extends State<SignInPage> {
  // const SignInPage({Key? key}) : super(key: key);
  bool _secureText = true;
  Loginstatus _loginstatus = Loginstatus.notSignin;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  void initState() {
    // getPref();
    // TODO: implement initState
    super.initState();
    // getPref();

    username = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    username.dispose();
    password.dispose();
  }

  bool _loading = false;

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    switch (_loginstatus) {
      case Loginstatus.notSignin:
        return Scaffold(
            body: ListView(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  bottom: 24,
                ),
                children: <Widget>[
              Container(
                width: 161,
                height: 161,
                margin: const EdgeInsets.only(top: 50),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
              Text(
                'Hallo !',
                textAlign: TextAlign.center,
                style: AppTheme.custom1.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  color: AppTheme.green,
                ),
              ),
              Container(
                width: 216,
                height: 197,
                // margin: const EdgeInsets.only(top: 5, bottom: 55),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/gambar_login.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // NOTE: INPUT EMAIL
                  TextFormField(
                    controller: username,
                    showCursor: true,
                    cursorHeight: 25,
                    style: GoogleFonts.montserrat(),
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppTheme.green)),
                      labelText: 'Username',
                      hintText: 'Masukan Username Anda',
                      hintStyle: AppTheme.custom,
                      labelStyle: AppTheme.custom1,
                      focusColor: AppTheme.green,
                      fillColor: AppTheme.green,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // NOTE: INPUT PASSWORD
                  TextFormField(
                    controller: password,
                    showCursor: true,
                    cursorHeight: 25,
                    style: GoogleFonts.montserrat(),
                    obscureText: _secureText,
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppTheme.green)),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _secureText ? Icons.visibility_off : Icons.visibility,
                          color: AppTheme.green,
                        ),
                        onPressed: () {
                          showHide();
                        },
                      ),
                      labelText: 'Password',
                      hintText: 'Masukan Password Anda',
                      hintStyle: AppTheme.custom,
                      labelStyle: AppTheme.custom1,
                      focusColor: AppTheme.green,
                      fillColor: AppTheme.green,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 70,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: AppTheme.green, onPrimary: AppTheme.white),
                        onPressed: () => verifyLogin(),
                        child: const Text(
                          'Masuk',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppTheme.white,
                            fontFamily: AppTheme.fontName,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                ],
              )),
            ]));
      case Loginstatus.signin:
        return HomeScreen();
    }
  }

  void verifyLogin() {
    if (username.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Username Harus Diisi",
        backgroundColor: Colors.red[300],
        fontSize: 12,
      );
    } else if (password.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Password Harus Diisi",
          backgroundColor: Colors.red[300],
          fontSize: 12);
    } else {
      login();
    }
  }

  Future login() async {
    try {
      var response = await http.post(Uri.parse(ApiConnect.signin), body: {
        "username": username.text,
        "password": password.text,
      });

      if (response.statusCode == 200) {
        final user = jsonDecode(response.body);
        if (user['success'] == true) {
          print(user);
          if (user['success'] == false) {
            setState(() {
              _loading = false;
            });
            snackBarFailed();
          } else {
            setState(() {
              _loading = true;
            });
            snackBarSucces();

            setState(() {
              _loginstatus = Loginstatus.signin;
              // sharePref(data, username, password);
            });
            User userInfo = User.fromJson(user['user']);
            await RememberUser().storeUser(json.encode(userInfo));
            // ignore: use_build_context_synchronously
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route) => false);
            // sharePref(data, user, pass);
            // _loginstatus = Loginstatus.signin;
            // } else {
            //   setState(() {
            //     _loading = false;
            //     snackBarFailed();
            //   });
          }
        }
      } else {
        snackBarFailed();
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      print(e.toString());
    }
  }

  snackBarFailed() {
    {
      Container(
        height: 50,
        width: 50,
        color: AppTheme.green,
      );
      Fluttertoast.showToast(
        msg: 'Ussername Atau Password Salah \n Silahkan Login Kembali',
        backgroundColor: Colors.red[300],
        textColor: Colors.white,
        fontSize: 12,
      );
    }
  }

  snackBarPass() {
    {
      Container(
        height: 50,
        width: 50,
        color: AppTheme.green,
      );
      Fluttertoast.showToast(
        msg: 'Password Salah \n Silahkan Login Kembali',
        backgroundColor: Colors.red[300],
        textColor: Colors.white,
        fontSize: 12,
      );
    }
  }

  snackBarSucces() {
    Fluttertoast.showToast(
      msg: 'Berhasil Login',
      backgroundColor: Colors.green[300],
      fontSize: 12,
      textColor: Colors.white,
    );
  }

  // Future sharePref(username) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   setState(() {
  //     preferences.setInt("username", username);
  //     preferences.commit();
  //   });
  // }

  // String? user = '';
  // String? pass = '';
  // var data;
  // getPref() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   safaedata(username, password);
  //   setState(() {
  //     data = preferences.getBool('success');
  //     _loginstatus = data == true ? Loginstatus.signin : Loginstatus.notSignin;
  //   });
  // }

  // sharePref(data, user, pass) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   setState(() {
  //     preferences.setBool("success", data);
  //     preferences.setString('username', user!);
  //     preferences.setString('password', pass!);
  //   });
  // }

  // safaedata(username, password) async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.setString('username', username);
  //   preferences.setString('password', password);
  // }
}
