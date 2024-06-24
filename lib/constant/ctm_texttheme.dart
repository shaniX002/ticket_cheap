import 'package:flutter/material.dart';

class TTextTheme {
  static TextStyle get heading => const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Jost',
        color: Colors.white,
      );

  static TextStyle get subheading => const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        fontFamily: 'Jost',
        color: Colors.white,
      );

  static TextStyle get body => const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'Jost',
        color: Colors.white70,
      );
  static TextStyle get body1 => const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'Jost',
        color: Colors.white,
      );
  static TextStyle get bodyblack => const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'Jost',
        color: Colors.black,
      );

  static TextStyle get bodyblackBlod => const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Jost',
        color: Colors.black,
      );

  static TextStyle get caption => const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontFamily: 'Jost',
        color: Colors.white,
      );
  static TextStyle get captionBlack => const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontFamily: 'Jost',
        color: Colors.black,
      );

  static TextStyle get captionsnall => const TextStyle(
        fontSize: 12.0,
        fontFamily: 'Jost',
        color: Colors.white,
      );
}
