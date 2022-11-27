import 'package:edifarm/shared/Theme_App.dart';
import 'package:edifarm/shared/theme.dart';
import 'package:edifarm/ui/pages/setting/pengaturan.dart';

import 'package:edifarm/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key, this.animationController, this.animation})
      : super(key: key);

  final AnimationController? animationController;
  final Animation<double>? animation;
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage>
    with TickerProviderStateMixin {
  bool showPassword = false;
  Animation<double>? topBarAnimation;
  List<Widget> listViews = <Widget>[];
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;

  @override
  void initState() {
    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: widget.animationController!,
            curve: Interval(0, 0.5, curve: Curves.fastOutSlowIn)));
    addAllListData();

    scrollController.addListener(() {
      if (scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          setState(() {
            topBarOpacity = 1.0;
          });
        }
      } else if (scrollController.offset <= 24 &&
          scrollController.offset >= 0) {
        if (topBarOpacity != scrollController.offset / 24) {
          setState(() {
            topBarOpacity = scrollController.offset / 24;
          });
        }
      } else if (scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          setState(() {
            topBarOpacity = 0.0;
          });
        }
      }
    });
    super.initState();
  }

  void addAllListData() {
    const int count = 5;
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(right: 0),
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: AppTheme.green,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SettingsPage()));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                              ))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: AppTheme.green,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
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
                    'Edit Biodata',
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
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
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
                      labelText: 'Nama',
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
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
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
                      labelText: 'Alamat',
                      hintText: 'Jombang',
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
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
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
                      labelText: 'Nomer Telepon',
                      hintText: '082232937743',
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
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
                  child: TextFormField(
                    enabled: false,
                    showCursor: true,
                    cursorHeight: 25,
                    style: blackTextStyle2,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Tanggal Lahir',
                      hintText: '21 November 2003',
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
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
                  child: TextFormField(
                    enabled: false,
                    showCursor: true,
                    cursorHeight: 25,
                    style: blackTextStyle2,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Jenis Kelamin',
                      hintText: 'Laki - Laki',
                      hintStyle: subtitleTextStyle,
                      labelStyle: greenTextStyle3,
                      focusColor: subtitleColor2,
                      fillColor: subtitleColor2,
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
              Container(
                  // height: 30,
                  // width: 150,
                  padding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                    bottom: 90,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomFilledButton(
                        onPressed: () {},
                        height: 50,
                        width: 150,
                        title: 'Cancel',
                        // onPressed: () {},
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: CustomFilledButton(
                          onPressed: () {},
                          height: 50,
                          width: 150,
                          title: 'Save',
                          // onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}