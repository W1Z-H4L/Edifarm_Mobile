// import 'package:Edifarm/shared/Theme_App.dart';
// import 'package:Edifarm/ui/pages/diagnosa/answer.dart';
// import 'package:Edifarm/ui/pages/diagnosa/diagnosa_screen.dart';
// import 'package:Edifarm/ui/pages/diagnosa/pertanyaan_data.dart';
// import 'package:flutter/material.dart';
// import 'package:dotted_border/dotted_border.dart';

// class ListViewDiag extends StatefulWidget {
//   const ListViewDiag(
//       {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
//       : super(key: key);

//   final AnimationController? mainScreenAnimationController;
//   final Animation<double>? mainScreenAnimation;
//   @override
//   _ListViewDiagState createState() => _ListViewDiagState();
// }

// class _ListViewDiagState extends State<ListViewDiag>
//     with TickerProviderStateMixin {
//   AnimationController? animationController;
//   List<DiagnosaListData> tabDiagList = DiagnosaListData.tabDiagList;
//   bool _secureCek = true;

//   showCek() {
//     setState(() {
//       _secureCek = !_secureCek;
//     });
//   }

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
//             child: AspectRatio(
//               aspectRatio: 0.75,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 8.0, right: 8),
//                 child: GridView(
//                   padding: const EdgeInsets.only(
//                       left: 16, right: 16, top: 16, bottom: 16),
//                   physics: const BouncingScrollPhysics(),
//                   scrollDirection: Axis.vertical,
//                   children: List<Widget>.generate(
//                     tabDiagList.length,
//                     (int index) {
//                       final int count = tabDiagList.length;
//                       final Animation<double> animation =
//                           Tween<double>(begin: 0.0, end: 1.0).animate(
//                         CurvedAnimation(
//                           parent: animationController!,
//                           curve: Interval((1 / count) * index, 1.0,
//                               curve: Curves.fastOutSlowIn),
//                         ),
//                       );
//                       animationController?.forward();
//                       return AreaView(
//                         tabDiagList: tabDiagList[index],
//                         animation: animation,
//                         animationController: animationController!,
//                       );
//                     },
//                   ),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 1,
//                     mainAxisSpacing: 25,
//                     crossAxisSpacing: 10,
//                     childAspectRatio: 5 / 1,
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

// class AreaView extends StatelessWidget {
//   const AreaView({
//     Key? key,
//     this.tabDiagList,
//     this.animationController,
//     this.animation,
//   }) : super(key: key);

//   final DiagnosaListData? tabDiagList;
//   final AnimationController? animationController;
//   final Animation<double>? animation;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//         animation: animationController!,
//         builder: (BuildContext context, Widget? child) {
//           return FadeTransition(
//               opacity: animation!,
//               child: Transform(
//                 transform: Matrix4.translationValues(
//                     0.0, 50 * (1.0 - animation!.value), 0.0),
//                 child: Container(
//                   child: DottedBorder(
//                       strokeWidth: 1,
//                       borderType: BorderType.RRect,
//                       radius: Radius.circular(25),

//                       // decoration: BoxDecoration(

//                       color: Color.fromARGB(255, 1, 104, 97),
//                       // borderRadius: const BorderRadius.only(
//                       //     topLeft: Radius.circular(8.0),
//                       //     bottomLeft: Radius.circular(8.0),
//                       //     bottomRight: Radius.circular(8.0),
//                       //     topRight: Radius.circular(8.0)),
//                       // boxShadow: <BoxShadow>[
//                       //   BoxShadow(
//                       //       color: FitnessAppTheme.grey.withOpacity(0.4),
//                       //       offset: const Offset(1.1, 1.1),
//                       //       blurRadius: 10.0),
//                       // ],),

