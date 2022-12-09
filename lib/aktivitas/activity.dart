import 'package:Edifarm/aktivitas/activity_data.dart';
import 'package:Edifarm/aktivitas/listview_activity.dart';
import 'package:Edifarm/aktivitas/chart_view.dart';
import 'package:Edifarm/aktivitas/activity_date.dart';
import 'package:Edifarm/aktivitas/title_activity.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class activityPage extends StatefulWidget {
  const activityPage({Key? key, this.animationController}) : super(key: key);

  final AnimationController? animationController;
  @override
  _activityPageState createState() => _activityPageState();
}

class _activityPageState extends State<activityPage>
    with TickerProviderStateMixin {
  Animation<double>? topBarAnimation;

  List<Widget> listViews = <Widget>[];
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;

  @override
  void initState() {
    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: widget.animationController!,
            curve: Interval(0, 0.5, curve: Curves.fastOutSlowIn)));
    addAllListData();

    scrollController.addListener(() {
      if (scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          setState(() {
            topBarOpacity = 1.0;
          });
        }
      } else if (scrollController.offset <= 24 &&
          scrollController.offset >= 0) {
        if (topBarOpacity != scrollController.offset / 24) {
          setState(() {
            topBarOpacity = scrollController.offset / 24;
          });
        }
      } else if (scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          setState(() {
            topBarOpacity = 0.0;
          });
        }
      }
    });
    super.initState();
  }

  void addAllListData() {
    const int count = 5;

    listViews.add(
      ChartView(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 2, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
    );
    listViews.add(
      tanggalActivity(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 3, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
    );

    listViews.add(
      TitleActivity(
        titleTxt: 'Yang harus kamu lakukan hari ini',

        // subTxt: 'more',
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 4, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
    );

    listViews.add(
      ListViewActivity(
        mainScreenAnimation: Tween<double>(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(
                parent: widget.animationController!,
                curve: Interval((1 / count) * 5, 1.0,
                    curve: Curves.fastOutSlowIn))),
        mainScreenAnimationController: widget.animationController!,
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            getMainListViewUI(),
            getAppBarUI(),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            )
          ],
        ),
      ),
    );
  }

  Widget getMainListViewUI() {
    return FutureBuilder<bool>(
      future: getData(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        } else {
          return ListView.builder(
            controller: scrollController,
            padding: EdgeInsets.only(
              top: AppBar().preferredSize.height +
                  MediaQuery.of(context).padding.top +
                  24,
              bottom: 62 + MediaQuery.of(context).padding.bottom,
            ),
            itemCount: listViews.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              widget.animationController?.forward();
              return listViews[index];
            },
          );
        }
      },
    );
  }

  Widget getAppBarUI() {
    return Column(
      children: <Widget>[
        AnimatedBuilder(
          animation: widget.animationController!,
          builder: (BuildContext context, Widget? child) {
            return FadeTransition(
              opacity: topBarAnimation!,
              child: Transform(
                transform: Matrix4.translationValues(
                    0.0, 30 * (1.0 - topBarAnimation!.value), 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.green,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(32.0),
                      bottomRight: Radius.circular(32.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: AppTheme.grey.withOpacity(0.4 * topBarOpacity),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).padding.top,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 16 - 8.0 * topBarOpacity,
                            bottom: 12 - 8.0 * topBarOpacity),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Activity',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontName,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22 + 6 - 6 * topBarOpacity,
                                    letterSpacing: 1.2,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 38,
                              width: 38,
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(32.0)),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}

class ListViewActivity extends StatefulWidget {
  const ListViewActivity(
      {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;
  @override
  _ListViewActivityState createState() => _ListViewActivityState();
}

class _ListViewActivityState extends State<ListViewActivity>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<ActListData> tabactList = ActListData.tabactList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    super.initState();
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
              aspectRatio: 1.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: GridView(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 16),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: List<Widget>.generate(
                    tabactList.length,
                    (int index) {
                      final int count = tabactList.length;
                      final Animation<double> animation =
                          Tween<double>(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: animationController!,
                          curve: Interval((1 / count) * index, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      );
                      animationController?.forward();
                      return AreaView(
                        tabactList: tabactList[index],
                        animation: animation,
                        animationController: animationController!,
                      );
                    },
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 10,
                    childAspectRatio: 3 / 1,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AreaView extends StatelessWidget {
  const AreaView({
    Key? key,
    this.tabactList,
    this.animationController,
    this.animation,
  }) : super(key: key);

  final ActListData? tabactList;
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
                            splashColor:
                                AppTheme.nearlyDarkBlue.withOpacity(0.2),
                            onTap: () {},
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16, left: 16, right: 16),
                                      child: Expanded(
                                          child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 4, bottom: 2),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  padding: EdgeInsets.only(
                                                      top: 0, left: 0),
                                                  child: Text(
                                                      tabactList!.aktivitas,
                                                      style: TextStyle(
                                                        fontFamily:
                                                            AppTheme.fontName,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 14,
                                                        letterSpacing: 0.2,
                                                        color: AppTheme.green,
                                                      ))),
                                              const Spacer(),
                                              Container(
                                                // alignment: Alignment.centerRight,
                                                padding: EdgeInsets.only(
                                                    bottom: 2, right: 6),
                                                child: Checkbox(
                                                  value: false,
                                                  onChanged: (value) {},
                                                ),
                                              )
                                            ]),
                                      ))),
                                  Row(
                                    children: [
                                      Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                top: 1,
                                              ),
                                              child: Text(tabactList!.tanggal,
                                                  style: TextStyle(
                                                    fontFamily:
                                                        AppTheme.fontName,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 10,
                                                    letterSpacing: 0.2,
                                                    color: AppTheme.green,
                                                  )))),
                                      const Spacer(),
                                      Container(
                                        child: Text(tabactList!.jam,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: AppTheme.fontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                              letterSpacing: 0.2,
                                              color: AppTheme.green,
                                            )),
                                      )
                                    ],
                                  )
                                ]),
                          )))),
            ),
          );
        });
  }
}

class ChartView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const ChartView({Key? key, this.animationController, this.animation})
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
                  height: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topRight: Radius.circular(68.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: AppTheme.grey,
                          offset: Offset(1.1, 1.1),
                          blurRadius: 5.0),
                    ],
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.centerLeft,
                    child: pieChartView(),
                  ),
                ),
              ),
            ),
          );
        });
  }
}

final dataMap = <String, double>{
  "completed": 5,
};

final colorList = <Color>[
  Color.fromARGB(255, 96, 150, 124),
  Colors.brown,
];

@override
Widget pieChartView() {
  return Container(
    child: PieChart(
      dataMap: dataMap,
      chartType: ChartType.ring,
      chartLegendSpacing: 100,
      chartRadius: 75,
      ringStrokeWidth: 20,
      baseChartColor: Color.fromARGB(255, 174, 136, 136).withOpacity(0.15),
      colorList: colorList,
      chartValuesOptions: const ChartValuesOptions(
          showChartValuesInPercentage: true,
          showChartValueBackground: false,
          chartValueBackgroundColor: AppTheme.background,
          showChartValuesOutside: true,
          showChartValues: true),
      totalValue: 20,
    ),
  );
}

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
                        style: GoogleFonts.montserrat(
                            color: Color(0xff006B6C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
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
