import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/models/User_model.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:Edifarm/ui/pages/setting/page/account/edit_akun/nama.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NamaUserField extends StatefulWidget {
  const NamaUserField({Key? key}) : super(key: key);

  @override
  State<NamaUserField> createState() => _NamaUserFieldState();
}

class _NamaUserFieldState extends State<NamaUserField> {
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
              return Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
                  child: TextFormField(
                    // controller: name,
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
                      hintText: listdata1[index].nama!,
                      hintStyle: subtitleTextStyle,
                      labelStyle: greenTextStyle3,
                      focusColor: subtitleColor2,
                      fillColor: subtitleColor2,
                    ),
                  ));
            }));
  }
}
