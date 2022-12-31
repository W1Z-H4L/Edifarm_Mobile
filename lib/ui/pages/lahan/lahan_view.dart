import 'package:Edifarm/shared/Theme_App.dart';

import 'package:Edifarm/ui/pages/lahan/deskirpsi_lahan.dart';
import 'package:Edifarm/ui/pages/lahan/info_data.dart';
import 'package:Edifarm/ui/pages/lahan/info_lahan.dart';
import 'package:Edifarm/ui/pages/lahan/nama_lahan.dart';
import 'package:flutter/material.dart';

class LahanScreen extends StatefulWidget {
  const LahanScreen({Key? key, this.animationController}) : super(key: key);

  final AnimationController? animationController;
  @override
  _LahanScreenState createState() => _LahanScreenState();
}

class _LahanScreenState extends State<LahanScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController? animationController;
  Animation<double>? animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController?.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.2,
                  child: Image.asset(
                    'assets/gambar_baground_jenis.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: AppTheme.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Container(
                      constraints: BoxConstraints(
                          minHeight: infoHeight,
                          maxHeight: tempHeight > infoHeight
                              ? tempHeight
                              : infoHeight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 16.0, left: 18, right: 16),
                            child: Text(
                              'Informasi Mengenai \nLahan',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: AppTheme.fontName,
                                fontSize: 22,
                                letterSpacing: 0.27,
                                color: AppTheme.darkerText,
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //       left: 16, right: 16, top: 16),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     children: const <Widget>[
                          //       Text(
                          //         'Lihat Lahanku',
                          //         textAlign: TextAlign.left,
                          //         style: TextStyle(
                          //           fontWeight: FontWeight.w200,
                          //           fontFamily: AppTheme.fontName,
                          //           fontSize: 22,
                          //           letterSpacing: 0.27,
                          //           color: AppTheme.green,
                          //         ),
                          //       ),

                          //     ],
                          //   ),
                          // ),
                          const namaLahan(),
                          InfoLahan(),
                          // AnimatedOpacity(
                          //   duration: const Duration(milliseconds: 500),
                          //   opacity: opacity1,
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(8),
                          //     child: Row(
                          //       children: <Widget>[
                          //         getTimeBoxUI('Luas', '1000m²'),
                          //         getTimeBoxUI('Kota', 'Ponorogo'),
                          //         getTimeBoxUI('Pemilik', 'Lusy'),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          // Expanded(
                          //   child: AnimatedOpacity(
                          //     duration: const Duration(milliseconds: 500),
                          //     opacity: opacity2,
                          //     child: const Padding(
                          //       padding: EdgeInsets.only(
                          //           left: 16, right: 16, top: 8, bottom: 8),
                          //       child: Text(
                          //         'Lahan Lihat Lahanku Merupakan Lahan Yang Dimiliki Oleh Lusy Anjay. Lahan Ini Berlokasikan Di Jalan Pertulis, Babadan, Ponorogo, Saat ini Jenis Padi ciherang',
                          //         textAlign: TextAlign.justify,
                          //         style: TextStyle(
                          //           fontWeight: FontWeight.w200,
                          //           fontFamily: AppTheme.fontName,
                          //           fontSize: 14,
                          //           letterSpacing: 0.27,
                          //           color: AppTheme.grey,
                          //         ),
                          //         maxLines: 3,
                          //         overflow: TextOverflow.ellipsis,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          const DeskripsiLahan(),
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: opacity3,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, bottom: 16, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  // Container(
                                  //   width: 48,
                                  //   height: 48,
                                  //   child: Container(
                                  //     decoration: BoxDecoration(
                                  //       color: AppTheme.nearlyWhite,
                                  //       borderRadius: const BorderRadius.all(
                                  //         Radius.circular(16.0),
                                  //       ),
                                  //       border: Border.all(
                                  //           color: AppTheme.grey
                                  //               .withOpacity(0.2)),
                                  //     ),
                                  //     // child: Icon(
                                  //     //   Icons.add,
                                  //     //   color: AppTheme.nearlyBlue,
                                  //     //   size: 28,
                                  //     // ),
                                  //   ),
                                  // ),

                                  Expanded(
                                      child: InkWell(
                                    child: Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: AppTheme.green,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(16.0),
                                        ),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: AppTheme.green
                                                  .withOpacity(0.5),
                                              offset: const Offset(1.1, 1.1),
                                              blurRadius: 10.0),
                                        ],
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Lihat Jenis Padi',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: AppTheme.fontName,
                                            fontSize: 18,
                                            letterSpacing: 0.0,
                                            color: AppTheme.nearlyWhite,
                                          ),
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(context, '/jenis');
                                    },
                                  )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).padding.bottom,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 35,
              right: 35,
              child: ScaleTransition(
                alignment: Alignment.center,
                scale: CurvedAnimation(
                    parent: animationController!, curve: Curves.fastOutSlowIn),
                child: Card(
                  color: AppTheme.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  elevation: 10.0,
                  child: Container(
                    width: 80,
                    height: 80,
                    child: Center(
                        child: Image.asset(
                      'assets/icon_lahan_selected.png',
                      height: 115,
                      width: 115,
                    )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: SizedBox(
                width: AppBar().preferredSize.height,
                height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(AppBar().preferredSize.height),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: AppTheme.white,
                          size: 20,
                        )),
                    // onTap: () {
                    //   Navigator.pop(context);
                    // },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getTimeBoxUI(String text1, String txt2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.nearlyWhite,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: AppTheme.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text1,
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
                txt2,
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
        ),
      ),
    );
  }
}
