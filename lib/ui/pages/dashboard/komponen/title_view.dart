<<<<<<<< HEAD:lib/dashboard/activity/title_activity.dart
import 'package:edifarm/dashboard/fitness_app_theme.dart';
import 'package:edifarm/dashboard/activity/activity.dart';
========
import 'package:edifarm/shared/Theme_App.dart';
>>>>>>>> 960adc2e828b55ce62aad1680eaa20d6d79d8424:lib/ui/pages/dashboard/komponen/title_view.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleActivity extends StatelessWidget {
  final String titleTxt;
  final String subTxt;
  final AnimationController? animationController;
  final Animation<double>? animation;

  const TitleActivity(
      {Key? key,
      this.titleTxt: "",
      this.subTxt: "",
      this.animationController,
      this.animation})
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
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        titleTxt,
                        textAlign: TextAlign.left,
<<<<<<<< HEAD:lib/dashboard/activity/title_activity.dart
                        style: GoogleFonts.montserrat(
                            color: Color(0xff006B6C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),

                        // TextStyle(
                        //   fontFamily: FitnessAppTheme.fontName,
                        //   fontWeight: FontWeight.w500,
                        //   fontSize: 18,
                        //   letterSpacing: 0.5,
                        //   color: FitnessAppTheme.lightText,
                        // ),
========
                        style: TextStyle(
                          fontFamily: AppTheme.fontName,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          letterSpacing: 0.5,
                          color: AppTheme.lightText,
                        ),
>>>>>>>> 960adc2e828b55ce62aad1680eaa20d6d79d8424:lib/ui/pages/dashboard/komponen/title_view.dart
                      ),
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: <Widget>[
                            TextButton(
                              child: Text(
                                subTxt,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: AppTheme.fontName,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  letterSpacing: 0.5,
                                  color: AppTheme.splash,
                                ),
                              ),
                              onPressed: (() {
                                Navigator.pushNamed(context, '/act');
                              }),
                            )
                            // SizedBox(
                            //   height: 38,
                            //   width: 26,
                            //   child: Icon(
                            //     Icons.arrow_forward,
                            //     color: FitnessAppTheme.darkText,
                            //     size: 18,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
