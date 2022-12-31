import 'dart:convert';

import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/controler/CurentUser.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:Edifarm/ui/pages/diagnosa/diagnosa_list.dart';
import 'package:Edifarm/ui/pages/diagnosa/jenis_field.dart';
import 'package:Edifarm/ui/pages/diagnosa/lahan_field.dart';
import 'package:Edifarm/ui/pages/diagnosa/tanggal_field.dart';
import 'package:Edifarm/ui/pages/diagnosa/upload_foto.dart';
import 'package:Edifarm/ui/pages/jenispadi/nama_padi.dart';
import 'package:Edifarm/ui/pages/lahan/nama_lahan.dart';
import 'package:Edifarm/ui/pages/setting/page/account/edit_akun/nama.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Field extends StatefulWidget {
  const Field({super.key});

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Future listdata;
  List<LahanModel> listdata1 = [];
  late Future listdatajenis;
  List<LahanModel> listdatajenis1 = [];
  TextEditingController isi = TextEditingController();
  TextEditingController tanggal = TextEditingController();

  @override
  void initState() {
    super.initState();
    isi = TextEditingController();
    _controller = AnimationController(vsync: this);
    listdata = ServiceApiLahan().getData();
    listdata.then((value) {
      setState(() {
        listdata1 = value;
      });
    });
    listdatajenis = ServiceApiJenis().getData();
    listdata.then((value) {
      setState(() {
        listdatajenis1 = value;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
    isi.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          brightness: Brightness.dark,
          toolbarHeight: 78,
          title: const Text(
            "Diagnosa",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppTheme.fontName,
              fontWeight: FontWeight.w700,
              fontSize: 22,
              letterSpacing: 1.2,
              color: Colors.white,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32)),
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: AppTheme.white,
                size: 20,
              )),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          centerTitle: true,
          titleTextStyle: whiteTextStyle1,
          titleSpacing: 20,
          shadowColor: AppTheme.grey,
          backgroundColor: AppTheme.green,
        ),
        body: ListView(
          children: [
            // namaLahanD(),
            // JenisPadi(),

            // Container(
            //     padding: EdgeInsets.only(left: 32, right: 32, bottom: 5),
            //     child: TextFormField(
            //       enabled: false,
            //       showCursor: true,
            //       cursorHeight: 25,
            //       style: blackTextStyle2,
            //       decoration: InputDecoration(
            //         floatingLabelBehavior: FloatingLabelBehavior.always,
            //         labelText: 'Nama',
            //         hintText: 'ciherang',
            //         hintStyle: subtitleTextStyle,
            //         labelStyle: greenTextStyle3,
            //         focusColor: subtitleColor2,
            //         fillColor: subtitleColor2,
            //       ),
            //     )),
            // Container(
            //     padding: EdgeInsets.only(left: 32, right: 32, bottom: 5),
            //     child: TextFormField(
            //       enabled: false,
            //       showCursor: true,
            //       cursorHeight: 25,
            //       style: blackTextStyle2,
            //       decoration: InputDecoration(
            //         floatingLabelBehavior: FloatingLabelBehavior.always,
            //         labelText: 'Jenis Padi',
            //         hintText: 'ciherang',
            //         hintStyle: subtitleTextStyle,
            //         labelStyle: greenTextStyle3,
            //         focusColor: subtitleColor2,
            //         fillColor: subtitleColor2,
            //       ),
            //     )),
            // Container(
            //     padding: EdgeInsets.only(left: 32, right: 32, bottom: 5),
            //     child: TextFormField(
            //       enabled: false,
            //       showCursor: true,
            //       cursorHeight: 25,
            //       style: blackTextStyle2,
            //       decoration: InputDecoration(
            //         floatingLabelBehavior: FloatingLabelBehavior.always,
            //         labelText: 'Nama Lahan',
            //         hintText: 'ciherang',
            //         hintStyle: subtitleTextStyle,
            //         labelStyle: greenTextStyle3,
            //         focusColor: subtitleColor2,
            //         fillColor: subtitleColor2,
            //       ),
            //     )),
            // Container(
            //   child: NamaUser(),
            // ),
            // Container(
            //   child: JenisField(),
            // ),
            // Container(
            //   child: LahanField(),
            // ),
            // Deskrip(),
            PotoPadi()
          ],
        ));
  }

  final CurrentUser _currentUser = Get.put(CurrentUser());
  Future deskrip() async {
    try {
      var response = await http.post(Uri.parse(ApiConnect.lapor), body: {
        "isi": isi.text.trim(),
        "tanggal_consul": DateTime.now().toString(),
        "id_user": _currentUser.user.idUser.toString()
      });

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        Navigator.pushNamed(context, '/diag');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      print(e.toString());
    }
  }

  void verifyPindah(BuildContext context) {
    if (isi.text.isEmpty) {
      Fluttertoast.showToast(msg: "Deskripsi Tidak Boleh Kosong");
    } else {
      deskrip();
    }
  }
}
