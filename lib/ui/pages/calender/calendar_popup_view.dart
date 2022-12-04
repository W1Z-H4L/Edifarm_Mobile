import 'package:Edifarm/shared/Theme_App.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'custom_calendar.dart';

class CalendarPopupView extends StatefulWidget {
  const CalendarPopupView(
      {Key? key,
      this.initialStartDate,
      this.initialEndDate,
      this.onApplyClick,
      this.onCancelClick,
      this.barrierDismissible = true,
      this.animationController,
      this.animation,
      this.minimumDate,
      this.maximumDate})
      : super(key: key);

  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final bool barrierDismissible;
  final DateTime? initialStartDate;
  final DateTime? initialEndDate;
  final AnimationController? animationController;
  final Animation<double>? animation;

  final Function(DateTime, DateTime)? onApplyClick;
  final Function()? onCancelClick;

  @override
  _CalendarPopupViewState createState() => _CalendarPopupViewState();
}

class _CalendarPopupViewState extends State<CalendarPopupView>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  DateTime? startDate;
  DateTime? endDate;
  double topBarOpacity = 0.0;
  Animation<double>? topBarAnimation;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 0), vsync: this);
    if (widget.initialStartDate != null) {
      startDate = widget.initialStartDate;
    }
    if (widget.initialEndDate != null) {
      endDate = widget.initialEndDate;
    }
    animationController?.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: AppTheme.background,
        body: AnimatedBuilder(
          animation: animationController!,
          builder: (BuildContext context, Widget? child) {
            return AnimatedOpacity(
              duration: const Duration(milliseconds: 100),
              opacity: animationController!.value,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () {
                  if (widget.barrierDismissible) {
                    Navigator.pop(context);
                  }
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color:
                            CalenderAppTheme.buildLightTheme().backgroundColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: const Offset(4, 4),
                              blurRadius: 8.0),
                        ],
                      ),
                      child: InkWell(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24.0)),
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Dari',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w100,
                                            fontSize: 16,
                                            color:
                                                Colors.grey.withOpacity(0.8)),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        startDate != null
                                            ? DateFormat('EEE, dd MMM')
                                                .format(startDate!)
                                            : '--/-- ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 74,
                                  width: 1,
                                  color: CalenderAppTheme.buildLightTheme()
                                      .dividerColor,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Hingga',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w100,
                                            fontSize: 16,
                                            color:
                                                Colors.grey.withOpacity(0.8)),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        endDate != null
                                            ? DateFormat('EEE, dd MMM')
                                                .format(endDate!)
                                            : '--/-- ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Divider(
                              height: 1,
                            ),
                            CustomCalendarView(
                              minimumDate: widget.minimumDate,
                              maximumDate: widget.maximumDate,
                              initialEndDate: widget.initialEndDate,
                              initialStartDate: widget.initialStartDate,
                              startEndDateChange: (DateTime startDateData,
                                  DateTime endDateData) {
                                setState(() {
                                  startDate = startDateData;
                                  endDate = endDateData;
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 16, top: 8),
                              child: Container(
                                height: 48,
                                decoration: BoxDecoration(
                                  color: CalenderAppTheme.buildLightTheme()
                                      .primaryColor,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(24.0)),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.6),
                                      blurRadius: 8,
                                      offset: const Offset(4, 4),
                                    ),
                                  ],
                                ),
                                child: Material(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      bottomLeft: Radius.circular(24),
                                      bottomRight: Radius.circular(24),
                                      topRight: Radius.circular(24)),
                                  color: AppTheme.green,
                                  child: InkWell(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        bottomLeft: Radius.circular(24),
                                        bottomRight: Radius.circular(24),
                                        topRight: Radius.circular(24)),
                                    highlightColor: AppTheme.splash,
                                    onTap: () {
                                      try {
                                        // animationController.reverse().then((f) {

                                        // });
                                        widget.onApplyClick!(
                                            startDate!, endDate!);
                                        Navigator.pop(context);
                                      } catch (_) {}
                                    },
                                    child: Center(
                                      child: InkWell(
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: AppTheme.green,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Text(
                                            'Cari',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontFamily: AppTheme.fontName,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return Container(
                                                  padding: EdgeInsets.only(
                                                      top: 50, bottom: 50),
                                                  height: 150,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: AlertDialog(
                                                    title: Text(
                                                      "Apakah Anda Ingin Melihat Aktivitas Ditanggal $startDate hingga tanggal $endDate ?  ",
                                                      selectionColor:
                                                          Colors.white,
                                                      style: TextStyle(
                                                          color: AppTheme.black,
                                                          fontFamily:
                                                              AppTheme.fontName,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    actions: [
                                                      Container(
                                                        height: 30,
                                                        width: 60,
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                AppTheme.orange,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: const Text(
                                                              "Tidak",
                                                              style: TextStyle(
                                                                  color: AppTheme
                                                                      .white,
                                                                  fontFamily:
                                                                      AppTheme
                                                                          .fontName,
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            )),
                                                      ),
                                                      Container(
                                                        height: 30,
                                                        width: 60,
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors
                                                                    .orange),
                                                            color:
                                                                AppTheme.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: TextButton(
                                                            onPressed: () {
                                                              Navigator
                                                                  .pushNamed(
                                                                      context,
                                                                      '/act');
                                                            },
                                                            child: const Text(
                                                              "Ya",
                                                              style: TextStyle(
                                                                  color: AppTheme
                                                                      .orange,
                                                                  fontFamily:
                                                                      AppTheme
                                                                          .fontName,
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
