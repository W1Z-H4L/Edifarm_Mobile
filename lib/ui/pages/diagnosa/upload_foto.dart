import 'package:dotted_border/dotted_border.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:Edifarm/ui/pages/dashboard/models/info_data.dart';
import 'package:Edifarm/ui/pages/diagnosa/pertanyaan_data.dart';
import 'package:flutter/material.dart';

import '../calender/calendar_popup_view.dart';

class PotoView extends StatefulWidget {
  const PotoView(
      {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;

  @override
  _PotoViewState createState() => _PotoViewState();
}

class _PotoViewState extends State<PotoView> with TickerProviderStateMixin {
  AnimationController? animationController;
  List<DiagnosaListData> tabDiagList = DiagnosaListData.tabDiagList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 20), vsync: this);
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
            child: AspectRatio(
              aspectRatio: 1.2,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: GridView(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 16),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: List<Widget>.generate(
                    tabDiagList.length,
                    (int index) {
                      final int count = tabDiagList.length;
                      final Animation<double> animation =
                          Tween<double>(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: animationController!,
                          curve: Interval((1 / count) * index, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      );
                      animationController?.forward();
                      return DiagView(
                        tabDiagList: tabDiagList[index],
                        animation: animation,
                        animationController: animationController!,
                      );
                    },
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 20,
                    childAspectRatio: 6 / 1,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
    // return AnimatedBuilder(
    //     animation: widget.mainScreenAnimationController!,
    //     builder: (BuildContext context, Widget? child) {
    //       return ListView.builder(
    //         // opacity: widget.mainScreenAnimation!,
    //         // child: Transform(
    //         //   transform: Matrix4.translationValues(
    //         //       0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
    //         // child: ListView(
    //         //   height: 330,
    //         //   width: double.infinity,
    //         //   child: ListView.builder(
    //         padding:
    //             const EdgeInsets.only(top: 10, bottom: 0, right: 16, left: 16),
    //         itemCount: tabDiagList.length,
    //         // scrollDirection: Axis.vertical,
    //         itemBuilder: (BuildContext context, int index) {
    //           final int count =
    //               tabDiagList.length > 10 ? 10 : tabDiagList.length;
    //           final Animation<double> animation =
    //               Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
    //                   parent: animationController!,
    //                   curve: Interval((1 / count) * index, 1.0,
    //                       curve: Curves.fastOutSlowIn)));
    //           animationController?.forward();

    //           return InfoView(
    //             tabDiagList: tabDiagList[index],
    //             animation: animation,
    //             animationController: animationController!,
    //           );
    //         },
    //       );
    //     });
    //   ),
    // );
  }
  // );
}
// }

class DiagView extends StatelessWidget {
  const DiagView(
      {Key? key, this.tabDiagList, this.animationController, this.animation})
      : super(key: key);

  final DiagnosaListData? tabDiagList;
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
                  0.0, 50 * (1.0 - animation!.value), 0.0),
              child: Container(
                child: DottedBorder(
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(25),
                  color: Color.fromARGB(255, 1, 104, 97),
                  child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                          focusColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                          onTap: () {},
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Card(
                                    elevation: 60,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CalendarPopupView()));
                                      },
                                      splashColor: splashcolor,
                                      highlightColor: splashcolor,
                                      hoverColor: splashcolor,
                                      borderRadius: BorderRadius.circular(40),
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            ClipRRect(
                                              // borderRadius: BorderRadius.circular(40),
                                              child: Image.asset(
                                                'assets/gambar_schedule.png',
                                                cacheHeight: 70,
                                                cacheWidth: 70,
                                                height: 70,
                                                width: 70,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Jadwal',
                                              style: karen,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    margin: EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 15,
                                        bottom: 15),
                                  ),
                                ),
                              ]))),
                ),
              ),
            ),
          );
        });
  }
}
