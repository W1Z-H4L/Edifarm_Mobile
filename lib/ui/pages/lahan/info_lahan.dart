import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/shared/Theme_App.dart';

import 'package:flutter/material.dart';

class InfoLahan extends StatefulWidget {
  const InfoLahan({Key? key}) : super(key: key);

  @override
  State<InfoLahan> createState() => _DataLahanState();
}

class _DataLahanState extends State<InfoLahan> {
  late Future listdata;
  List<LahanModel> listdata1 = [];
  @override
  void initState() {
    super.initState();
    listdata = ServiceApiLahan().getData();
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
        height: 100,
        child: listdata1.length == 0
            ? Center(
                child: CircularProgressIndicator(color: AppTheme.orange),
              )
            : ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listdata1.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              color: AppTheme.nearlyWhite,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: AppTheme.grey.withOpacity(0.2),
                                    offset: const Offset(1.1, 1.1),
                                    blurRadius: 8.0),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 4.0, bottom: 4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Status',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppTheme.fontName,
                                    fontSize: 14,
                                    letterSpacing: 0.27,
                                    color: AppTheme.green,
                                  ),
                                ),
                                Text(
                                  listdata1[index].status!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontFamily: AppTheme.fontName,
                                    fontSize: 14,
                                    letterSpacing: 0.27,
                                    color: AppTheme.grey,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      const Spacer(),
                      Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              color: AppTheme.nearlyWhite,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: AppTheme.grey.withOpacity(0.2),
                                    offset: const Offset(1.1, 1.1),
                                    blurRadius: 8.0),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 4.0, bottom: 4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Luas',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppTheme.fontName,
                                    fontSize: 14,
                                    letterSpacing: 0.27,
                                    color: AppTheme.green,
                                  ),
                                ),
                                Text(
                                  listdata1[index].luasLahan! + " Ha",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontFamily: AppTheme.fontName,
                                    fontSize: 14,
                                    letterSpacing: 0.27,
                                    color: AppTheme.grey,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      const Spacer(),
                      Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              color: AppTheme.nearlyWhite,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: AppTheme.grey.withOpacity(0.2),
                                    offset: const Offset(1.1, 1.1),
                                    blurRadius: 8.0),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 4.0, bottom: 4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Tempat',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppTheme.fontName,
                                    fontSize: 14,
                                    letterSpacing: 0.27,
                                    color: AppTheme.green,
                                  ),
                                ),
                                Text(
                                  listdata1[index].tempat!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontFamily: AppTheme.fontName,
                                    fontSize: 14,
                                    letterSpacing: 0.27,
                                    color: AppTheme.grey,
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  );
                }));
  }
}
