import 'package:facl_locker_room/Helpers/colors.dart';
import 'package:facl_locker_room/Helpers/constants.dart';
import 'package:flutter/material.dart';

import '../Widgets/homepage_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color colour = purple;
  double version = 1.0;
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: screenHeight / 1.7,
                width: double.infinity,
                color: colour,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 235,
                        width: 235,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(217, 217, 217, 1)),
                        child: const Image(
                            image: AssetImage('assets/images/Safe-3.png')),
                      ),
                      verticalSpacer(30),
                      customTextStyle(mainText, 18),
                      verticalSpacer(12),
                      customTextStyle(subText, 14),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -17,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    height: 34,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: const Color(0xFF763077),
                    ),
                    child:
                        Center(child: customTextStyle('Version $version', 14)),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (() {
                      colour = green;
                      String temp = (version + 0.1).toStringAsFixed(1);
                      version = double.parse(temp);

                      setState(() {});
                      ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(SnackBar(
                          content: const Text(
                              'New background color has been updated to green'),
                          backgroundColor: green,
                        ));
                    }),
                    child: const CustomButton(
                      title: 'Get Started',
                      size: 18,
                    ),
                  ),
                  verticalSpacer(30),
                  GestureDetector(
                    onTap: (() {
                      colour = purple;
                      String temp = (version - 0.1).toStringAsFixed(1);
                      version = double.parse(temp);

                      setState(() {});
                      ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(SnackBar(
                          content: const Text(
                              'New background color has been updated to purple'),
                          backgroundColor: purple,
                        ));
                    }),
                    child: const CustomButton(
                      title: 'I already have an account',
                      size: 16,
                    ),
                  ),
                  verticalSpacer(60),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