//                       child: Material(
//                           color: Colors.transparent,
//                           child: InkWell(
//                               focusColor: Colors.transparent,
//                               highlightColor: Colors.transparent,
//                               hoverColor: Colors.transparent,
//                               borderRadius:
//                                   const BorderRadius.all(Radius.circular(8.0)),
//                               splashColor:
//                                   AppTheme.nearlyDarkBlue.withOpacity(0.2),
//                               onTap: () => const DiagnosaScreen(),
//                               child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Expanded(
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: <Widget>[
//                                           Container(
//                                               padding: EdgeInsets.only(
//                                                   top: 16, left: 10),
//                                               child: Text(tabDiagList!.no,
//                                                   style: const TextStyle(
//                                                     fontFamily:
//                                                         AppTheme.fontName,
//                                                     fontWeight: FontWeight.w800,
//                                                     fontSize: 10,
//                                                     letterSpacing: 0.2,
//                                                     color: AppTheme.green,
//                                                   ))),
//                                           Container(
//                                             width: 220,
//                                             padding: EdgeInsets.only(top: 16),
//                                             child: Text(tabDiagList!.answer,
//                                                 textAlign: TextAlign.start,
//                                                 style: const TextStyle(
//                                                   fontFamily: AppTheme.fontName,
//                                                   fontWeight: FontWeight.w800,
//                                                   fontSize: 10,
//                                                   letterSpacing: 0.2,
//                                                   color: AppTheme.green,
//                                                 )),
//                                           ),
//                                           const Spacer(),
//                                           Container(
//                                             // alignment: Alignment.centerRight,
//                                             padding: EdgeInsets.only(top: 5),

//                                             child: CheckboxListTile(
//                                               value: true,
//                                               onChanged: (value) {},
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     )
//                                   ])))),
//                 ),
//               ));
//         });
//   }
// }

// //import 'package:dotted_border/dotted_border.dart';
// // import 'package:Edifarm/shared/Theme_App.dart';
// // import 'package:Edifarm/ui/pages/diagnosa/answer.dart';
// // import 'package:Edifarm/ui/pages/diagnosa/pertanyaan_data.dart';
// // import 'package:dotted_border/dotted_border.dart';

// // import 'package:flutter/material.dart';

// // class DiagListView extends StatefulWidget {
// //   const DiagListView(
// //       {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
// //       : super(key: key);

// //   final AnimationController? mainScreenAnimationController;
// //   final Animation<double>? mainScreenAnimation;

// //   @override
// //   _DiagListViewState createState() => _DiagListViewState();
// // }

// // class _DiagListViewState extends State<DiagListView>
// //     with TickerProviderStateMixin {
// //   AnimationController? animationController;
// //   // List<Diagnose> isiData = snapshot.data;
// //   // List<DiagnosaListData> tabDiagList = DiagnosaListData.tabDiagList;
// //   ServiceApiDiag serviceApi = ServiceApiDiag();
// //   late Future<List<Diagnose>> listdata;

// //   get isiData => null;
// //   @override
// //   void initState() {
// //     animationController = AnimationController(
// //         duration: const Duration(milliseconds: 20), vsync: this);
// //     super.initState();
// //     listdata = serviceApi.getDiag();
// //   }

// //   Future<bool> getData() async {
// //     await Future<dynamic>.delayed(const Duration(milliseconds: 50));
// //     return true;
// //   }

// //   @override
// //   void dispose() {
// //     animationController?.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return AnimatedBuilder(
// //       animation: widget.mainScreenAnimationController!,
// //       builder: (context, snapshot) {
// //         return FadeTransition(
// //             opacity: widget.mainScreenAnimation!,
// //             child: Transform(
// //               transform: Matrix4.translationValues(
// //                   0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
// //               child: AspectRatio(
// //                 aspectRatio: 0.6,
// //                 child: Expanded(
// //                   child: FutureBuilder<List<Diagnose>>(
// //                       future: listdata,
// //                       builder: (context, snapshot) {
// //                         if (snapshot.hasData) {
// //                           List<Diagnose>? isiData = snapshot.data;
// //                           // padding: const EdgeInsets.only(left: 8.0, right: 8),

