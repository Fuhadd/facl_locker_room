import 'package:facl_locker_room/Helpers/colors.dart';
import 'package:flutter/material.dart';

import '../Helpers/constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double size;
  const CustomButton({
    Key? key,
    required this.title,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: lightPurple, width: 1.5)),
      child: Center(child: customTextStyle2(title, size)),
    );
  }
}
