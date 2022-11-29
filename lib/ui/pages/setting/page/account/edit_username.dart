import 'package:Edifarm/shared/theme.dart';
import 'package:Edifarm/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class EditUsername extends StatefulWidget {
  @override
  State<EditUsername> createState() => _EditUsername();
}

class _EditUsername extends State<EditUsername> {
  final double coverHeight = 280;
  final double profileHeight = 158;
  final TextEditingController passwordController = new TextEditingController();
  bool _isObsecure3 = true;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          toolbarHeight: 70,
          title: Text(
            "Edit Username",
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          titleTextStyle: whiteTextStyle1,
          titleSpacing: 20,
          shadowColor: Color.fromARGB(255, 47, 101, 88),
          backgroundColor: Color.fromARGB(255, 47, 101, 88),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
        ),
        body: ListView(children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                height: coverHeight,
                width: double.infinity,
                fit: BoxFit.cover,
                color: Color.fromARGB(154, 0, 106, 108),
                colorBlendMode: BlendMode.modulate,
                'assets/backgroun_profil.png',
              ),
              Positioned(
                top: top,
                child: CircleAvatar(
                  radius: profileHeight / 2,
                  backgroundColor: whiteColor,

                  child: Image.asset(
                    'assets/potoprofil.png',
                    height: 144,
                    fit: BoxFit.fitHeight,
                  ),
                  backgroundImage: AssetImage(
                    'assets/gambar_lingkaran.png',
                  ),

                  // child: Image.asset(
                  //   'assets/potoprofil.png',
                  // ),
                  // decoration: const BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage(
                  //     'assets/potoprofil.png',
                  //   )),
                  // )))
                ),
              ),
              // Positioned(
              //     bottom: 20,
              //     right: 170,
              //     child: Container(
              //       height: 40,
              //       width: 40,
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         border: Border.all(
              //           width: 4,
              //           color: Theme.of(context).scaffoldBackgroundColor,
              //         ),
              //         color: subtitleColor2,
              //       ),
              //       child: IconButton(
              //         icon: Icon(
              //           Icons.edit_sharp,
              //           color: Colors.white,
              //         ),
              //         onPressed: () {},
              //       ),
              //     ))
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Aditiya Gilang',
            textAlign: TextAlign.center,
            style: greenTextStyle2.copyWith(
              fontWeight: extraBold,
              fontSize: 20,
              color: subtitleColor2,
            ),
          ),
          Text(
            'Aditiya',
            textAlign: TextAlign.center,
            style: greenTextStyle2.copyWith(
              fontSize: 12,
              color: subtitleColor2,
            ),
          ),
          Text(
            'Semangat Bertani Yah Gais ;)',
            textAlign: TextAlign.center,
            style: greenTextStyle2.copyWith(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
              child: Text(
                'Edit Username',
                textAlign: TextAlign.start,
                style: greenTextStyle2.copyWith(
                  fontSize: 18,
                  fontWeight: extraBold,
                  color: subtitleColor2,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
              child: TextFormField(
                showCursor: true,
                cursorHeight: 20,
                style: blackTextStyle2,
                decoration: InputDecoration(
                  // suffixIcon: IconButton(
                  //   icon: Icon(
                  //     Icons.edit_sharp,
                  //     color: subtitleColor2,
                  //   ),
                  //   onPressed: () {},
                  // ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Username',
                  hintText: 'Aditiya Gilang',
                  hintStyle: subtitleTextStyle,
                  labelStyle: greenTextStyle3,
                  focusColor: subtitleColor2,
                  fillColor: subtitleColor2,
                ),
              )),
          SizedBox(
            height: 3,
          ),
          Container(
              padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
              child: TextFormField(
                showCursor: true,
                cursorHeight: 25,
                style: blackTextStyle2,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.edit_sharp,
                      color: subtitleColor2,
                    ),
                    onPressed: () {},
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Username Baru',
                  hintText: 'Masukan Username',
                  hintStyle: subtitleTextStyle,
                  labelStyle: greenTextStyle3,
                  focusColor: subtitleColor2,
                  fillColor: subtitleColor2,
                ),
              )),
          SizedBox(
            height: 3,
          ),
          Container(
              padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
              child: TextFormField(
                showCursor: true,
                cursorHeight: 20,
                style: blackTextStyle2,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.edit_sharp,
                      color: subtitleColor2,
                    ),
                    onPressed: () {},
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Konfirmasi Username',
                  hintText: 'Masukan Konfirmasi',
                  hintStyle: subtitleTextStyle,
                  labelStyle: greenTextStyle3,
                  focusColor: subtitleColor2,
                  fillColor: subtitleColor2,
                ),
              )),
          SizedBox(
            height: 3,
          ),
          Container(
              padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
              child: TextFormField(
                controller: passwordController,
                enabled: false,
                showCursor: true,
                cursorHeight: 25,
                style: blackTextStyle2,
                obscureText: _isObsecure3,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObsecure3 ? Icons.visibility : Icons.visibility_off,
                      color: subtitleColor2,
                    ),
                    onPressed: () {
                      setState() {
                        _isObsecure3 = !_isObsecure3;
                      }
                    },
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Password',
                  hintText: 'Masukan Password',
                  hintStyle: subtitleTextStyle,
                  labelStyle: greenTextStyle3,
                  focusColor: subtitleColor2,
                  fillColor: subtitleColor2,
                ),
              )),
          SizedBox(
            height: 3,
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
                height: 30,
                width: 150,
                title: 'Save',
                onPressed: () {},
              ))
        ]));
  }
}
