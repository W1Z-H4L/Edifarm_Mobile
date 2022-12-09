<<<<<<<< HEAD:lib/dashboard/bottom_navigation/bottomNavigator.dart
import 'package:edifarm/calender/calender_screen.dart';
import 'package:edifarm/dashboard/dashboard_list_view/dashboard_screen.dart';
import 'package:edifarm/dashboard/models/tabIcon_data.dart';
import 'package:edifarm/dashboard1/theme.dart';
import 'package:edifarm/setting/setting.dart';
import 'package:flutter/material.dart';
import '../../jenispadi/jenispadi.dart';
import 'bottom_bar_view.dart';

========
import 'package:Edifarm/Riwayat/Riwayat_pengobatan/riwayart_pestisida_screen.dart';
import 'package:Edifarm/Riwayat/riwayat_irigasi/riwayart_irigasi_screen.dart';
import 'package:Edifarm/aktivitas/activity.dart';
import 'package:Edifarm/jenispadi/jenis_padi.dart';
import 'package:Edifarm/jenispadi/list_data_padi.dart';
import 'package:Edifarm/jenispadi/jenispadi.dart';
import 'package:Edifarm/Riwayat/Riwayat_pupuk/riwayart_pupuk_screen.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/calender/calender_screen.dart';
import 'package:Edifarm/ui/pages/dashboard/list_view/dashboard_screen.dart';
import 'package:Edifarm/ui/pages/dashboard/models/tabIcon_data.dart';
import 'package:Edifarm/ui/pages/diagnosa/diagnosa_list.dart';
import 'package:Edifarm/ui/pages/diagnosa/diagnosa_screen.dart';
import 'package:Edifarm/ui/pages/lahan/lahan_view.dart';
import 'package:Edifarm/ui/pages/setting/edit_akun.dart';
import 'package:Edifarm/ui/widgets/bottom_navigation/bottom_bar_view.dart';

import 'package:flutter/material.dart';

>>>>>>>> c0872997ecdcc3498b5b80e90fa2896f04cf7872:lib/ui/widgets/bottom_navigation/bottomNavigator.dart
class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: AppTheme.background,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = HomeScreen(animationController: animationController);
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
              return Stack(
                children: <Widget>[
                  tabBody,
                  bottomBar(),
                ],
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

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      HomeScreen(animationController: animationController);
                });
              });
            } else if (index == 1) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      CalenderScreen(animationController: animationController);
                });
              });
            } else if (index == 2) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
<<<<<<<< HEAD:lib/dashboard/bottom_navigation/bottomNavigator.dart
                  tabBody = jenisPadi(animationController: animationController);
========
                  tabBody = CourseInfoScreen(
                      animationController: animationController);
>>>>>>>> c0872997ecdcc3498b5b80e90fa2896f04cf7872:lib/ui/widgets/bottom_navigation/bottomNavigator.dart
                });
              });
            } else if (index == 3) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
<<<<<<<< HEAD:lib/dashboard/bottom_navigation/bottomNavigator.dart
                  tabBody =
                      EditProfilePage(animationController: animationController);
========
                  tabBody =
                      EditProfilePage(animationController: animationController);
                });
              });
            } else if (index == 4) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      activityPage(animationController: animationController);
>>>>>>>> c0872997ecdcc3498b5b80e90fa2896f04cf7872:lib/ui/widgets/bottom_navigation/bottomNavigator.dart
                });
              });
            }
          },
        ),
      ],
    );
  }
}