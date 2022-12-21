import 'package:Edifarm/controler/CurentUser.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TanggalField extends StatefulWidget {
  TextEditingController? controller;

  bool isEnable;
  bool isreadOnly;

  TanggalField({
    this.controller,
    this.isEnable = true,
    this.isreadOnly = true,
  });

  @override
  State<TanggalField> createState() => _TanggalFieldState();
}

class _TanggalFieldState extends State<TanggalField>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final CurrentUser _currentUser = Get.put(CurrentUser());
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 32, left: 32, top: 32, bottom: 16),
        child: Column(children: [
          TextFormField(
            controller: widget.controller,
            readOnly: widget.isreadOnly,
            style: blackTextStyle2,
            onSaved: (val) => TextEditingController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Tanggal Kematian';
              }
              return null;
            },
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1700),
                  lastDate: DateTime(2100));
              if (pickedDate != null) {
                String formattedDate =
                    DateFormat('yyyy-M-dd').format(pickedDate);
                setState(() {
                  widget.controller?.text = formattedDate.toString();
                });
              } else {
                print("Not Selected");
              }
            },
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.calendar_today),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Tanggal Melapor',
              hintText: 'Masukan Tanggal lapor',
              hintStyle: subtitleTextStyle,
              labelStyle: greenTextStyle3,
              focusColor: subtitleColor2,
              fillColor: subtitleColor2,
            ),
            // decoration: InputDecoration(
            //   prefixIcon: Icon(Icons.calendar_today),
            //   enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(15),
            //       borderSide: BorderSide(width: 1, color: AppTheme.green)),
            //   filled: false,
            //   fillColor: const Color.fromARGB(179, 234, 234, 234),
            //   focusedBorder: OutlineInputBorder(
            //     borderSide: BorderSide(width: 1, color: AppTheme.green),
            //     borderRadius: BorderRadius.circular(15),
            //   ),
            //   hintText: "Tanggal Melapor",
            //   hintStyle: subtitleTextStyle,
            // ),
          ),
        ]));
    // return Container(
    //     padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
    //     child: TextFormField(
    //       enabled: false,
    //       showCursor: true,
    //       cursorHeight: 25,
    //       style: blackTextStyle2,
    //       decoration: InputDecoration(
    //         floatingLabelBehavior: FloatingLabelBehavior.always,
    //         labelText: 'Tanggal',
    //         hintText: '1',
    //         hintStyle: subtitleTextStyle,
    //         labelStyle: greenTextStyle3,
    //         focusColor: subtitleColor2,
    //         fillColor: subtitleColor2,
    //       ),
    //     ));
  }
}
