import 'package:flutter/material.dart';

class TTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: true,
      textTheme: const TextTheme(),
      iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(foregroundColor: Colors.black)),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.black,
            iconColor: Colors.black),
      ));
}
