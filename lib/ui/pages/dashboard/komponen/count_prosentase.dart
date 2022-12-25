import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/controler/CurrentJadwal.dart';
import 'package:Edifarm/models/Aktivitas.dart';
import 'package:Edifarm/models/Counting.dart';
import 'package:Edifarm/models/Prosentase.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:get/get.dart';

class CountPro extends StatefulWidget {
  const CountPro({super.key});

  @override
  State<CountPro> createState() => _CountState();
}

class _CountState extends State<CountPro> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Future listblog;
  List<Prosentase> listblog1 = [];

  @override
  void initState() {
    super.initState();
    listblog = ServiceApiCountPro().getData();
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
        height: 50,
        width: 60,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listblog1.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                  right: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      listblog1[index].prosentase! + " %",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: AppTheme.fontName,
                        fontSize: 28,
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
