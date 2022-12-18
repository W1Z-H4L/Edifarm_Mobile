import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/models/Jenis_Model.dart';

import 'package:Edifarm/shared/Theme_App.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JenisPadi extends StatefulWidget {
  const JenisPadi({Key? key}) : super(key: key);

  @override
  State<JenisPadi> createState() => _JenisPadiState();
}

class _JenisPadiState extends State<JenisPadi> {
  late Future listdata;
  List<JenisModel> listdata1 = [];
  @override
  void initState() {
    super.initState();
    listdata = ServiceApiJenis().getData();
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
        height: 60,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listdata1.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      listdata1[index].namaJenis!,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: AppTheme.fontName,
                        fontSize: 22,
                        letterSpacing: 0.27,
                        color: AppTheme.green,
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
