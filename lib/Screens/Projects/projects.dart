import 'package:flutter/material.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:productivity_app/widgets/Navigation/app_header.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppSpaces.verticalSpace20,
            ]),
          ))
    ]));
  }
}
