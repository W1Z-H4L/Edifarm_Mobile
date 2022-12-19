import 'package:Edifarm/ui/pages/aktivitas/activity.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/calender/calender_screen.dart';
import 'package:Edifarm/ui/pages/dashboard/list_view/dashboard_screen.dart';
import 'package:Edifarm/ui/pages/dashboard/list_view/menu_list_view.dart';
import 'package:Edifarm/ui/pages/dashboard/models/menu_data.dart';
import 'package:Edifarm/ui/pages/diagnosa/diagnosa_screen.dart';
import 'package:Edifarm/ui/pages/setting/page/account/edit_akun/edit_akun.dart';

import 'package:flutter/material.dart';

class BottomMenu extends StatefulWidget {
  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> with TickerProviderStateMixin {
  AnimationController? animationController;

  List<MenuListData> menuListData = MenuListData.tabMenuList;

  Widget tabBody = Container(
    color: AppTheme.background,
  );

  @override
  void initState() {
    menuListData.forEach((MenuListData tab) {});

    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return MenuListView(
                tabMenuList: menuListData,
                addClick: () {},
                changeIndex: (int index) {
                  if (index == 0) {
                    animationController?.reverse().then<dynamic>((data) {
                      if (!mounted) {
                        return;
                      }
                      setState(() {
                        tabBody = HomeScreen(
                            animationController: animationController);
                      });
                    });
                  } else if (index == 1) {
                    animationController?.reverse().then<dynamic>((data) {
                      if (!mounted) {
                        return;
                      }
                      setState(() {
                        tabBody = CalenderScreen(
                            animationController: animationController);
                      });
                    });
                  } else if (index == 2) {
                    animationController?.reverse().then<dynamic>((data) {
                      if (!mounted) {
                        return;
                      }
                      setState(() {
                        tabBody = DiagnosaScreen(
                            animationController: animationController);
                      });
                    });
                  } else if (index == 3) {
                    animationController?.reverse().then<dynamic>((data) {
                      if (!mounted) {
                        return;
                      }
                      setState(() {
                        tabBody = EditProfilePage(
                            animationController: animationController);
                      });
                    });
                  } else if (index == 4) {
                    animationController?.reverse().then<dynamic>((data) {
                      if (!mounted) {
                        return;
                      }
                      setState(() {
                        tabBody = activityPage(
                            animationController: animationController);
                      });
                    });
                  }
                },
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }
}
//   Widget bottomBar() {
//     return Column(
//       children: <Widget>[
//         const Expanded(
//           child: SizedBox(),
//         ),
//         MenuListView(
//           tabMenuList: menuListData,
//           addClick: () {},
//           changeIndex: (int index) {
//             if (index == 0) {
//               animationController?.reverse().then<dynamic>((data) {
//                 if (!mounted) {
//                   return;
//                 }
//                 setState(() {
//                   tabBody =
//                       HomeScreen(animationController: animationController);
//                 });
//               });
//             } else if (index == 1) {
//               animationController?.reverse().then<dynamic>((data) {
//                 if (!mounted) {
//                   return;
//                 }
//                 setState(() {
//                   tabBody =
//                       CalenderScreen(animationController: animationController);
//                 });
//               });
//             } else if (index == 2) {
//               animationController?.reverse().then<dynamic>((data) {
//                 if (!mounted) {
//                   return;
//                 }
//                 setState(() {
//                   tabBody =
//                       DiagnosaScreen(animationController: animationController);
//                 });
//               });
//             } else if (index == 3) {
//               animationController?.reverse().then<dynamic>((data) {
//                 if (!mounted) {
//                   return;
//                 }
//                 setState(() {
//                   tabBody =
//                       EditProfilePage(animationController: animationController);
//                 });
//               });
//             } else if (index == 4) {
//               animationController?.reverse().then<dynamic>((data) {
//                 if (!mounted) {
//                   return;
//                 }
//                 setState(() {
//                   tabBody =
//                       activityPage(animationController: animationController);
//                 });
//               });
//             }
//           },
//         ),
//       ],
//     );
//   }
// }
