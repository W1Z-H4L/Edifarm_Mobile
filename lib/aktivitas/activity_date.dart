import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tanggalActivity extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const tanggalActivity({Key? key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation!.value), 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 0, bottom: 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffBDE2E7),
                            border: Border.all(
                                color: Color.fromARGB(31, 1, 72, 58)),

                            borderRadius: BorderRadius.circular(10),

                            // boxShadow: <BoxShadow>[
                            //   BoxShadow(
                            //       color: FitnessAppTheme.grey.withOpacity(0.4),
                            //       offset: Offset(1.1, 1.1),
                            //       blurRadius: 10.0),
                            // ],
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                child: SizedBox(
                                  height: 74,
                                  child: AspectRatio(
                                    aspectRatio: 1.714,
                                    // child: Image.asset(
                                    //     "assets/fitness_app/back.png"),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 100,
                                          right: 16,
                                          top: 16,
                                        ),
                                        child: Text(
                                          "Hari ini, 23 - 11 - 22",

                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff006B6C),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                          // TextStyle(
                                          //   fontFamily:
                                          //       FitnessAppTheme.fontName,
                                          //   fontWeight: FontWeight.w500,
                                          //   fontSize: 14,
                                          //   letterSpacing: 0.0,
                                          //   color:
                                          //       FitnessAppTheme.nearlyDarkBlue,
                                          // ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 100,
                                          bottom: 12,
                                          top: 4,
                                          right: 16,
                                        ),
                                        child: Text(
                                          "selamat beraktivitas",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff006B6C),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(
                                  //     left: 100,
                                  //     bottom: 12,
                                  //     top: 4,
                                  //     right: 16,
                                  //   ),
                                  // child: Text(
                                  //   "Keep it up\nand stick to your plan!",
                                  //   textAlign: TextAlign.left,
                                  //   style: TextStyle(
                                  //     fontFamily: FitnessAppTheme.fontName,
                                  //     fontWeight: FontWeight.w500,
                                  //     fontSize: 10,
                                  //     letterSpacing: 0.0,
                                  //     color: FitnessAppTheme.grey
                                  //         .withOpacity(0.5),
                                  //   ),
                                  // ),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -16,
                        left: 0,
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.asset("assets/gambar_diagnose_hama.png"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
