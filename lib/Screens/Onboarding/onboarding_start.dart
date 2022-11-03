import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity_app/Screens/Onboarding/onboarding_carousel.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:productivity_app/widgets/Onboarding/background_image.dart';
import 'package:productivity_app/widgets/Onboarding/bubble.dart';
import 'package:productivity_app/widgets/Onboarding/loading_stickers.dart';
import 'dart:math' as math;

import 'package:productivity_app/widgets/Shapes/background_hexagon.dart';

class OnboardingStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex("#D1D5FA"),
      body: Stack(children: [
        Center(
          child: Image.asset("assets/pic1.png"),
        ),
        Positioned(
          top: Utils.screenHeight * 1.25,
          left: Utils.screenWidth * 0.39,
          child: Text(
            "studybud",
            style: TextStyle(
                color: HexColor.fromHex("#5C6898"),
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
        ),
        Positioned(
            top: Utils.screenHeight * 1.3,
            left: Utils.screenWidth * 0.83,
            child: Transform.rotate(
              angle: -math.pi / 4,
              child: InkWell(
                onTap: () {
                  Get.to(() => OnboardingCarousel());
                },
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: HexColor.fromHex("5C6898")),
                    child: Transform.rotate(
                      angle: math.pi / 4,
                      child: Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 80, left: 20),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 40,
                            color: Colors.white,
                          )),
                    )),
              ),
            )),
      ]),
    );
  }
}
