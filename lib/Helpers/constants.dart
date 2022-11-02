import 'package:facl_locker_room/Helpers/colors.dart';
import 'package:flutter/material.dart';

Widget horizontalSpacer(double width) {
  return SizedBox(
    width: width,
  );
}

Widget verticalSpacer(double height) {
  return SizedBox(
    height: height,
  );
}

Widget customTextStyle(String title, double size) {
  return Text(
    title,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontWeight: FontWeight.normal, fontSize: size, color: Colors.white),
  );
}

Widget customTextStyle2(String title, double size) {
  return Text(
    title,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontWeight: FontWeight.normal, fontSize: size, color: lightPurple),
  );
}

String mainText = 'Welcome to FACL locker room.';
String subText =
    'Here you can save as much as you want for the raining days ahead.';
