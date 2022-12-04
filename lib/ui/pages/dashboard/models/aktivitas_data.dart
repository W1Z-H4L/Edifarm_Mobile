import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/diagnosa/diagnosa_screen.dart';
import 'package:Edifarm/ui/pages/lahan/lahan_view.dart';
import 'package:Edifarm/ui/pages/setting/pengaturan.dart';
import 'package:Edifarm/ui/widgets/buttons.dart';
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
                  height: 180,
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
                      Container(
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
                        child: ElevatedButton(
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/icon_menu_jenis.png',
                                ),
                              ),
                            ),
                          ),
                          onPressed: () => SettingsPage(),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => const DiagnosaScreen(),
                        child: Container(
                          height: 70,
                          width: 70,
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                'assets/icon_menu_diagnose.png',
                              )),
                              gradient: const LinearGradient(
                                colors: [
                                  AppTheme.orange,
                                  AppTheme.white,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => const DiagnosaScreen(),
                        child: Container(
                          height: 70,
                          width: 70,
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                'assets/icon_menu_irigasi.png',
                              )),
                              gradient: const LinearGradient(
                                colors: [
                                  AppTheme.orange,
                                  AppTheme.white,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                        ),
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
                          'Irigasi',
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
