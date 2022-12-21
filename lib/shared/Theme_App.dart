import 'package:Edifarm/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();
  static const Color nearlyWhite = Color(0xFFFAFAFA);
  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF2F3F8);
  static const Color nearlyDarkBlue = Color(0xFF2633C5);

  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color spacer = Color(0xFFF2F2F2);
  static const Color splash = Color(0xFFBDE2E7);
  static const Color green = Color(0xFF006B6C);
  static const Color black = Color(0xFF000000);
  static const Color orange = Color(0xFFFFA722);
  static const Color camera = Color(0xFFD9E9E9);
  static const String fontName = 'Montserrat';

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );
  static const TextStyle custom = TextStyle(
    fontFamily: fontName,
    fontSize: 14,
    color: darkText,
  );
  static const TextStyle custom1 = TextStyle(
    fontFamily: fontName,
    fontSize: 15,
    color: green,
  );
  static const TextStyle custom2 = TextStyle(
    fontFamily: fontName,
    fontSize: 14,
    color: black,
  );
  static const TextStyle custom3 = TextStyle(
    fontFamily: fontName,
    fontSize: 24,
    color: black,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
}

class CalenderAppTheme {
  static TextTheme _buildTextTheme(TextTheme base) {
    const String fontName = 'WorkSans';
    return base.copyWith(
      headline1: base.headline1?.copyWith(fontFamily: fontName),
      headline2: base.headline2?.copyWith(fontFamily: fontName),
      headline3: base.headline3?.copyWith(fontFamily: fontName),
      headline4: base.headline4?.copyWith(fontFamily: fontName),
      headline5: base.headline5?.copyWith(fontFamily: fontName),
      headline6: base.headline6?.copyWith(fontFamily: fontName),
      button: base.button?.copyWith(fontFamily: fontName),
      caption: base.caption?.copyWith(fontFamily: fontName),
      bodyText1: base.bodyText1?.copyWith(fontFamily: fontName),
      bodyText2: base.bodyText2?.copyWith(fontFamily: fontName),
      subtitle1: base.subtitle1?.copyWith(fontFamily: fontName),
      subtitle2: base.subtitle2?.copyWith(fontFamily: fontName),
      overline: base.overline?.copyWith(fontFamily: fontName),
    );
  }

  static ThemeData buildLightTheme() {
    final Color primaryColor = HexColor('#BDE2E7');
    final Color secondaryColor = HexColor('#BDE2E7');
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      canvasColor: Colors.white,
      backgroundColor: const Color(0xFFFFFFFF),
      scaffoldBackgroundColor: const Color(0xFFF6F6F6),
      errorColor: const Color(0xFFB00020),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      platform: TargetPlatform.iOS,
    );
  }
}

class themeitems {
  Color whiteColor = const Color(0xFFFFFFFF);
  Color blackColor = const Color(0xFF14193F);
  Color greyColor = const Color(0xFFA4A8AE);
  Color lightBlueColor = const Color(0xFF53C1F9);
  Color blueColor = const Color(0xFF5142E6);
  Color lightBackgroundColor = const Color(0xFFF6F8FB);
  Color darkBackgroundColor = const Color(0xFF020518);
  Color greenColor = const Color(0xFF22B07D);
  Color numberBackgroundColor = const Color(0xFF1A1D2E);
  Color primaryColor = const Color(0xffBDE2E7);
  Color secondaryColor = const Color(0xff38ABBE);
  Color alertColor = const Color(0xffED6363);
  Color priceColor = const Color(0xff2C96F1);
  Color backgroundColor1 = const Color(0xff1F1D2B);
  Color backgroundColor2 = const Color(0xff2B2937);
  Color backgroundColor3 = const Color(0xff242231);
  Color primaryTextColor = const Color(0xfff1f0f2);
  Color secondaryTextColor = const Color(0xff999999);
  Color subtitleColor = const Color(0xff504F5E);
  Color subtitleColor2 = const Color(0xff006B6C);
  Color splashcolor = const Color(0xff549E9E);
}

class fonts {
  TextStyle prosesSplash = GoogleFonts.montserrat(
      color: Color(0xff006B6C), fontSize: 24, fontWeight: FontWeight.w600);
  // TextStyle blackTextStyle =
  //     GoogleFonts.montserrat(color: blackColor, fontSize: 24);
  // TextStyle blackTextStyle1 =
  //     GoogleFonts.montserrat(color: blackColor, fontSize: 20);
  // TextStyle whiteTextStyle = GoogleFonts.montserrat(
  //     color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold);
  // TextStyle whiteTextStyle3 = GoogleFonts.montserrat(
  //     color: whiteColor, fontSize: 15, fontWeight: FontWeight.bold);
  // TextStyle greyTextStyle = GoogleFonts.montserrat(
  //   color: greyColor,
  // );
  // TextStyle lightBlueTextStyle = GoogleFonts.montserrat(
  //   color: lightBlueColor,
  // );
  // TextStyle greenTextStyle =
  //     GoogleFonts.montserrat(color: greenColor, fontSize: 14);
  // TextStyle karen = GoogleFonts.montserrat(color: whiteColor, fontSize: 12);
  // TextStyle greenTextStyle2 =
  //     GoogleFonts.montserrat(color: subtitleColor2, fontSize: 24);
  // TextStyle blackTextStyle2 =
  //     GoogleFonts.montserrat(color: Colors.black, fontSize: 14);
  // TextStyle greenTextStyle3 =
  //     GoogleFonts.montserrat(color: subtitleColor2, fontSize: 15);
  // TextStyle greenTextStyle1 =
  //     GoogleFonts.montserrat(color: subtitleColor2, fontSize: 24);
  // TextStyle greenTextStyle4 = GoogleFonts.montserrat(
  //     color: subtitleColor2, fontSize: 24, fontWeight: FontWeight.w600);
  // TextStyle greenTextStyle5 = GoogleFonts.montserrat(
  //     color: subtitleColor2, fontSize: 13, fontWeight: FontWeight.w500);
  // TextStyle whiteTextStyle1 = GoogleFonts.montserrat(
  //     color: whiteColor, fontSize: 17, fontWeight: FontWeight.w500);
  // TextStyle whiteTextStyle6 = GoogleFonts.montserrat(
  //     color: whiteColor, fontSize: 24, fontWeight: FontWeight.w600);

  FontWeight light = FontWeight.w300;
  FontWeight regular = FontWeight.w400;
  FontWeight medium = FontWeight.w500;
  FontWeight semiBold = FontWeight.w600;
  FontWeight bold = FontWeight.w700;
  FontWeight extraBold = FontWeight.w800;
  FontWeight black = FontWeight.w900;
}
