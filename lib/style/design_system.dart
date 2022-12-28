import 'package:flutter/material.dart';

//! Color Scheme
Color neutral_900 = const Color(0xff252525);
Color neutral_800 = const Color(0xff313131);
Color neutral_200 = const Color(0xffA1A1A1);
Color neutral_100 = const Color(0xffB8B8B8);
Color neutral_50 = const Color(0xffFAFAFA);

Color primary = const Color(0xff581AEA);
Color warning = const Color(0xffE85656);
//* END Color Scheme

//! Typography
TextStyle sizeDisplay = TextStyle(
    fontSize: 30, color: neutral_50, fontFamily: 'SourceSerifPro-SemiBold');
TextStyle sizeHeading = TextStyle(
    fontSize: 16,
    height: 1.5,
    color: neutral_100,
    fontFamily: 'SourceSerifPro-SemiBold');

TextStyle textLogo_1 = TextStyle(
    fontSize: 58, color: neutral_50, fontFamily: 'SourceSerifPro-Reguler');
TextStyle textLogo_2 = TextStyle(
    fontSize: 24, color: neutral_50, fontFamily: 'SourceSerifPro-Reguler');

TextStyle sizeBody_3 = TextStyle(
    fontSize: 14,
    color: neutral_200,
    fontFamily: 'FiraSans-Reguler',
    height: 1.5);

TextStyle textBTN = TextStyle(
    fontSize: 14,
    fontFamily: 'FiraSans-Medium',
    color: neutral_50,
    height: 1.5,
    decoration: TextDecoration.underline);

TextStyle label = TextStyle(
    fontSize: 16,
    fontFamily: 'FiraSans-Reguler',
    letterSpacing: .5,
    color: neutral_50);

TextStyle label2 = TextStyle(
    fontFamily: 'FiraSans-Reguler', color: neutral_50, letterSpacing: .7);
//* END Typography

EdgeInsets paddingScreen =
    const EdgeInsets.symmetric(vertical: 30, horizontal: 24);
