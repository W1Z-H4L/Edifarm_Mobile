import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/controler/CurrentJadwal.dart';
import 'package:Edifarm/models/Aktivitas.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Filter extends StatefulWidget {
  const Filter({super.key, required this.blog});
  final List<dynamic> blog;

  @override
  State<Filter> createState() => _PestisidaState();
}

class _PestisidaState extends State<Filter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          toolbarHeight: 70,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: AppTheme.green,
                size: 20,
              )),
          elevation: 0,
          shadowColor: AppTheme.white,
          backgroundColor: AppTheme.white,
        ),
        backgroundColor: AppTheme.white,
        body: widget.blog.length == 0
            ? const Center(
                child: Text(
                  'Belum Melakukan Kegiatan Apapun',
                  style: TextStyle(
                      color: AppTheme.darkText,
                      fontFamily: AppTheme.fontName,
                      fontSize: 12),
                ),
              )
            : ListView.builder(
                itemCount: widget.blog.length,
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
                                  bottom: 16,
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 0),
                                                child: Text(
                                                    widget
                                                        .blog[index].kegiatan!,
                                                    style: const TextStyle(
                                                      fontFamily:
                                                          AppTheme.fontName,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 14,
                                                      letterSpacing: 0.2,
                                                      color: AppTheme.green,
                                                    ))),
                                            const SizedBox(
                                              height: 18,
                                            ),
                                            Container(
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 1,
                                                    ),
                                                    child: Text(
                                                        widget.blog[index]
                                                            .tanggalSelesai!,
                                                        style: const TextStyle(
                                                          fontFamily:
                                                              AppTheme.fontName,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 10,
                                                          letterSpacing: 0.2,
                                                          color: AppTheme.green,
                                                        )))),
                                          ]),
                                      const Spacer(),
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: 16, left: 0, bottom: 16),
                                          child: Text(
                                              widget.blog[index].status!,
                                              style: const TextStyle(
                                                fontFamily: AppTheme.fontName,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 14,
                                                letterSpacing: 0.2,
                                                color: AppTheme.green,
                                              ))),
                                    ]),
                              ),
                              // Padding(
                              //     padding: const EdgeInsets.only(
                              //       top: 16,
                              //       left: 16,
                              //       right: 16,
                              //       bottom: 16,
                              //     ),
                              //     child: Row(
                              //       children: [
                              //         Container(
                              //             child: Padding(
                              //                 padding: const EdgeInsets.only(
                              //                   top: 1,
                              //                 ),
                              //                 child: Text(
                              //                     widget.blog[index]
                              //                         .tanggalSelesai!,
                              //                     style: const TextStyle(
                              //                       fontFamily:
                              //                           AppTheme.fontName,
                              //                       fontWeight: FontWeight.w800,
                              //                       fontSize: 10,
                              //                       letterSpacing: 0.2,
                              //                       color: AppTheme.green,
                              //                     )))),
                              //         const Spacer(),
                              //       ],
                              //     ))
                            ]),
                      ));
                }));
  }
}
