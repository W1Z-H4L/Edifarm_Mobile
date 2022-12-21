import 'package:Edifarm/controler/CurentUser.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:get/get.dart';

class JenisField extends StatefulWidget {
  const JenisField({super.key});

  @override
  State<JenisField> createState() => _JenisFieldState();
}

class _JenisFieldState extends State<JenisField> {
  final CurrentUser _currentUser = Get.put(CurrentUser());

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
        child: TextFormField(
          enabled: false,
          showCursor: true,
          cursorHeight: 25,
          style: blackTextStyle2,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Jenis Padi',
            hintText: 'ciherang',
            hintStyle: subtitleTextStyle,
            labelStyle: greenTextStyle3,
            focusColor: subtitleColor2,
            fillColor: subtitleColor2,
          ),
        ));
  }
}
