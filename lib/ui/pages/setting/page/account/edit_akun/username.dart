import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/models/User_model.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsernameUser extends StatefulWidget {
  const UsernameUser({Key? key}) : super(key: key);

  @override
  State<UsernameUser> createState() => _UsernameUserState();
}

class _UsernameUserState extends State<UsernameUser> {
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
                listdata1[index].username!,
                textAlign: TextAlign.center,
                style: greenTextStyle2.copyWith(
                  fontSize: 12,
                  color: subtitleColor2,
                ),
              );
            }));
  }
}
