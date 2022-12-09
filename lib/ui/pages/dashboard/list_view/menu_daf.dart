import 'package:Edifarm/jenispadi/jenis_padi.dart';

import 'package:Edifarm/main.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/dashboard/models/menu_data.dart';

import 'package:flutter/material.dart';

class Menudaf extends StatelessWidget {
  Menudaf({Key? key, this.animationController, this.animation})
      : super(key: key);

  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext context, Widget? child) {
          return FadeTransition(
            opacity: animation!,
            child: Transform(
              transform: Matrix4.translationValues(
                  100 * (1.0 - animation!.value), 0.0, 0.0),
              child: SizedBox(
                width: 130,
                child: Stack(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 32, left: 8, right: 8, bottom: 16),
                    child: Container(
                      height: 216,
                      width: double.infinity,
                      child: ListView(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 0, right: 16, left: 16),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            InkWell(
                              onTap: () => const JenisPadiPage(),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: HexColor('#CCE1E2')
                                            .withOpacity(0.4),
                                        offset: const Offset(1.1, 4.0),
                                        blurRadius: 8.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: <HexColor>[
                                      HexColor('#006B6C'),
                                      HexColor('#CCE1E2'),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    topLeft: Radius.circular(44.0),
                                    topRight: Radius.circular(44.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 12, right: 12, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'Diagnosa',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: AppTheme.fontName,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          letterSpacing: 0.2,
                                          color: AppTheme.white,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, bottom: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const <Widget>[
                                              Text(
                                                'Lihat Ada\nJadwal Kegiatan\nApa Anda Hari Ini',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: AppTheme.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  letterSpacing: 0.2,
                                                  color: AppTheme.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 24,
                                        child: Container(
                                          width: 84,
                                          height: 84,
                                          decoration: BoxDecoration(
                                            color: AppTheme.nearlyWhite
                                                .withOpacity(0.6),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 36,
                                        child: SizedBox(
                                          width: 60,
                                          height: 60,
                                          child: Image.asset(
                                              'assets/gambar_schedule.png'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => const JenisPadiPage(),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: HexColor('#CCE1E2')
                                            .withOpacity(0.4),
                                        offset: const Offset(1.1, 4.0),
                                        blurRadius: 8.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: <HexColor>[
                                      HexColor('#006B6C'),
                                      HexColor('#CCE1E2'),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    topLeft: Radius.circular(44.0),
                                    topRight: Radius.circular(44.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 12, right: 12, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'Diagnosa',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: AppTheme.fontName,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          letterSpacing: 0.2,
                                          color: AppTheme.white,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, bottom: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const <Widget>[
                                              Text(
                                                'Lihat Ada\nJadwal Kegiatan\nApa Anda Hari Ini',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: AppTheme.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  letterSpacing: 0.2,
                                                  color: AppTheme.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 24,
                                        child: Container(
                                          width: 84,
                                          height: 84,
                                          decoration: BoxDecoration(
                                            color: AppTheme.nearlyWhite
                                                .withOpacity(0.6),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 36,
                                        child: SizedBox(
                                          width: 60,
                                          height: 60,
                                          child: Image.asset(
                                              'assets/gambar_schedule.png'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => const JenisPadiPage(),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: HexColor('#CCE1E2')
                                            .withOpacity(0.4),
                                        offset: const Offset(1.1, 4.0),
                                        blurRadius: 8.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: <HexColor>[
                                      HexColor('#006B6C'),
                                      HexColor('#CCE1E2'),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    topLeft: Radius.circular(44.0),
                                    topRight: Radius.circular(44.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 12, right: 12, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'Diagnosa',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: AppTheme.fontName,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          letterSpacing: 0.2,
                                          color: AppTheme.white,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, bottom: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const <Widget>[
                                              Text(
                                                'Lihat Ada\nJadwal Kegiatan\nApa Anda Hari Ini',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: AppTheme.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  letterSpacing: 0.2,
                                                  color: AppTheme.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 24,
                                        child: Container(
                                          width: 84,
                                          height: 84,
                                          decoration: BoxDecoration(
                                            color: AppTheme.nearlyWhite
                                                .withOpacity(0.6),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 36,
                                        child: SizedBox(
                                          width: 60,
                                          height: 60,
                                          child: Image.asset(
                                              'assets/gambar_schedule.png'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => const JenisPadiPage(),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: HexColor('#CCE1E2')
                                            .withOpacity(0.4),
                                        offset: const Offset(1.1, 4.0),
                                        blurRadius: 8.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: <HexColor>[
                                      HexColor('#006B6C'),
                                      HexColor('#CCE1E2'),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    topLeft: Radius.circular(44.0),
                                    topRight: Radius.circular(44.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 12, right: 12, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'Diagnosa',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: AppTheme.fontName,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          letterSpacing: 0.2,
                                          color: AppTheme.white,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, bottom: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const <Widget>[
                                              Text(
                                                'Lihat Ada\nJadwal Kegiatan\nApa Anda Hari Ini',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: AppTheme.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  letterSpacing: 0.2,
                                                  color: AppTheme.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 24,
                                        child: Container(
                                          width: 84,
                                          height: 84,
                                          decoration: BoxDecoration(
                                            color: AppTheme.nearlyWhite
                                                .withOpacity(0.6),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 36,
                                        child: SizedBox(
                                          width: 60,
                                          height: 60,
                                          child: Image.asset(
                                              'assets/gambar_schedule.png'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => const JenisPadiPage(),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: HexColor('#CCE1E2')
                                            .withOpacity(0.4),
                                        offset: const Offset(1.1, 4.0),
                                        blurRadius: 8.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: <HexColor>[
                                      HexColor('#006B6C'),
                                      HexColor('#CCE1E2'),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    topLeft: Radius.circular(44.0),
                                    topRight: Radius.circular(44.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 12, right: 12, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'Diagnosa',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: AppTheme.fontName,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          letterSpacing: 0.2,
                                          color: AppTheme.white,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, bottom: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const <Widget>[
                                              Text(
                                                'Lihat Ada\nJadwal Kegiatan\nApa Anda Hari Ini',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: AppTheme.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  letterSpacing: 0.2,
                                                  color: AppTheme.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 24,
                                        child: Container(
                                          width: 84,
                                          height: 84,
                                          decoration: BoxDecoration(
                                            color: AppTheme.nearlyWhite
                                                .withOpacity(0.6),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 36,
                                        child: SizedBox(
                                          width: 60,
                                          height: 60,
                                          child: Image.asset(
                                              'assets/gambar_schedule.png'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ]),
                    ),
                    // Positioned(
                    //   top: 0,
                    //   left: 24,
                    //   child: Container(
                    //     width: 84,
                    //     height: 84,
                    //     decoration: BoxDecoration(
                    //       color: AppTheme.nearlyWhite.withOpacity(0.6),
                    //       shape: BoxShape.circle,
                    //     ),
                    //   ),
                    // ),
                    // Positioned(
                    //   top: 10,
                    //   left: 36,
                    //   child: SizedBox(
                    //     width: 60,
                    //     height: 60,
                    //     child: Image.asset('assets/gambar_schedule.png'),
                    //   ),
                    // )
                  )
                ]),
              ),
            ),
          );
        });
  }
}
