import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:productivity_app/Screens/Dashboard/timeline.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/Buttons/primary_progress_button.dart';
import 'package:productivity_app/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:productivity_app/widgets/Navigation/default_back.dart';
import 'package:productivity_app/widgets/Onboarding/plan_card.dart';
import 'package:productivity_app/widgets/Onboarding/toggle_option.dart';

class ChoosePlan extends StatelessWidget {
  ChoosePlan({Key? key}) : super(key: key);

  ValueNotifier<bool> _multiUserTrigger = ValueNotifier(false);
  ValueNotifier<bool> _customLabelTrigger = ValueNotifier(false);
  ValueNotifier<int> _planContainerTrigger = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Column(children: [
        SizedBox(height: 40),

        AppSpaces.verticalSpace20,
        Expanded(
            flex: 1,
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecorationStyles.fadingGlory,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SingleChildScrollView(
                    child: DecoratedBox(
                        decoration: BoxDecorationStyles.fadingInnerDecor,
                        child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppSpaces.verticalSpace10,
                                Text('Choose Plan', style: AppTextStyles.header2),
                                AppSpaces.verticalSpace10,
                                Text('Unlock all features with Premium Plan',
                                    style: GoogleFonts.lato(fontSize: 14, color: HexColor.fromHex("666A7A"))),
                                AppSpaces.verticalSpace20,
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                  PlanCard(
                                    notifierValue: _planContainerTrigger,
                                    selectedIndex: 0,
                                    header: "It's Free",
                                    subHeader: "Accountability\n partners\n from 1 - 3",
                                  ),
                                  AppSpaces.horizontalSpace20,
                                  PlanCard(
                                      notifierValue: _planContainerTrigger,
                                      selectedIndex: 1,
                                      header: "Premium",
                                      subHeader: "250 Pesos/mo")
                                ]),
                                AppSpaces.verticalSpace20,
                                Text('Enable Features', style: AppTextStyles.header2),
                                AppSpaces.verticalSpace10,
                                Container(
                                  width: Utils.screenWidth * 0.8,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text:
                                                'You can customize the features in your workspace now. Or you can do it later in ',
                                            style: GoogleFonts.lato(fontSize: 14, color: HexColor.fromHex("666A7A")),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Menu - Workspace', style: TextStyle(color: Colors.white))
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                ToggleLabelOption(
                                    label: '    Multiple Assignees',
                                    notifierValue: _multiUserTrigger,
                                    icon: Icons.groups),
                              ],
                            ))),
                  ),
                )))
      ]),
      Positioned(
          bottom: 40,
          child: Container(
            padding: EdgeInsets.only(left: 40, right: 20),
            width: Utils.screenWidth,
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              PrimaryProgressButton(
                  width: 120,
                  label: "Done",
                  callback: () {
                    Get.to(() => Timeline());
                  })
            ]),
          ))
    ]));
  }
}
