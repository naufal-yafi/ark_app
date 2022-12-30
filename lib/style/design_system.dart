import 'package:flutter/material.dart';

//! Color Scheme
Color neutral_900 = const Color(0xff252525);
Color neutral_800 = const Color(0xff313131);
Color neutral_200 = const Color(0xffA1A1A1);
Color neutral_100 = const Color(0xffB8B8B8);
Color neutral_50 = const Color(0xffFAFAFA);

Color primary = const Color(0xff581AEA);
//! END Color Scheme

//! Typography
//? Display
TextStyle display1Reguler = TextStyle(
    fontSize: 58, color: neutral_50, fontFamily: 'SourceSerifPro-Reguler');
TextStyle display2SemiBold = TextStyle(
    fontSize: 30, color: neutral_50, fontFamily: 'SourceSerifPro-SemiBold');
//? END Display

//? Heading
TextStyle heading1Reguler = TextStyle(
    fontSize: 24, color: neutral_50, fontFamily: 'SourceSerifPro-Reguler');
TextStyle heading1Bold =
    TextStyle(fontSize: 24, color: neutral_50, fontFamily: 'FiraSans-Bold');
TextStyle heading2Bold = TextStyle(
    fontSize: 22, color: neutral_50, fontFamily: 'SourceSerifPro-Bold');
TextStyle heading3Bold = TextStyle(
    fontSize: 18, color: neutral_50, fontFamily: 'SourceSerifPro-Bold');
TextStyle heading3SemiBold = TextStyle(
    fontSize: 16,
    height: 1.5,
    color: neutral_100,
    fontFamily: 'SourceSerifPro-SemiBold');
//? END Heading

//? Body
TextStyle body1Reguler = TextStyle(
    fontSize: 16,
    fontFamily: 'FiraSans-Reguler',
    letterSpacing: .5,
    color: neutral_50);
TextStyle body2Reguler = TextStyle(
    fontSize: 14,
    color: neutral_200,
    fontFamily: 'FiraSans-Reguler',
    height: 1.5);
TextStyle body2RegulerShade100 = TextStyle(
    fontSize: 14,
    color: neutral_100,
    fontFamily: 'FiraSans-Reguler',
    height: 1.5);
TextStyle body2Medium = TextStyle(
    fontSize: 14,
    fontFamily: 'FiraSans-Medium',
    color: neutral_50,
    height: 1.5,
    decoration: TextDecoration.underline);
TextStyle body3Reguler = TextStyle(
    fontSize: 12,
    fontFamily: 'FiraSans-Reguler',
    color: neutral_50,
    letterSpacing: .7);
//? END Body

//? Label
TextStyle label1Reguler =
    TextStyle(fontSize: 12, color: neutral_100, fontFamily: 'FiraSans-Reguler');
TextStyle label1RegulerShade50 =
    TextStyle(fontSize: 12, color: neutral_50, fontFamily: 'FiraSans-Reguler');
TextStyle label1RegulerShade200 =
    TextStyle(fontSize: 12, color: neutral_200, fontFamily: 'FiraSans-Reguler');
TextStyle label2Reguler =
    TextStyle(fontSize: 11, color: neutral_100, fontFamily: 'FiraSans-Reguler');
//? END Label
TextStyle caption1RegulerShade50 =
    TextStyle(fontSize: 10, color: neutral_100, fontFamily: 'FiraSans-Reguler');
TextStyle caption1RegulerShade100 =
    TextStyle(fontSize: 10, color: neutral_100, fontFamily: 'FiraSans-Reguler');
//! END Typography

EdgeInsets paddingScreen =
    const EdgeInsets.symmetric(vertical: 30, horizontal: 24);
