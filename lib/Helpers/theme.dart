import 'package:facl_locker_room/Helpers/colors.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      backgroundColor: background,
      secondaryHeaderColor: Colors.deepPurple,
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 36,
        ),
        headline2: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        headline3: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        headline4: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),
        headline5: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        headline6: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.yellow)
          .copyWith(secondary: const Color(0xfff4a50C)));
}
