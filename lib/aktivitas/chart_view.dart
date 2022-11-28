import 'package:Edifarm/shared/Theme_App.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class WorkoutView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const WorkoutView({Key? key, this.animationController, this.animation})
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
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 18),
              child: Container(
                decoration: BoxDecoration(
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
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      pieChart(),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: const Text(
                          'GAMBAR CHART',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: AppTheme.fontName,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            letterSpacing: 0.0,
                            color: AppTheme.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      )
                    ],
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

final dataMap = <String, double>{
  "completed": 5,
};

final colorList = <Color>[
  Color.fromARGB(255, 96, 150, 124),
  Colors.brown,
];

@override
Widget pieChart() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: PieChart(
      dataMap: dataMap,
      chartType: ChartType.ring,
      ringStrokeWidth: 32,
      baseChartColor: Color.fromARGB(255, 176, 170, 170)!.withOpacity(0.15),
      colorList: colorList,
      chartValuesOptions: ChartValuesOptions(
        showChartValuesInPercentage: true,
      ),
      totalValue: 20,
    ),
  );
}
