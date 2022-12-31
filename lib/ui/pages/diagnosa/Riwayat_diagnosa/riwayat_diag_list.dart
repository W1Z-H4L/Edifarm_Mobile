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
        height: 680,
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
                    height: 200,
                    child: Stack(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 32, right: 32, bottom: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: AppTheme.grey.withOpacity(0.2),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topRight: Radius.circular(68.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 100, left: 16, right: 16, bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  listblog1[index].tanggalConsul!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontName,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    letterSpacing: 0.2,
                                    color: AppTheme.black,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          listblog1[index].isi!,
                                          style: TextStyle(
                                            fontFamily: AppTheme.fontName,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            letterSpacing: 0.2,
                                            color: AppTheme.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 32,
                        right: 32,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Container(
                                      padding:
                                          EdgeInsets.only(top: 50, bottom: 50),
                                      height: 120,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: AlertDialog(
                                        title: Text(
                                          "Detail Diagnosa Diagnosa Pada Tanggal " +
                                              listblog1[index].tanggalConsul!,
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
                                                fontFamily: AppTheme.fontName,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Image.network(
                                              "http://edifarm.wstif3d.id/api/image_diag/" +
                                                  listblog1[index].foto_consul!)
                                        ]),
                                        actions: [
                                          Container(
                                            height: 30,
                                            width: 60,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: AppTheme.orange,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
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
                          child: listblog1[index].foto_consul == null
                              ? Center(
                                  child: CircularProgressIndicator(
                                      color: AppTheme.orange),
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topRight: Radius.circular(68.0)),
                                  child: Image.network(
                                    "http://edifarm.wstif3d.id/api/image_diag/" +
                                        listblog1[index].foto_consul!,
                                    width: 450,
                                    height: 95,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                      ),
                      Positioned(
                        top: 142,
                        left: 260,
                        right: 40,
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppTheme.green,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: AppTheme.green.withOpacity(0.2),
                                      offset: const Offset(1.1, 1.1),
                                      blurRadius: 8.0),
                                ]),
                            child: Text(listblog1[index].status!,
                                style: const TextStyle(
                                  fontFamily: AppTheme.fontName,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12,
                                  letterSpacing: 0.2,
                                  color: AppTheme.white,
                                ))),
                      ),
                    ]),
                  );
                }));
  }
}
