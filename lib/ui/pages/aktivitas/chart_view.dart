import 'dart:convert';

import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/controler/CurentUser.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/aktivitas/count_iri.dart';
import 'package:Edifarm/ui/pages/aktivitas/count_lain.dart';
import 'package:Edifarm/ui/pages/aktivitas/count_pem.dart';
import 'package:Edifarm/ui/pages/aktivitas/count_pess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:http/http.dart' as http;

class ChartView extends StatefulWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const ChartView({Key? key, this.animationController, this.animation})
      : super(key: key);

  @override
  State<ChartView> createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    getCount().then((result) {
      setState(() {
        count = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.animationController!,
        builder: (BuildContext context, Widget? child) {
          return FadeTransition(
              opacity: widget.animation!,
              child: Transform(
                  transform: Matrix4.translationValues(
                      0.0, 30 * (1.0 - widget.animation!.value), 0.0),
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 16, bottom: 18),
                      child: Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 255, 255),
                                Color.fromARGB(255, 255, 255, 255)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
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
                          child: Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Row(children: [
                              Column(children: [
                                SizedBox(
                                  height: 5,
                                ),
                                CountActI(),
                                SizedBox(
                                  height: 5,
                                ),
                                CountActP(),
                                SizedBox(
                                  height: 5,
                                ),
                                CountActPP(),
                                SizedBox(
                                  height: 5,
                                ),
                                CountActL(),
                              ]),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 120,
                                height: 120,
                                child: Image.asset("assets/farmer.png"),
                              ),
                            ]),
                          ),
                        ),
                      ))));
        });
  }

  final dataMap = <String, double>{
    "completed": 1,
  };

  final colorList = <Color>[
    AppTheme.green,
    AppTheme.splash,
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
        baseChartColor: AppTheme.splash,
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

  final CurrentUser _currentUser = Get.put(CurrentUser());
  Future<int> getCount() async {
    var response = await http.post(Uri.parse(ApiConnect.chart),
        body: {"id_user": _currentUser.user.idUser.toString()});

    if (response.statusCode == 200) {
      // Decode the JSON response
      var count = json.decode(response.body);

      // Return the count
      return count['COUNT(*)'];
    } else {
      throw Exception('Failed to load count');
    }
  }
}

// final dataMap = <String, double>{
//   "completed": 5,
// };

// final colorList = <Color>[
//   AppTheme.green,
//   AppTheme.splash,
// ];

// @override
// Widget pieChartView() {
//   return Container(
//     child: PieChart(
//       dataMap: dataMap,
//       chartType: ChartType.ring,
//       chartLegendSpacing: 100,
//       chartRadius: 75,
//       ringStrokeWidth: 20,
//       baseChartColor: AppTheme.splash,
//       colorList: colorList,
//       chartValuesOptions: const ChartValuesOptions(
//           showChartValuesInPercentage: true,
//           showChartValueBackground: false,
//           chartValueBackgroundColor: AppTheme.background,
//           showChartValuesOutside: true,
//           showChartValues: true),
//       totalValue: 20,
//     ),
//   );
// }

// final CurrentUser _currentUser = Get.put(CurrentUser());
// Future<int> getCount() async {
//   var response = await http.post(Uri.parse(ApiConnect.chart),
//       body: {"id_user": _currentUser.user.idUser.toString()});

//   if (response.statusCode == 200) {
//     // Decode the JSON response
//     final count = json.decode(response.body);

//     // Return the count
//     return count['COUNT(*)'];
//   } else {
//     throw Exception('Failed to load count');
//   }
// }