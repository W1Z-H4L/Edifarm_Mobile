import 'package:Edifarm/shared/Theme_App.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

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
