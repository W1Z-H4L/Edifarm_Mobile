import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/controler/CurentUser.dart';
import 'package:Edifarm/controler/CurrentJadwal.dart';
import 'package:Edifarm/models/Aktivitas.dart';
import 'package:Edifarm/models/consul.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/diagnosa/Riwayat_diagnosa/foto.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:get/get.dart';

class Riwayat_Consul extends StatefulWidget {
  const Riwayat_Consul({super.key});

  @override
  State<Riwayat_Consul> createState() => _Riwayat_ConsulState();
}

class _Riwayat_ConsulState extends State<Riwayat_Consul>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Future listblog;
  List<Consul_Model> listblog1 = [];
  final CurrentUser _currentUser = Get.put(CurrentUser());

  @override
  void initState() {
    super.initState();
    listblog = ServiceApiConsul().getData();
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

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 650,
        child: listblog1.length == 0
            ? const Center(
                child: Text(
                  'Belum Ada Diagnosa Apapun',
                  style: TextStyle(
                      color: AppTheme.darkText,
                      fontFamily: AppTheme.fontName,
                      fontSize: 12),
                ),
              )
            : ListView.builder(
                itemCount: listblog1.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                      width: 400,
                      height: 150,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 20, left: 20),
                          child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                          padding: EdgeInsets.only(
                                              top: 50, bottom: 50),
                                          height: 120,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: AlertDialog(
                                            title: Text(
                                              "Detail konsultasi pada tanggal " +
                                                  listblog1[index]
                                                      .tanggalConsul!,
                                              selectionColor: Colors.white,
                                              style: const TextStyle(
                                                  color: AppTheme.black,
                                                  fontFamily: AppTheme.fontName,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            content: ListView(children: [
                                              Text(
                                                listblog1[index].isi!,
                                                style: const TextStyle(
                                                    color: AppTheme.black,
                                                    fontFamily:
                                                        AppTheme.fontName,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Image.network(
                                                  "http://edifarm.wstif3d.id/api/image_diag/" +
                                                      listblog1[index]
                                                          .foto_consul!)
                                            ]),
                                            actions: [
                                              Container(
                                                height: 30,
                                                width: 60,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: AppTheme.orange,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      "Kembali",
                                                      style: TextStyle(
                                                          color: AppTheme.white,
                                                          fontFamily:
                                                              AppTheme.fontName,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    )),
                                              ),
                                            ],
                                          ));
                                    });
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppTheme.white,
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: AppTheme.grey.withOpacity(0.2),
                                          offset: Offset(1.1, 1.1),
                                          blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Image.network(
                                        "http://edifarm.wstif3d.id/api/image_diag/" +
                                            listblog1[index].foto_consul!,
                                        height: 200,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          ),
                                          const Text(
                                            "Pengiriman diagnosa\ndilakukan pada tanggal",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontFamily: AppTheme.fontName,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            listblog1[index].tanggalConsul!,
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontFamily: AppTheme.fontName,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Status konsultasi: " +
                                                listblog1[index].status! +
                                                " ditangani",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontFamily: AppTheme.fontName,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10),
                                          )
                                        ],
                                      )
//gambar box fit
//column isi tulisan
                                    ],
                                  )))));
                }));
  }
}
