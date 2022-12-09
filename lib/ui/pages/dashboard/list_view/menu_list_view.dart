import 'package:Edifarm/aktivitas/activity.dart';
import 'package:Edifarm/main.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/calender/calender_screen.dart';
import 'package:Edifarm/ui/pages/dashboard/list_view/dashboard_screen.dart';
import 'package:Edifarm/ui/pages/dashboard/models/menu_data.dart';
import 'package:Edifarm/ui/pages/diagnosa/diagnosa_screen.dart';
import 'package:Edifarm/ui/pages/setting/edit_akun.dart';
import 'package:Edifarm/ui/widgets/bottom_navigation/bottom_bar_view.dart';
import 'package:Edifarm/ui/widgets/button_menu.dart';
import 'package:flutter/material.dart';

class MenuListView extends StatefulWidget {
  MenuListView(
      {Key? key,
      this.changeIndex,
      this.addClick,
      this.tabMenuList,
      this.mainScreenAnimationController,
      this.mainScreenAnimation})
      : super(key: key);
  final List<MenuListData>? tabMenuList;
  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;
  final Function(int index)? changeIndex;
  final Function()? addClick;

  @override
  _MenuListViewState createState() => _MenuListViewState();
  List<MenuListData> menuListData = MenuListData.tabMenuList;

  Widget tabBody = Container(
    color: AppTheme.background,
  );
}

class _MenuListViewState extends State<MenuListView>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<MenuListData> mealsListData = MenuListData.tabMenuList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.mainScreenAnimationController!,
        builder: (BuildContext context, Widget? child) {
          return FadeTransition(
            opacity: widget.mainScreenAnimation!,
            child: Transform(
              transform: Matrix4.translationValues(
                  0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
              child: Container(
                height: 216,
                width: double.infinity,
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 0, right: 16, left: 16),
                  itemCount: mealsListData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final int count =
                        mealsListData.length > 10 ? 10 : mealsListData.length;
                    final Animation<double> animation =
                        Tween<double>(begin: 0.0, end: 1.0).animate(
                            CurvedAnimation(
                                parent: animationController!,
                                curve: Interval((1 / count) * index, 1.0,
                                    curve: Curves.fastOutSlowIn)));
                    animationController?.forward();

                    return MenuView(
                      menuListData: mealsListData[index],
                      animation: animation,
                      animationController: animationController!,
                    );
                  },
                ),
              ),
            ),
          );
        });
  }
}

class MenuView extends StatelessWidget {
  MenuView(
      {Key? key, this.menuListData, this.animationController, this.animation})
      : super(key: key);

  final MenuListData? menuListData;
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
                      child: InkWell(
                        onTap: () => MenuListView(
                            addClick: () {},
                            changeIndex: (int index) {
                              if (index == 0) {
                                animationController
                                    ?.reverse()
                                    .then<dynamic>((data) {
                                  return (() {
                                    tabBody = HomeScreen(
                                        animationController:
                                            animationController);
                                  });
                                });
                              } else if (index == 1) {
                                animationController
                                    ?.reverse()
                                    .then<dynamic>((data) {
                                  return (() {
                                    tabBody = CalenderScreen(
                                        animationController:
                                            animationController);
                                  });
                                });
                              }
                            }),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: HexColor(menuListData!.endColor)
                                      .withOpacity(0.4),
                                  offset: const Offset(1.1, 4.0),
                                  blurRadius: 8.0),
                            ],
                            gradient: LinearGradient(
                              colors: <HexColor>[
                                HexColor(menuListData!.startColor),
                                HexColor(menuListData!.endColor),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  menuListData!.titleTxt,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
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
                                      children: <Widget>[
                                        Text(
                                          menuListData!.deskripsi!.join('\n'),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
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
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.start,
                                //   crossAxisAlignment: CrossAxisAlignment.end,
                                //   children: <Widget>[
                                //     Text(
                                //       mealsListData!.toString(),
                                //       textAlign: TextAlign.center,
                                //       style: TextStyle(
                                //         fontFamily: FitnessAppTheme.fontName,
                                //         fontWeight: FontWeight.w500,
                                //         fontSize: 24,
                                //         letterSpacing: 0.2,
                                //         color: FitnessAppTheme.white,
                                //       ),
                                //     ),
                                //     // Padding(
                                //     //   padding:
                                //     //       const EdgeInsets.only(left: 4, bottom: 3),
                                //     //   child: Text(
                                //     //     'kcal',
                                //     //     style: TextStyle(
                                //     //       fontFamily: FitnessAppTheme.fontName,
                                //     //       fontWeight: FontWeight.w500,
                                //     //       fontSize: 10,
                                //     //       letterSpacing: 0.2,
                                //     //       color: FitnessAppTheme.white,
                                //     //     ),
                                //     //   ),
                                //     // ),
                                //   ],
                                // ),
                                // Container(
                                //   decoration: BoxDecoration(
                                //     color: FitnessAppTheme.nearlyWhite,
                                //     shape: BoxShape.circle,
                                //     boxShadow: <BoxShadow>[
                                //       BoxShadow(
                                //           color: FitnessAppTheme.nearlyBlack
                                //               .withOpacity(0.4),
                                //           offset: Offset(8.0, 8.0),
                                //           blurRadius: 8.0),
                                //     ],
                                //   ),
                                //   child: Padding(
                                //     padding: const EdgeInsets.all(6.0),
                                //     child: Icon(
                                //       Icons.add,
                                //       color: HexColor(mealsListData!.endColor),
                                //       size: 24,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                    top: 0,
                    left: 24,
                    child: Container(
                      width: 84,
                      height: 84,
                      decoration: BoxDecoration(
                        color: AppTheme.nearlyWhite.withOpacity(0.6),
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
                      child: Image.asset(menuListData!.imagePath),
                    ),
                  )
                ]),
              ),
            ),
          );
        });
  }

  Widget tabBody = Container(
    color: AppTheme.background,
  );
}
