// import 'package:edifarm/riwayat/riwayart_pupuk.dart';
// import 'package:edifarm/shared/Theme_App.dart';
// import 'package:edifarm/shared/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_fonts/google_fonts.dart';

// class riwayat extends StatefulWidget {
//   const riwayat({super.key});

//   @override
//   State<riwayat> createState() => _riwayatState();
// }

// class _riwayatState extends State<riwayat> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         brightness: Brightness.dark,
//         toolbarHeight: 70,
//         title: Text(
//           'Riwayat',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontFamily: AppTheme.fontName,
//             fontWeight: FontWeight.w700,
//             fontSize: 12,
//             letterSpacing: 1.2,
//             color: Colors.white,
//           ),
//         ),
//         // centerTitle: true,
//         // titleTextStyle: GoogleFonts.montserrat(),
//         // titleSpacing: 20,
//         // shadowColor: ,
//         backgroundColor: subtitleColor2,
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(32),
//               bottomRight: Radius.circular(32),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppTheme.background,
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Stack(
//           children: <Widget>[
//             ListViewRiwayatPupuk(),
//             SizedBox(
//               height: MediaQuery.of(context).padding.bottom,
//             )
//           ],
//         ),
//       ),
//     );
//   }
  
// }
// @override
//   Widget ListViewRiwayatPupuk() {
//     return AnimatedBuilder(
//       animation: widget.mainScreenAnimationController!,
//       builder: (BuildContext context, Widget? child) {
//         return FadeTransition(
//           opacity: widget.mainScreenAnimation!,
//           child: Transform(
//             transform: Matrix4.translationValues(
//                 0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
//             child: AspectRatio(
//               aspectRatio: 1.0,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 8.0, right: 8),
//                 child: GridView(
//                   padding: const EdgeInsets.only(
//                       left: 16, right: 16, top: 16, bottom: 16),
//                   physics: const BouncingScrollPhysics(),
//                   scrollDirection: Axis.vertical,
//                   children: List<Widget>.generate(
//                     areaListData.length,
//                     (int index) {
//                       final int count = areaListData.length;
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
//                         imagepath: areaListData[index],
//                         animation: animation,
//                         animationController: animationController!,
//                       );
//                     },
//                   ),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 1,
//                     mainAxisSpacing: 25,
//                     crossAxisSpacing: 10,
//                     childAspectRatio: 6 / 1,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