// //                         } else if (snapshot.hasError) {
// //                           return Text("${snapshot.data}");
// //                         }
// //                         return GridView(
// //                           padding: const EdgeInsets.only(
// //                               left: 16, right: 16, top: 16, bottom: 16),
// //                           physics: const BouncingScrollPhysics(),
// //                           scrollDirection: Axis.vertical,
// //                           gridDelegate:
// //                               const SliverGridDelegateWithFixedCrossAxisCount(
// //                             crossAxisCount: 1,
// //                             mainAxisSpacing: 25,
// //                             crossAxisSpacing: 10,
// //                             childAspectRatio: 6 / 1,
// //                           ),
// //                           children: List<Widget>.generate(
// //                             isiData!.length,
// //                             (int index) {
// //                               final int count = isiData.length;
// //                               final Animation<double> animation =
// //                                   Tween<double>(begin: 0.0, end: 1.0).animate(
// //                                 CurvedAnimation(
// //                                   parent: animationController!,
// //                                   curve: Interval((1 / count) * index, 1.0,
// //                                       curve: Curves.fastOutSlowIn),
// //                                 ),
// //                               );
// //                               animationController?.forward();
// //                               return DiagView(
// //                                 isiData: isiData[index],
// //                                 animation: animation,
// //                                 animationController: animationController!,
// //                               );
// //                             },
// //                           ),
// //                         );
// //                       }),
// //                 ),
// //               ),
// //             ));
// //       },
// //     );
// //   }
// // }

// // class DiagView extends StatelessWidget {
// //   const DiagView(
// //       {Key? key, this.isiData, this.animationController, this.animation})
// //       : super(key: key);

// //   final Diagnose? isiData;
// //   final AnimationController? animationController;
// //   final Animation<double>? animation;

// //   @override
// //   Widget build(BuildContext context) {
// //     return AnimatedBuilder(
// //         animation: animationController!,
// //         builder: (BuildContext context, Widget? child) {
// //           return FadeTransition(
// //               opacity: animation!,
// //               child: Transform(
// //                   transform: Matrix4.translationValues(
// //                       0.0, 50 * (1.0 - animation!.value), 0.0),
// //                   child: Container(
// //                       child: DottedBorder(
// //                           strokeWidth: 1,
// //                           borderType: BorderType.RRect,
// //                           radius: Radius.circular(25),

// //                           // decoration: BoxDecoration(

// //                           color: Color.fromARGB(255, 1, 104, 97),
// //                           // borderRadius: const BorderRadius.only(
// //                           //     topLeft: Radius.circular(8.0),
// //                           //     bottomLeft: Radius.circular(8.0),
// //                           //     bottomRight: Radius.circular(8.0),
// //                           //     topRight: Radius.circular(8.0)),
// //                           // boxShadow: <BoxShadow>[
// //                           //   BoxShadow(
// //                           //       color: FitnessAppTheme.grey.withOpacity(0.4),
// //                           //       offset: const Offset(1.1, 1.1),
// //                           //       blurRadius: 10.0),
// //                           // ],),

