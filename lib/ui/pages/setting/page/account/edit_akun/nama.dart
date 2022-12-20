import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/models/User_model.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NamaUser extends StatefulWidget {
  const NamaUser({Key? key}) : super(key: key);

  @override
  State<NamaUser> createState() => _NamaUserState();
}

class _NamaUserState extends State<NamaUser> {
  late Future listdata;
  List<User> listdata1 = [];
  @override
  void initState() {
    super.initState();
    listdata = ServiceApiLogin().getData();
    listdata.then((value) {
      setState(() {
        listdata1 = value;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listdata1.length,
            itemBuilder: (context, index) {
              return Text(
                listdata1[index].nama!,
                textAlign: TextAlign.center,
                style: greenTextStyle2.copyWith(
                  fontWeight: extraBold,
                  fontSize: 20,
                  color: subtitleColor2,
                ),
              );
            }));
  }
}
