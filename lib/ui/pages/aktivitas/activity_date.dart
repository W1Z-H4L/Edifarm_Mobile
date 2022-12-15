import 'package:Edifarm/shared/Theme_App.dart';
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
                          color: Colors.transparent,
                          border: Border.all(color: Color(0xFF006B6C)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: <Widget>[
                            const ClipRRect(
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
                                        "Sabtu, 23 - 11 - 22",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xFF006B6C),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 100,
                                    bottom: 12,
                                    top: 4,
                                    right: 16,
                                  ),
                                  child: Text(
                                    "Selamat melakukan aktivitas hari ini",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: AppTheme.fontName,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      letterSpacing: 0.0,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -5,
                      left: 0,
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/gambar_tani_act.png"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