// //                           child: Column(
// //                               mainAxisAlignment: MainAxisAlignment.center,
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: <Widget>[
// //                                 Expanded(
// //                                   child: Row(
// //                                     mainAxisAlignment: MainAxisAlignment.start,
// //                                     crossAxisAlignment:
// //                                         CrossAxisAlignment.start,
// //                                     children: <Widget>[
// //                                       Container(
// //                                           padding: EdgeInsets.only(
// //                                               top: 16, left: 10),
// //                                           child: Text(isiData!.idPertanyaan!,
// //                                               style: const TextStyle(
// //                                                 fontFamily: AppTheme.fontName,
// //                                                 fontWeight: FontWeight.w800,
// //                                                 fontSize: 10,
// //                                                 letterSpacing: 0.2,
// //                                                 color: AppTheme.green,
// //                                               ))),
// //                                       Container(
// //                                         width: 220,
// //                                         padding: EdgeInsets.only(top: 16),
// //                                         child: Text(isiData!.pertanyaan!,
// //                                             textAlign: TextAlign.start,
// //                                             style: const TextStyle(
// //                                               fontFamily: AppTheme.fontName,
// //                                               fontWeight: FontWeight.w800,
// //                                               fontSize: 10,
// //                                               letterSpacing: 0.2,
// //                                               color: AppTheme.green,
// //                                             )),
// //                                       ),
// //                                       const Spacer(),
// //                                       Answer()
// //                                     ],
// //                                   ),
// //                                 )
// //                               ])))));
// //         });
// //   }
// // }

// // // import 'package:edifarm/shared/Theme_App.dart';
// // // import 'package:edifarm/ui/pages/diagnosa/pertanyaan_data.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:dotted_border/dotted_border.dart';

// // // class DiagnosaListView extends StatefulWidget {
// // //   const DiagnosaListView(
// // //       {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
// // //       : super(key: key);

// // //   final AnimationController? mainScreenAnimationController;
// // //   final Animation<double>? mainScreenAnimation;
// // //   @override
// // //   _DiagnosaListViewState createState() => _DiagnosaListViewState();
// // // }

// // // class _DiagnosaListViewState extends State<DiagnosaListView>
// // //     with TickerProviderStateMixin {
// // //   AnimationController? animationController;
// // //   List<DiagnosaListData> diagListData = DiagnosaListData.tabDiagList
// // //       // '1. Apakah batang padi bagian tengah anakan terpotong ?',
// // //       // '2. Apakah tanaman padi anda berwarna kekuningan ?',
// // //       // '3. Apakah anda mengering ?',
// // //       // 'pupuk lagi',
// // //       ;

// // //   @override
// // //   void initState() {
// // //     animationController = AnimationController(
// // //         duration: const Duration(milliseconds: 200), vsync: this);
// // //     super.initState();
// // //   }

// // //   @override
// // //   void dispose() {
// // //     animationController?.dispose();
// // //     super.dispose();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return AnimatedBuilder(
// // //       animation: widget.mainScreenAnimationController!,
// // //       builder: (BuildContext context, Widget? child) {
// // //         return FadeTransition(
// // //           opacity: widget.mainScreenAnimation!,
// // //           child: Transform(
// // //             transform: Matrix4.translationValues(
// // //                 0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
// // //             child: Container(
// // //               height: 330,
// // //               width: double.infinity,
// // //               child: ListView.builder(
// // //                 padding: const EdgeInsets.only(
// // //                     top: 10, bottom: 0, right: 16, left: 16),
// // //                 itemCount: diagListData.length,
// // //                 scrollDirection: Axis.vertical,
// // //                 itemBuilder: (BuildContext context, int index) {
// // //                   final int count =
// // //                       diagListData.length > 10 ? 10 : diagListData.length;
// // //                   final Animation<double> animation =
// // //                       Tween<double>(begin: 0.0, end: 1.0).animate(
// // //                           CurvedAnimation(
// // //                               parent: animationController!,
// // //                               curve: Interval((1 / count) * index, 1.0,
// // //                                   curve: Curves.fastOutSlowIn)));
// // //                   animationController?.forward();

// // //                   return DiagView(
// // //                     diagListdata: diagListData[index],
// // //                     animation: animation,
// // //                     animationController: animationController!,
// // //                   );
// // //                 },
// // //               ),
// // //             ),
// // //           ),
// // //         );
// // //       },
// // //     );
// // //   }
// // // }

// // // class DiagView extends StatelessWidget {
// // //   const DiagView({
// // //     Key? key,
// // //     this.diagListdata,
// // //     this.answer,
// // //     this.animationController,
// // //     this.animation,
// // //   }) : super(key: key);
// // //   final DiagnosaListData? diagListdata;
// // //   final String? answer;
// // //   final AnimationController? animationController;
// // //   final Animation<double>? animation;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return AnimatedBuilder(
// // //       animation: animationController!,
// // //       builder: (BuildContext context, Widget? child) {
// // //         return FadeTransition(
// // //           opacity: animation!,
// // //           child: Transform(
// // //             transform: Matrix4.translationValues(
// // //                 0.0, 50 * (1.0 - animation!.value), 0.0),
// // //             child: Container(
// // //               child: DottedBorder(
// // //                 strokeWidth: 1,
// // //                 borderType: BorderType.RRect,
// // //                 radius: Radius.circular(25),
// // //                 color: Color.fromARGB(255, 1, 104, 97),
// // //                 child: Material(
// // //                   color: Colors.transparent,
// // //                   child: InkWell(
// // //                     focusColor: Colors.transparent,
// // //                     highlightColor: Colors.transparent,
// // //                     hoverColor: Colors.transparent,
// // //                     borderRadius: const BorderRadius.all(Radius.circular(8.0)),
// // //                     splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
// // //                     onTap: () {},
// // //                     child: Column(
// // //                       mainAxisAlignment: MainAxisAlignment.center,
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: <Widget>[
// // //                         Text(
// // //                           diagListdata!.no,
// // //                           textAlign: TextAlign.left,
// // //                           style: TextStyle(
// // //                             fontFamily: AppTheme.fontName,
// // //                             fontWeight: FontWeight.bold,
// // //                             fontSize: 16,
// // //                             letterSpacing: 0.2,
// // //                             color: AppTheme.black,
// // //                           ),
// // //                         ),
// // //                         Expanded(
// // //                           child: Padding(
// // //                             padding: const EdgeInsets.only(top: 8, bottom: 8),
// // //                             child: Row(
// // //                               mainAxisAlignment: MainAxisAlignment.start,
// // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // //                               children: <Widget>[
// // //                                 Text(
// // //                                   diagListdata!.answer,
// // //                                   style: TextStyle(
// // //                                     fontFamily: AppTheme.fontName,
// // //                                     fontWeight: FontWeight.w500,
// // //                                     fontSize: 10,
// // //                                     letterSpacing: 0.2,
// // //                                     color: AppTheme.black,
// // //                                   ),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         );
// // //       },
// // //     );
// // //   }
// // // }

// class DiagListView extends StatefulWidget {
//   const DiagListView(
//       {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
//       : super(key: key);

//   final AnimationController? mainScreenAnimationController;
//   final Animation<double>? mainScreenAnimation;

//   @override
//   _DiagListViewState createState() => _DiagListViewState();
// }

// class _DiagListViewState extends State<DiagListView>
//     with TickerProviderStateMixin {
//   AnimationController? animationController;
//   List<DiagnosaListData> tabDiagList = DiagnosaListData.tabDiagList;

//   @override
//   void initState() {
//     animationController = AnimationController(
//         duration: const Duration(milliseconds: 20), vsync: this);
//     super.initState();
//   }

//   Future<bool> getData() async {
//     await Future<dynamic>.delayed(const Duration(milliseconds: 50));
//     return true;
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
//             child: AspectRatio(
//               aspectRatio: 0.8,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 8.0, right: 8),
//                 child: GridView(
//                   padding: const EdgeInsets.only(
//                       left: 16, right: 16, top: 16, bottom: 16),
//                   physics: const BouncingScrollPhysics(),
//                   scrollDirection: Axis.vertical,
//                   children: List<Widget>.generate(
//                     tabDiagList.length,
//                     (int index) {
//                       final int count = tabDiagList.length;
//                       final Animation<double> animation =
//                           Tween<double>(begin: 0.0, end: 1.0).animate(
//                         CurvedAnimation(
//                           parent: animationController!,
//                           curve: Interval((1 / count) * index, 1.0,
//                               curve: Curves.fastOutSlowIn),
//                         ),
//                       );
//                       animationController?.forward();
//                       return DiagView(
//                         tabDiagList: tabDiagList[index],
//                         animation: animation,
//                         animationController: animationController!,
//                       );
//                     },
//                   ),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 1,
//                     mainAxisSpacing: 25,
//                     crossAxisSpacing: 10,
//                     childAspectRatio: 4 / 1,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//     // return AnimatedBuilder(
//     //     animation: widget.mainScreenAnimationController!,
//     //     builder: (BuildContext context, Widget? child) {
//     //       return ListView.builder(
//     //         // opacity: widget.mainScreenAnimation!,
//     //         // child: Transform(
//     //         //   transform: Matrix4.translationValues(
//     //         //       0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
//     //         // child: ListView(
//     //         //   height: 330,
//     //         //   width: double.infinity,
//     //         //   child: ListView.builder(
//     //         padding:
//     //             const EdgeInsets.only(top: 10, bottom: 0, right: 16, left: 16),
//     //         itemCount: tabDiagList.length,
//     //         // scrollDirection: Axis.vertical,
//     //         itemBuilder: (BuildContext context, int index) {
//     //           final int count =
//     //               tabDiagList.length > 10 ? 10 : tabDiagList.length;
//     //           final Animation<double> animation =
//     //               Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//     //                   parent: animationController!,
//     //                   curve: Interval((1 / count) * index, 1.0,
//     //                       curve: Curves.fastOutSlowIn)));
//     //           animationController?.forward();

//     //           return InfoView(
//     //             tabDiagList: tabDiagList[index],
//     //             animation: animation,
//     //             animationController: animationController!,
//     //           );
//     //         },
//     //       );
//     //     });
//     //   ),
//     // );
//   }
//   // );
// }
// // }

// class DiagView extends StatelessWidget {
//   const DiagView(
//       {Key? key, this.tabDiagList, this.animationController, this.animation})
//       : super(key: key);

//   final DiagnosaListData? tabDiagList;
//   final AnimationController? animationController;
//   final Animation<double>? animation;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//         animation: animationController!,
//         builder: (BuildContext context, Widget? child) {
//           return FadeTransition(
//             opacity: animation!,
//             child: Transform(
//               transform: Matrix4.translationValues(
//                   0.0, 50 * (1.0 - animation!.value), 0.0),
//               child: Container(
//                 child: DottedBorder(
//                     strokeWidth: 1,
//                     borderType: BorderType.RRect,
//                     radius: Radius.circular(25),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Padding(
//                             padding: const EdgeInsets.only(
//                               top: 16,
//                               left: 16,
//                             ),
//                             child: Expanded(
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   Text(tabDiagList!.no,
//                                       style: const TextStyle(
//                                         fontFamily: AppTheme.fontName,
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 10,
//                                         letterSpacing: 0.2,
//                                         color: AppTheme.black,
//                                       )),
//                                   Container(
//                                     width: 220,
//                                     child: Text(
//                                       tabDiagList!.answer,
//                                       style: const TextStyle(
//                                         fontFamily: AppTheme.fontName,
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 10,
//                                         letterSpacing: 0.2,
//                                         color: AppTheme.black,
//                                       ),
//                                     ),
//                                   ),
//                                   const Spacer(),
//                                   const Answer(),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ])),
//               ),
//             ),
//           );
//           // Positioned(
//           //   top: 20,
//           //   left: 8,
//           //   right: 8,
//           //   child: ClipRRect(
//           //     borderRadius: BorderRadius.only(
//           //         topLeft: Radius.circular(8.0),
//           //         bottomLeft: Radius.circular(0),
//           //         bottomRight: Radius.circular(0),
//           //         topRight: Radius.circular(68.0)),
//           //     child: Text(
//           //       tabDiagList!.quetion,
//           //     ),
//           //   ),
//           // ),
//         });
//   }
// }

// // import 'package:edifarm/shared/Theme_App.dart';
// // import 'package:edifarm/ui/pages/diagnosa/pertanyaan_data.dart';
// // import 'package:flutter/material.dart';
// // import 'package:dotted_border/dotted_border.dart';

// // class DiagnosaListView extends StatefulWidget {
// //   const DiagnosaListView(
// //       {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
// //       : super(key: key);

// //   final AnimationController? mainScreenAnimationController;
// //   final Animation<double>? mainScreenAnimation;
// //   @override
// //   _DiagnosaListViewState createState() => _DiagnosaListViewState();
// // }

// // class _DiagnosaListViewState extends State<DiagnosaListView>
// //     with TickerProviderStateMixin {
// //   AnimationController? animationController;
// //   List<DiagnosaListData> diagListData = DiagnosaListData.tabDiagList
// //       // '1. Apakah batang padi bagian tengah anakan terpotong ?',
// //       // '2. Apakah tanaman padi anda berwarna kekuningan ?',
// //       // '3. Apakah anda mengering ?',
// //       // 'pupuk lagi',
// //       ;

// //   @override
// //   void initState() {
// //     animationController = AnimationController(
// //         duration: const Duration(milliseconds: 200), vsync: this);
// //     super.initState();
// //   }

// //   @override
// //   void dispose() {
// //     animationController?.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return AnimatedBuilder(
// //       animation: widget.mainScreenAnimationController!,
// //       builder: (BuildContext context, Widget? child) {
// //         return FadeTransition(
// //           opacity: widget.mainScreenAnimation!,
// //           child: Transform(
// //             transform: Matrix4.translationValues(
// //                 0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
// //             child: Container(
// //               height: 330,
// //               width: double.infinity,
// //               child: ListView.builder(
// //                 padding: const EdgeInsets.only(
// //                     top: 10, bottom: 0, right: 16, left: 16),
// //                 itemCount: diagListData.length,
// //                 scrollDirection: Axis.vertical,
// //                 itemBuilder: (BuildContext context, int index) {
// //                   final int count =
// //                       diagListData.length > 10 ? 10 : diagListData.length;
// //                   final Animation<double> animation =
// //                       Tween<double>(begin: 0.0, end: 1.0).animate(
// //                           CurvedAnimation(
// //                               parent: animationController!,
// //                               curve: Interval((1 / count) * index, 1.0,
// //                                   curve: Curves.fastOutSlowIn)));
// //                   animationController?.forward();

// //                   return DiagView(
// //                     diagListdata: diagListData[index],
// //                     animation: animation,
// //                     animationController: animationController!,
// //                   );
// //                 },
// //               ),
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }

// // class DiagView extends StatelessWidget {
// //   const DiagView({
// //     Key? key,
// //     this.diagListdata,
// //     this.answer,
// //     this.animationController,
// //     this.animation,
// //   }) : super(key: key);
// //   final DiagnosaListData? diagListdata;
// //   final String? answer;
// //   final AnimationController? animationController;
// //   final Animation<double>? animation;

// //   @override
// //   Widget build(BuildContext context) {
// //     return AnimatedBuilder(
// //       animation: animationController!,
// //       builder: (BuildContext context, Widget? child) {
// //         return FadeTransition(
// //           opacity: animation!,
// //           child: Transform(
// //             transform: Matrix4.translationValues(
// //                 0.0, 50 * (1.0 - animation!.value), 0.0),
// //             child: Container(
// //               child: DottedBorder(
// //                 strokeWidth: 1,
// //                 borderType: BorderType.RRect,
// //                 radius: Radius.circular(25),
// //                 color: Color.fromARGB(255, 1, 104, 97),
// //                 child: Material(
// //                   color: Colors.transparent,
// //                   child: InkWell(
// //                     focusColor: Colors.transparent,
// //                     highlightColor: Colors.transparent,
// //                     hoverColor: Colors.transparent,
// //                     borderRadius: const BorderRadius.all(Radius.circular(8.0)),
// //                     splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
// //                     onTap: () {},
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: <Widget>[
// //                         Text(
// //                           diagListdata!.no,
// //                           textAlign: TextAlign.left,
// //                           style: TextStyle(
// //                             fontFamily: AppTheme.fontName,
// //                             fontWeight: FontWeight.bold,
// //                             fontSize: 16,
// //                             letterSpacing: 0.2,
// //                             color: AppTheme.black,
// //                           ),
// //                         ),
// //                         Expanded(
// //                           child: Padding(
// //                             padding: const EdgeInsets.only(top: 8, bottom: 8),
// //                             child: Row(
// //                               mainAxisAlignment: MainAxisAlignment.start,
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: <Widget>[
// //                                 Text(
// //                                   diagListdata!.answer,
// //                                   style: TextStyle(
// //                                     fontFamily: AppTheme.fontName,
// //                                     fontWeight: FontWeight.w500,
// //                                     fontSize: 10,
// //                                     letterSpacing: 0.2,
// //                                     color: AppTheme.black,
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }
import 'dart:convert';

import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/controler/CurentUser.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:google_fonts/google_fonts.dart';

class Deskrip extends StatefulWidget {
  const Deskrip({super.key});

  @override
  State<Deskrip> createState() => _DeskripState();
}

class _DeskripState extends State<Deskrip> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  TextEditingController isi = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    isi = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
    isi.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(top: 32, right: 16, bottom: 16, left: 16),
        child: DottedBorder(
            color: AppTheme.green,
            strokeWidth: 1,
            borderType: BorderType.RRect,
            radius: Radius.circular(25),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 16,
                      ),
                      child: Expanded(
                          child: Container(
                        height: 100,
                        child: TextFormField(
                          controller: isi,
                          cursorHeight: 25,
                          style: GoogleFonts.montserrat(),
                          decoration: const InputDecoration(
                            hintText:
                                'Berikan Penjelasan Tambahan Agar Admin Dapat Lebih Mengerti',
                            hintStyle: AppTheme.custom,
                          ),
                          maxLength: 500,
                          maxLines: 20,
                        ),
                      ))),
                  Row(
                    children: [
                      const SizedBox(
                        width: 80,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: AppTheme.green),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            'Cancel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                color: AppTheme.green,
                                fontFamily: AppTheme.fontName),
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        child: Container(
                          height: 30,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppTheme.green,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            'Submit',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontFamily: AppTheme.fontName),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.only(top: 50, bottom: 50),
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: AlertDialog(
                                    title: const Text(
                                      "Apakah data yang anda masukan sudah sesuai ?",
                                      selectionColor: Colors.white,
                                      style: TextStyle(
                                          color: AppTheme.black,
                                          fontFamily: AppTheme.fontName,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    actions: [
                                      Container(
                                        height: 30,
                                        width: 60,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: AppTheme.orange,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text(
                                              "Tidak",
                                              style: TextStyle(
                                                  color: AppTheme.white,
                                                  fontFamily: AppTheme.fontName,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 60,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.orange),
                                            color: AppTheme.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: TextButton(
                                            onPressed: () {
                                              deskrip();
                                            },
                                            child: const Text(
                                              "Ya",
                                              style: TextStyle(
                                                  color: AppTheme.orange,
                                                  fontFamily: AppTheme.fontName,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                      ),
                      const SizedBox(
                        width: 80,
                      )
                    ],
                  ),
                ])));
  }

  final CurrentUser _currentUser = Get.put(CurrentUser());
  Future deskrip() async {
    try {
      var response = await http.post(Uri.parse(ApiConnect.lapor), body: {
        "isi": isi.text.trim(),
        "tanggal_consul": DateTime.now().toString(),
        "id_user": _currentUser.user.idUser.toString()
      });

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        Navigator.pushNamed(context, '/diag');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      print(e.toString());
    }
  }

  void verifyPindah(BuildContext context) {
    if (isi.text.isEmpty) {
      Fluttertoast.showToast(msg: "Deskripsi Tidak Boleh Kosong");
    } else {
      deskrip();
    }
  }
}
// Future addDataSurat(BuildContext context, File imageFile) async {
//     var uri = Uri.parse(ApiConnect.lapor);
//     var stream = http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
//     var length = await imageFile.length();
//     var req = http.MultipartRequest('POST', uri);
//     req.fields['id_akun'] = _currentUser.user.idAkun;
  
//     var pic = http.MultipartFile("image", stream, length,
//         filename: basename(imageFile.path));
//     req.files.add(pic);
//     var response = await req.send();
//     if (response.statusCode == 200) {
//       print("ok");
//       showSuccessDialog(context);
//     } else {
//       print("Ga");
//     }
//   }
