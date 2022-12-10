import 'package:Edifarm/aktivitas/activity_data.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class akti extends StatefulWidget {
  // const akti({super.key});

  @override
  State<akti> createState() => _aktiState();
}

class _aktiState extends State<akti> {
  _aktiState(
      {Key? key,
      this.tabactList,
      this.animationController,
      this.animation,
      this.isi});

  final ActListData? tabactList;
  final AnimationController? animationController;
  final Animation<double>? animation;
  final bool? isi;
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          child: DottedBorder(
              strokeWidth: 1,
              borderType: BorderType.RRect,
              radius: Radius.circular(25),
              color: Color.fromARGB(255, 1, 104, 97),
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    focusColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                    onTap: () {},
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 16, left: 16, right: 16),
                              child: Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, bottom: 2),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          padding:
                                              EdgeInsets.only(top: 0, left: 0),
                                          child: Text(tabactList!.aktivitas,
                                              style: TextStyle(
                                                fontFamily: AppTheme.fontName,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 14,
                                                letterSpacing: 0.2,
                                                color: AppTheme.green,
                                              ))),
                                      const Spacer(),
                                      Scaffold(

                                          // alignment: Alignment.centerRight,
                                          // padding: EdgeInsets.only(
                                          //     bottom: 2, right: 6),
                                          body: Column(children: [
                                        CheckboxListTile(
                                          value: isi,
                                          onChanged: (isi) {
                                            // setState(() {
                                            //   isi = val;
                                            // });
                                          },
                                          activeColor: AppTheme.green,
                                          title: Text("Irigasi - Hujan"),
                                          subtitle: Text(
                                              "12 September 2020 - 09.00 WIB"),
                                        ),
                                        CheckboxListTile(
                                          value: isi,
                                          onChanged: (value) {},
                                          activeColor: AppTheme.green,
                                          title: Text("Pupuk - NPK"),
                                          subtitle: Text(
                                              "12 September 2020 - 09.00 WIB"),
                                        ),
                                      ]))
                                    ]),
                              ))),
                          Row(
                            children: [
                              Container(
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 1,
                                      ),
                                      child: Text(tabactList!.tanggal,
                                          style: TextStyle(
                                            fontFamily: AppTheme.fontName,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10,
                                            letterSpacing: 0.2,
                                            color: AppTheme.green,
                                          )))),
                              const Spacer(),
                              Container(
                                child: Text(tabactList!.jam,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: AppTheme.fontName,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      letterSpacing: 0.2,
                                      color: AppTheme.green,
                                    )),
                              )
                            ],
                          )
                        ]),
                  )))),
    ]);
  }
}
