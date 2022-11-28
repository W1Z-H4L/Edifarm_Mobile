import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/dashboard/models/info_data.dart';
import 'package:flutter/material.dart';

class InfoListView extends StatefulWidget {
  const InfoListView(
      {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;

  @override
  _InfoListViewState createState() => _InfoListViewState();
}

class _InfoListViewState extends State<InfoListView>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<InfoListData> infoListData = InfoListData.tabInfoList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
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
            child: Container(
              height: 330,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 0, right: 16, left: 16),
                itemCount: infoListData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final int count =
                      infoListData.length > 10 ? 10 : infoListData.length;
                  final Animation<double> animation =
                      Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animationController!,
                              curve: Interval((1 / count) * index, 1.0,
                                  curve: Curves.fastOutSlowIn)));
                  animationController?.forward();

                  return InfoView(
                    infoListData: infoListData[index],
                    animation: animation,
                    animationController: animationController!,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class InfoView extends StatelessWidget {
  const InfoView(
      {Key? key, this.infoListData, this.animationController, this.animation})
      : super(key: key);

  final InfoListData? infoListData;
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
                  100 * (1.0 - animation!.value), 0.0, 0.0),
              child: SizedBox(
                width: 450,
                child: Stack(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 32, left: 8, right: 8, bottom: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: AppTheme.grey.withOpacity(0.2),
                              offset: Offset(1.1, 1.1),
                              blurRadius: 10.0),
                        ],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topRight: Radius.circular(68.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 160, left: 16, right: 16, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              infoListData!.link,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: AppTheme.fontName,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                color: AppTheme.black,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      infoListData!.description!.join('\n'),
                                      style: TextStyle(
                                        fontFamily: AppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        letterSpacing: 0.2,
                                        color: AppTheme.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 8,
                    right: 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topRight: Radius.circular(68.0)),
                      child: Image.asset(
                        infoListData!.imagePath,
                        width: 450,
                        height: 145,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          );
        });
  }
}
