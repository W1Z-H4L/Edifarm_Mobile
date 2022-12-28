import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'package:Edifarm/controler/CurentUser.dart';
import 'package:intl/date_symbol_data_local.dart';
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
import 'package:intl/intl.dart';

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
  DateTime? _currentTime;

  @override
  void initState() {
    super.initState();
    listblog = ServiceApiAktiv().getData();
    listblog.then((value) {
      setState(() {
        listblog1 = value;
      });
    });
    initializeDateFormatting();
    _currentTime = DateTime.now();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now();
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          padding:
                                              EdgeInsets.only(top: 0, left: 0),
                                          child: Text(
                                              listblog1[index].kegiatan!,
                                              style: const TextStyle(
                                                fontFamily: AppTheme.fontName,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 16,
                                                letterSpacing: 0.2,
                                                color: AppTheme.green,
                                              ))),
                                      const Spacer(),
                                      listblog1[index].status! == 'Selesai'
                                          ? Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  color: AppTheme.white,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                        color: AppTheme.green
                                                            .withOpacity(0.2),
                                                        offset: const Offset(
                                                            1.1, 1.1),
                                                        blurRadius: 8.0),
                                                  ]),
                                              child: Text(
                                                  listblog1[index].status!,
                                                  style: const TextStyle(
                                                    fontFamily:
                                                        AppTheme.fontName,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12,
                                                    letterSpacing: 0.2,
                                                    color: AppTheme.green,
                                                  )))
                                          : InkWell(
                                              onTap: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 50,
                                                                bottom: 50),
                                                        height: 150,
                                                        width: 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                        ),
                                                        child: AlertDialog(
                                                          title: Text(
                                                            "Apakah Anda Sudah Melakukan " +
                                                                listblog1[index]
                                                                    .kegiatan! +
                                                                " ?",
                                                            selectionColor:
                                                                Colors.white,
                                                            style: TextStyle(
                                                                color: AppTheme
                                                                    .black,
                                                                fontFamily:
                                                                    AppTheme
                                                                        .fontName,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          actions: [
                                                            Container(
                                                              height: 30,
                                                              width: 60,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              decoration: BoxDecoration(
                                                                  color: AppTheme
                                                                      .orange,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child:
                                                                      const Text(
                                                                    "Tidak",
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .white,
                                                                        fontFamily:
                                                                            AppTheme
                                                                                .fontName,
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  )),
                                                            ),
                                                            Container(
                                                              height: 30,
                                                              width: 60,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .orange),
                                                                  color: AppTheme
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    aktiv(
                                                                        index);
                                                                    setState(
                                                                        () {
                                                                      if (listblog1[index]
                                                                              .status !=
                                                                          "Selesai") {
                                                                        listblog1[index].status =
                                                                            "Selesai";
                                                                      }
                                                                    });

                                                                    ;
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child:
                                                                      const Text(
                                                                    "Ya",
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .orange,
                                                                        fontFamily:
                                                                            AppTheme
                                                                                .fontName,
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  )),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    });
                                              },
                                              child: Container(
                                                  padding: EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                      color: AppTheme.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      boxShadow: <BoxShadow>[
                                                        BoxShadow(
                                                            color: AppTheme
                                                                .green
                                                                .withOpacity(
                                                                    0.2),
                                                            offset:
                                                                const Offset(
                                                                    1.1, 1.1),
                                                            blurRadius: 8.0),
                                                      ]),
                                                  child: Text(
                                                      listblog1[index].status!,
                                                      style: const TextStyle(
                                                        fontFamily:
                                                            AppTheme.fontName,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 12,
                                                        letterSpacing: 0.2,
                                                        color: AppTheme.white,
                                                      ))),

                                              // Checkbox(
                                              //   value: _currentJadwal.jadwal.status,
                                              //   onChanged: (value) {
                                              //     data();
                                              //   },
                                              //   checkColor: AppTheme.white,
                                              //   hoverColor: AppTheme.green,
                                              //   activeColor: AppTheme.green,
                                              // )
                                            )
                                    ]),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16, left: 16, right: 16, bottom: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 1,
                                              ),
                                              child: Text(
                                                  DateFormat('dd-MM-yyyy')
                                                      .format(_currentTime!),
                                                  style: const TextStyle(
                                                    fontFamily:
                                                        AppTheme.fontName,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 10,
                                                    letterSpacing: 0.2,
                                                    color: AppTheme.green,
                                                  )))),
                                      const Spacer(),
                                      Container(
                                        child: Text(
                                            DateTime.now().hour.toString() +
                                                " : " +
                                                DateTime.now()
                                                    .minute
                                                    .toString(),
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontFamily: AppTheme.fontName,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 14,
                                              letterSpacing: 0.2,
                                              color: AppTheme.green,
                                            )),
                                      )
                                    ],
                                  ))
                            ]),
                      ));
                }));
  }

// Future aktiv() async {
//   int currentIndex = 0;
//   bool isRunning = false;

//   while (true) {
//     if (isRunning && currentIndex < listblog1.length) {
//       await http.post(
//         Uri.parse(ApiConnect.kegiatan),
//         body: {
//           "id_user": _currentUser.user.idUser.toString(),
//           "id_jadwal": listblog1[currentIndex].idJadwal.toString(),
//         },
//       );

//       currentIndex++;
//     }

//     // Pause the loop until the isRunning variable is set to true again
//     await Future.delayed(Duration(seconds: 1));
//   }
// }

  final CurrentUser _currentUser = Get.put(CurrentUser());
  Future aktiv(int i) async {
    await http.post(
      Uri.parse(ApiConnect.kegiatan),
      body: {
        "id_user": _currentUser.user.idUser.toString(),
        "id_jadwal": listblog1[i].idJadwal.toString(),
      },
    );

    // await Future.wait(
    //   listblog1.map((jadwal) async {
    //     return await http.post(
    //       Uri.parse(ApiConnect.kegiatan),
    //       body: {
    //         "id_user": _currentUser.user.idUser.toString(),
    //         "id_jadwal": jadwal.idJadwal.toString(),
    //       },
    //     );
    //   }),
    // );

    // try {
    //   var response = await http.post(Uri.parse(ApiConnect.kegiatan), body: {
    //     "id_user": _currentUser.user.idUser.toString(),
    //     "id_jadwal": listblog1[index].idJadwal.toString(),
    //   });

    //   if (response.statusCode == 200) {
    //     print(response.body);
    //     final data = jsonDecode(response.body);
    //   }
    // } catch (e) {
    //   Fluttertoast.showToast(msg: e.toString());
    //   print(e.toString());
    // }
  }
}
