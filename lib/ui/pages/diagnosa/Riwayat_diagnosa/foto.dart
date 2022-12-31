import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/models/Counting.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/models/consul.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/aktivitas/count_iri.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class i extends StatefulWidget {
  const i({Key? key}) : super(key: key);

  @override
  State<i> createState() => _namaLahanState();
}

class _namaLahanState extends State<i> {
  late Future listdata;
  List<Count_Model> listdata1 = [];
  @override
  void initState() {
    super.initState();
    listdata = ServiceApiCountActIri().getData();
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
        padding: EdgeInsets.only(top: 30, bottom: 10, left: 25, right: 25),
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listdata1.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: AppTheme.grey.withOpacity(0.2),
                                offset: Offset(1.1, 1.1),
                                blurRadius: 10.0),
                          ],
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sudah \nDitangani Pemilik ',
                              style: TextStyle(
                                  color: AppTheme.white,
                                  fontFamily: AppTheme.fontName,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                            const Spacer(),
                            Text(
                              ": " + listdata1[index].cOUNTKegiatan!,
                              style: TextStyle(
                                  color: AppTheme.white,
                                  fontFamily: AppTheme.fontName,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: AppTheme.grey.withOpacity(0.2),
                                offset: Offset(1.1, 1.1),
                                blurRadius: 10.0),
                          ],
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Belum \nDitangani Pemilik ',
                              style: TextStyle(
                                  color: AppTheme.white,
                                  fontFamily: AppTheme.fontName,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                            const Spacer(),
                            Text(
                              ": " + listdata1[index].cOUNTKegiatan!,
                              style: TextStyle(
                                  color: AppTheme.white,
                                  fontFamily: AppTheme.fontName,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  ));
            }));
  }
}
