import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity_app/widgets/Shapes/background_hexagon.dart';
import 'dart:math' as math;

class SliderCaptionedImage extends StatelessWidget {
  final int index;
  final String caption;
  final String imageUrl;
  const SliderCaptionedImage(
      {Key? key,
      required this.index,
      required this.caption,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
          child: Image(
              image: AssetImage(this.imageUrl),
              fit: BoxFit.contain,
              height: 450)),
      index == 0
          ? Positioned(
              bottom: 70,
              right: 50,
              child: Transform.scale(
                scale: 0.3,
                child: Transform.rotate(
                    angle: -math.pi / 2,
                    child: CustomPaint(painter: BackgroundHexagon())),
              ))
          : SizedBox()
    ]);
  }
}
