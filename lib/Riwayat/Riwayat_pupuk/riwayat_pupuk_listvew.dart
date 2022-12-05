import 'package:Edifarm/aktivitas/activity_data.dart';
import 'package:Edifarm/Riwayat/Riwayat_pupuk/riwayat_pupuk_data.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class ListRiwayatPupuk extends StatefulWidget {
  const ListRiwayatPupuk(
      {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;
  @override
  _ListRiwayatPupukState createState() => _ListRiwayatPupukState();
}

class _ListRiwayatPupukState extends State<ListRiwayatPupuk>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<PupukListData> tabPupukList = PupukListData.tabPupukList;

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
              aspectRatio: 0.4,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: GridView(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 16),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: List<Widget>.generate(
                    tabPupukList.length,
                    (int index) {
                      final int count = tabPupukList.length;
                      final Animation<double> animation =
                          Tween<double>(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: animationController!,
                          curve: Interval((1 / count) * index, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      );
                      animationController?.forward();
                      return PupukAreaView(
                        tabPupukList: tabPupukList[index],
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

class PupukAreaView extends StatelessWidget {
  const PupukAreaView({
    Key? key,
    this.tabPupukList,
    this.animationController,
    this.animation,
  }) : super(key: key);

  final PupukListData? tabPupukList;
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

                      // decoration: BoxDecoration(

                      color: Color.fromARGB(255, 1, 104, 97),
                      // borderRadius: const BorderRadius.only(
                      //     topLeft: Radius.circular(8.0),
                      //     bottomLeft: Radius.circular(8.0),
                      //     bottomRight: Radius.circular(8.0),
                      //     topRight: Radius.circular(8.0)),
                      // boxShadow: <BoxShadow>[
                      //   BoxShadow(
                      //       color: FitnessAppTheme.grey.withOpacity(0.4),
                      //       offset: const Offset(1.1, 1.1),
                      //       blurRadius: 10.0),
                      // ],),

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
                                                      tabPupukList!.aktivitas,
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
                                                  alignment: Alignment.topRight,
                                                  height: 20,
                                                  width: 60,
                                                  child: Text(
                                                    'Selesai',
                                                  )

                                                  // alignment: Alignment.centerRight,
                                                  // padding: EdgeInsets.only(
                                                  //     bottom: 2, right: 6),
                                                  // child: Checkbox(
                                                  //   value: false,
                                                  //   onChanged: (value) {},
                                                  // ),
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
                                              child: Text(tabPupukList!.tanggal,
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
                                        child: Text(tabPupukList!.jam,
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
