import 'package:dotted_border/dotted_border.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:Edifarm/ui/pages/dashboard/models/info_data.dart';
import 'package:Edifarm/ui/pages/diagnosa/pertanyaan_data.dart';
import 'package:flutter/material.dart';

import '../calender/calendar_popup_view.dart';

class DiagListView extends StatefulWidget {
  const DiagListView(
      {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;

  @override
  _DiagListViewState createState() => _DiagListViewState();
}

class _DiagListViewState extends State<DiagListView>
    with TickerProviderStateMixin {
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
              aspectRatio: 0.7,
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
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                      // Text(tabDiagList!.no,
                                      //     style: TextStyle(
                                      //       fontFamily:
                                      //           AppTheme.fontName,
                                      //       fontWeight:
                                      //           FontWeight.w500,
                                      //       fontSize: 10,
                                      //       letterSpacing: 0.2,
                                      //       color: AppTheme.black,
                                      //     )),
                                      Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 1)),
                                        Text(tabDiagList!.no,
                                            style: TextStyle(
                                              fontFamily: AppTheme.fontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                              letterSpacing: 0.2,
                                              color: AppTheme.black,
                                            )),
                                        SizedBox(
                                          width: 1,
                                        ),
                                        Container(
                                          width: 220,
                                          child: Text(
                                            tabDiagList!.answer,
                                            style: TextStyle(
                                              fontFamily: AppTheme.fontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                              letterSpacing: 0.2,
                                              color: AppTheme.black,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Checkbox(
                                            checkColor: AppTheme.green,
                                            focusColor: AppTheme.green,
                                            value: false,
                                            onChanged: (value) {},
                                          ),
                                        )
                                      ])
                                    ])),
                              ]))),
                ),
              ),
            ),
          );
        } // Positioned(
        //   top: 20,
        //   left: 8,
        //   right: 8,
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(8.0),
        //         bottomLeft: Radius.circular(0),
        //         bottomRight: Radius.circular(0),
        //         topRight: Radius.circular(68.0)),
        //     child: Text(
        //       tabDiagList!.quetion,
        //     ),
        //   ),
        // ),
        );
  }
}

  



// import 'package:edifarm/shared/Theme_App.dart';
// import 'package:edifarm/ui/pages/diagnosa/pertanyaan_data.dart';
// import 'package:flutter/material.dart';
// import 'package:dotted_border/dotted_border.dart';

// class DiagnosaListView extends StatefulWidget {
//   const DiagnosaListView(
//       {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
//       : super(key: key);

//   final AnimationController? mainScreenAnimationController;
//   final Animation<double>? mainScreenAnimation;
//   @override
//   _DiagnosaListViewState createState() => _DiagnosaListViewState();
// }

// class _DiagnosaListViewState extends State<DiagnosaListView>
//     with TickerProviderStateMixin {
//   AnimationController? animationController;
//   List<DiagnosaListData> diagListData = DiagnosaListData.tabDiagList
//       // '1. Apakah batang padi bagian tengah anakan terpotong ?',
//       // '2. Apakah tanaman padi anda berwarna kekuningan ?',
//       // '3. Apakah anda mengering ?',
//       // 'pupuk lagi',
//       ;

//   @override
//   void initState() {
//     animationController = AnimationController(
//         duration: const Duration(milliseconds: 200), vsync: this);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     animationController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: widget.mainScreenAnimationController!,
//       builder: (BuildContext context, Widget? child) {
//         return FadeTransition(
//           opacity: widget.mainScreenAnimation!,
//           child: Transform(
//             transform: Matrix4.translationValues(
//                 0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
//             child: Container(
//               height: 330,
//               width: double.infinity,
//               child: ListView.builder(
//                 padding: const EdgeInsets.only(
//                     top: 10, bottom: 0, right: 16, left: 16),
//                 itemCount: diagListData.length,
//                 scrollDirection: Axis.vertical,
//                 itemBuilder: (BuildContext context, int index) {
//                   final int count =
//                       diagListData.length > 10 ? 10 : diagListData.length;
//                   final Animation<double> animation =
//                       Tween<double>(begin: 0.0, end: 1.0).animate(
//                           CurvedAnimation(
//                               parent: animationController!,
//                               curve: Interval((1 / count) * index, 1.0,
//                                   curve: Curves.fastOutSlowIn)));
//                   animationController?.forward();

//                   return DiagView(
//                     diagListdata: diagListData[index],
//                     animation: animation,
//                     animationController: animationController!,
//                   );
//                 },
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class DiagView extends StatelessWidget {
//   const DiagView({
//     Key? key,
//     this.diagListdata,
//     this.answer,
//     this.animationController,
//     this.animation,
//   }) : super(key: key);
//   final DiagnosaListData? diagListdata;
//   final String? answer;
//   final AnimationController? animationController;
//   final Animation<double>? animation;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: animationController!,
//       builder: (BuildContext context, Widget? child) {
//         return FadeTransition(
//           opacity: animation!,
//           child: Transform(
//             transform: Matrix4.translationValues(
//                 0.0, 50 * (1.0 - animation!.value), 0.0),
//             child: Container(
//               child: DottedBorder(
//                 strokeWidth: 1,
//                 borderType: BorderType.RRect,
//                 radius: Radius.circular(25),
//                 color: Color.fromARGB(255, 1, 104, 97),
//                 child: Material(
//                   color: Colors.transparent,
//                   child: InkWell(
//                     focusColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     hoverColor: Colors.transparent,
//                     borderRadius: const BorderRadius.all(Radius.circular(8.0)),
//                     splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
//                     onTap: () {},
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(
//                           diagListdata!.no,
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontFamily: AppTheme.fontName,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                             letterSpacing: 0.2,
//                             color: AppTheme.black,
//                           ),
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.only(top: 8, bottom: 8),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text(
//                                   diagListdata!.answer,
//                                   style: TextStyle(
//                                     fontFamily: AppTheme.fontName,
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 10,
//                                     letterSpacing: 0.2,
//                                     color: AppTheme.black,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
