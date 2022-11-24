import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 80,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: subtitleColor2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(56))),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 24,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Text(
          title,
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class ButtonSetting extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const ButtonSetting({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: EdgeInsets.only(left: 45, right: 45, top: 45, bottom: 45),
      width: width,
      height: height,
      // decoration: const BoxDecoration(color: Colors.white, boxShadow: [
      //   BoxShadow(
      //     color: Colors.white,
      //     blurRadius: 5.0,
      //     offset: Offset(0, 5),
      //   ),
      //   BoxShadow(
      //     color: Colors.white,
      //     offset: Offset(1, 0),
      //   ),
      //   BoxShadow(
      //     color: Colors.white,
      //     offset: Offset(1, 0),
      //   ),
      // ]),
      // child: IconButton(
      //   icon: Icon(
      //     Icons.arrow_forward_ios_outlined,
      //     color: subtitleColor2,
      //   ),
      //   onPressed: () {
      //     setState() {}
      //   },

      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.start,
          style: blackTextStyle.copyWith(fontSize: 13, color: Colors.black),
        ),
      ),
    );
  }
}
