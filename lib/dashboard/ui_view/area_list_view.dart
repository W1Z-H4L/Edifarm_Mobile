import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

import '../fitness_app_theme.dart';

class AreaListView extends StatefulWidget {
  const AreaListView(
      {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;
  @override
  _AreaListViewState createState() => _AreaListViewState();
}

class _AreaListViewState extends State<AreaListView>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<String> areaListData = <String>[];

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
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
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) => Container(
                    child: DottedBorder(
                          strokeWidth: 1,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(25)),

                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    // child: Container(
                    //   width: MediaQuery.of(context).size.width,
                    //   padding: EdgeInsets.symmetric(horizontal: 10.0),
                      
                      // child: Container(
                      //
                      // ),
                    ),
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
    this.imagepath,
    this.animationController,
    this.animation,
  }) : super(key: key);

  final String? imagepath;
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
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    // splashColor:
                    //     FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, left: 16, right: 16),
                          child: Text('v' + imagepath!),
                        ),
                      ],
                    ),
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
