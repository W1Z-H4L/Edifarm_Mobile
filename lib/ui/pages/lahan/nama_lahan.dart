import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class namaLahan extends StatefulWidget {
  const namaLahan({Key? key}) : super(key: key);

  @override
  State<namaLahan> createState() => _namaLahanState();
}

class _namaLahanState extends State<namaLahan> {
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
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listdata1.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      listdata1[index].namaLahan!,
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
