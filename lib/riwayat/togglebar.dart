import 'package:edifarm/aktivitas/listview_activity.dart';
import 'package:edifarm/aktivitas/title_activity.dart';
import 'package:edifarm/riwayat/riwayart_pupuk.dart';

import 'package:edifarm/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:toggle_bar/toggle_bar.dart';

class toggleBarView extends StatefulWidget {
  @override
  _toggleBarViewState createState() => _toggleBarViewState();
}

class _toggleBarViewState extends State<toggleBarView> {
  List<Widget> labels = [
    ListViewRiwayatPupuk(),
    ListViewActivity(),
    TitleActivity()
  ];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        brightness: Brightness.dark,
        toolbarHeight: 70,
        title: Text(
          "Riwayat",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        titleTextStyle: whiteTextStyle1,
        titleSpacing: 20,
        shadowColor: Color.fromARGB(255, 47, 101, 88),
        backgroundColor: Color.fromARGB(255, 47, 101, 88),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        ToggleBar(
          labels: [],
          // textColor: Colors.white,
          // selectedTextColor: Colors.black,
          // backgroundColor: subtitleColor2,
          // selectedTabColor: AppTheme.green,
          // labelTextStyle: TextStyle(fontWeight: FontWeight.bold),
          onSelectionUpdated: (index) {
            setState(() {
              counter = index;
            });
          },
        ),
        SizedBox(
          height: 200,
        ),
        Container(
          decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage('assets/model.png'),
              //   ),
              ),
          child: (
                  // Text(
                  labels[counter]
              //     //   style: TextStyle(
              //     //       fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
        ),
      ])),
    );
  }
}
