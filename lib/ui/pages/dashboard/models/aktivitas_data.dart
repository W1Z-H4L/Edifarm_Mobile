import 'package:Edifarm/shared/Theme_App.dart';

import 'package:flutter/material.dart';

class AktivitasDataView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const AktivitasDataView({Key? key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext context, Widget? child) {
          return FadeTransition(
            opacity: animation!,
            child: Transform(
              transform: Matrix4.translationValues(
                  0.0, 30 * (1.0 - animation!.value), 0.0),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 16, bottom: 18),
                child: Container(
                  height: 240,
                  width: 250,
                  decoration: BoxDecoration(
                    color: AppTheme.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: AppTheme.grey.withOpacity(0.2),
                          offset: Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Column(children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      const SizedBox(
                        width: 40,
                        height: 25,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/jenis');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    AppTheme.orange,
                                    AppTheme.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                                child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                'assets/icon_menu_jenis.png',
                              ))),
                            )),
                          )),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/diag');
                        },
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    AppTheme.orange,
                                    AppTheme.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                'assets/icon_menu_diagnose.png',
                              ))),
                            )),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/con');
                        },
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    AppTheme.orange,
                                    AppTheme.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                'assets/icon_menu_riwayat_diag.png',
                              ))),
                            )),
                      ),
                      const SizedBox(
                        width: 40,
                      )
                    ]),
                    Row(
                      children: const [
                        SizedBox(
                          width: 60,
                          height: 25,
                        ),
                        Text(
                          'Jenis',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppTheme.black,
                              fontFamily: AppTheme.fontName),
                        ),
                        Spacer(),
                        Text(
                          'Diagnosa',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppTheme.black,
                              fontFamily: AppTheme.fontName),
                        ),
                        Spacer(),
                        Text(
                          'Konsultasi',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppTheme.black,
                              fontFamily: AppTheme.fontName),
                        ),
                        SizedBox(
                          width: 60,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      const SizedBox(
                        width: 40,
                        height: 25,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/pupuk');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    AppTheme.orange,
                                    AppTheme.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                                child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                'assets/icon_menu_pupuk.png',
                              ))),
                            )),
                          )),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/iri');
                        },
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    AppTheme.orange,
                                    AppTheme.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                'assets/icon_menu_irigasi.png',
                              ))),
                            )),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/obat');
                        },
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    AppTheme.orange,
                                    AppTheme.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                'assets/icon_menu_pestisida.png',
                              ))),
                            )),
                      ),
                      const SizedBox(
                        width: 40,
                      )
                    ]),
                    Row(
                      children: const [
                        SizedBox(
                          width: 50,
                          height: 25,
                        ),
                        Text(
                          'Pupuk',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppTheme.black,
                            fontFamily: AppTheme.fontName,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Irigasi',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppTheme.black,
                              fontFamily: AppTheme.fontName),
                        ),
                        Spacer(),
                        Text(
                          'Pestisida',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppTheme.black,
                              fontFamily: AppTheme.fontName),
                        ),
                        SizedBox(
                          width: 50,
                        )
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          );
        });
  }
}
