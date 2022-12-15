import 'package:Edifarm/shared/Theme_App.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:get/get.dart';

class cek extends StatefulWidget {
  // const cek({super.key});

  @override
  State<cek> createState() => _cekState();
}

class _cekState extends State<cek> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(vsync: this);
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  bool isi = false;
  cek() {
    setState(() {
      isi = !isi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.centerRight,
      padding: EdgeInsets.only(bottom: 2, right: 6),
      child: Checkbox(
        value: isi,
        checkColor: AppTheme.white,
        hoverColor: AppTheme.green,
        activeColor: AppTheme.green,
        onChanged: (value) {
          cek();
        },
      ),
    );
  }
}
