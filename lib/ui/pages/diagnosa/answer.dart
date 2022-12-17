import 'package:Edifarm/shared/Theme_App.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class Answer extends StatefulWidget {
  const Answer({super.key});

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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

  bool ans = false;
  answer() {
    setState(() {
      ans = !ans;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // alignment: Alignment.centerRight,
        padding: EdgeInsets.only(bottom: 2, right: 6),
        child: Checkbox(
          hoverColor: AppTheme.green,
          activeColor: AppTheme.green,
          checkColor: AppTheme.white,
          value: ans,
          onChanged: (value) {
            answer();
          },
        ));
  }
}
