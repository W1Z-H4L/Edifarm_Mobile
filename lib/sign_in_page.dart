import 'package:Edifarm/shared/Theme_App.dart';

import 'package:Edifarm/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  // const SignInPage({Key? key}) : super(key: key);
  bool _isObsecure3 = true;
  bool visible = false;
  final TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    return Scaffold(
      // appBar: AppBar(
      //   brightness: Brightness.dark,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   flexibleSpace: Container(
      //       decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('assets/logo.png'),
      //     ),
      //   )),
      // ),

      body: ListView(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 24,
        ),
        children: <Widget>[
          Container(
            width: 121,
            height: 121,
            margin: const EdgeInsets.only(top: 50),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
              ),
            ),
          ),
          Text(
            'Welcome !!',
            textAlign: TextAlign.center,
            style: AppTheme.custom1.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: AppTheme.green,
            ),
          ),
          Container(
            width: 196,
            height: 177,
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
            // padding: const EdgeInsets.all(22),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(0),
            //   color: Colors.white,
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // NOTE: INPUT EMAIL
                TextFormField(
                  showCursor: true,
                  cursorHeight: 25,
                  style: AppTheme.custom2,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppTheme.green)),
                    labelText: 'Ussername',
                    hintText: 'Masukan Ussername Anda',
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
                  controller: passwordController,
                  showCursor: true,
                  cursorHeight: 25,
                  style: AppTheme.custom2,
                  obscureText: _isObsecure3,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppTheme.green)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObsecure3 ? Icons.visibility : Icons.visibility_off,
                        color: AppTheme.green,
                      ),
                      onPressed: () {
                        setState() {
                          _isObsecure3 = !_isObsecure3;
                        }
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
                  height: 8,
                ),

                const SizedBox(
                  height: 90,
                ),
                Container(
                  alignment: Alignment.center,
                  child: CustomFilledButton(
                    height: 50,
                    width: 200,
                    title: 'Login',
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // CustomTextButton(
          //   title: 'Register',
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/sign-up');
          //   },
          // ),
        ],
      ),
    );
  }
}
//