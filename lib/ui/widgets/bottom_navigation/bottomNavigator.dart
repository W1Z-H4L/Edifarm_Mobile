<<<<<<< HEAD:lib/dashboard/fitness_app_home_screen.dart
import 'package:edifarm/calender/calendar_popup_view.dart';
import 'package:edifarm/calender/calender_screen.dart';
import 'package:edifarm/dashboard/models/tabIcon_data.dart';
import 'package:edifarm/dashboard/activity/activity.dart';
=======
import 'package:edifarm/shared/Theme_App.dart';
import 'package:edifarm/ui/pages/dashboard/list_view/dashboard_screen.dart';
import 'package:edifarm/ui/pages/dashboard/models/tabIcon_data.dart';
import 'package:edifarm/ui/widgets/bottom_navigation/bottom_bar_view.dart';
>>>>>>> 960adc2e828b55ce62aad1680eaa20d6d79d8424:lib/ui/widgets/bottom_navigation/bottomNavigator.dart
import 'package:flutter/material.dart';

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
                      HomeScreen(animationController: animationController);
                });
              });
            } else if (index == 2) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
<<<<<<< HEAD:lib/dashboard/fitness_app_home_screen.dart
                      activityPage(animationController: animationController);
=======
                      HomeScreen(animationController: animationController);
>>>>>>> 960adc2e828b55ce62aad1680eaa20d6d79d8424:lib/ui/widgets/bottom_navigation/bottomNavigator.dart
                });
              });
            } else if (index == 3) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
<<<<<<< HEAD:lib/dashboard/fitness_app_home_screen.dart
                      activityPage(animationController: animationController);
=======
                      HomeScreen(animationController: animationController);
>>>>>>> 960adc2e828b55ce62aad1680eaa20d6d79d8424:lib/ui/widgets/bottom_navigation/bottomNavigator.dart
                });
              });
            }
          },
        ),
      ],
    );
  }
}
