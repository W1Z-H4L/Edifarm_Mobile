import 'dart:convert';
import 'dart:ui';

import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/controler/CurrentJadwal.dart';
import 'package:Edifarm/controler/Remember_jadwal.dart';
import 'package:Edifarm/models/Aktivitas.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/aktivitas/cek.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Aktivitas extends StatefulWidget {
  const Aktivitas({super.key});

  @override
  State<Aktivitas> createState() => _AktivitasState();
}

class _AktivitasState extends State<Aktivitas>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Future listblog;
  List<Aktivitas1> listblog1 = [];

  @override
  void initState() {
    super.initState();
    listblog = ServiceApiAktiv().getData();
    listblog.then((value) {
      setState(() {
        listblog1 = value;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  // bool isi = false;

  // data() {
  //   setState(() {
  //     _currentJadwal.jadwal.status = !_currentJadwal.jadwal.status!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: listblog1.length == 0
            ? const Center(
                child: Text(
                  'Tidak ada kegiatan untuk saat ini',
                  style: TextStyle(
                      color: AppTheme.darkText,
                      fontFamily: AppTheme.fontName,
                      fontSize: 12),
                ),
              )
            : ListView.builder(
                itemCount: listblog1.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                        right: 32,
                        left: 32,
                        top: 24,
                      ),
                      child: InkWell(
                          onTap: () {
                            aktiv();
                          },
                          child: DottedBorder(
                            strokeWidth: 1,
                            borderType: BorderType.RRect,
                            radius: Radius.circular(25),
                            color: Color.fromARGB(255, 1, 104, 97),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 16,
                                      left: 16,
                                      right: 16,
                                    ),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                              padding: EdgeInsets.only(
                                                  top: 0, left: 0),
                                              child: Text(
                                                  listblog1[index].kegiatan!,
                                                  style: const TextStyle(
                                                    fontFamily:
                                                        AppTheme.fontName,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 14,
                                                    letterSpacing: 0.2,
                                                    color: AppTheme.green,
                                                  ))),
                                          const Spacer(),

                                          // Checkbox(
                                          //   value: _currentJadwal.jadwal.status,
                                          //   onChanged: (value) {
                                          //     data();
                                          //   },
                                          //   checkColor: AppTheme.white,
                                          //   hoverColor: AppTheme.green,
                                          //   activeColor: AppTheme.green,
                                          // )
                                        ]),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 16),
                                      child: Row(
                                        children: [
                                          Container(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                      DateTime.now().toString(),
                                                      style: const TextStyle(
                                                        fontFamily:
                                                            AppTheme.fontName,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 10,
                                                        letterSpacing: 0.2,
                                                        color: AppTheme.green,
                                                      )))),
                                          const Spacer(),
                                          Container(
                                            child: Text(
                                                _currentJadwal.jadwal.idJadwal!,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                  fontFamily: AppTheme.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  letterSpacing: 0.2,
                                                  color: AppTheme.green,
                                                )),
                                          )
                                        ],
                                      ))
                                ]),
                          )));
                }));
  }

  final CurrentJadwal _currentJadwal = Get.put(CurrentJadwal());
  Future aktiv() async {
    try {
      var response = await http.patch(Uri.parse(ApiConnect.aktiv), body: {
        "id_jadwal": _currentJadwal.jadwal.idJadwal.toString(),
      });

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        Aktivitas1 JadwalInfo = Aktivitas1.fromJson(data['jadwal']);
        await RememberJadwal().storeJadwal(json.encode(JadwalInfo));
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      print(e.toString());
    }
  }
}
