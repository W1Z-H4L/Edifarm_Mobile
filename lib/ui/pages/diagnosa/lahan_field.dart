import 'package:Edifarm/controler/CurentUser.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:get/get.dart';

class LahanField extends StatefulWidget {
  const LahanField({super.key});

  @override
  State<LahanField> createState() => _LahanFieldState();
}

class _LahanFieldState extends State<LahanField>
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
    return Container(
        padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
        child: TextFormField(
          enabled: false,
          showCursor: true,
          cursorHeight: 25,
          style: blackTextStyle2,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Nama Lahan',
            hintText: 'ciherang',
            hintStyle: subtitleTextStyle,
            labelStyle: greenTextStyle3,
            focusColor: subtitleColor2,
            fillColor: subtitleColor2,
          ),
        ));
  }
}
