import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/Buttons/primary_progress_button.dart';
import 'package:productivity_app/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:productivity_app/widgets/Navigation/default_back.dart';
import 'package:productivity_app/widgets/Onboarding/plan_card_habit.dart';
import 'package:productivity_app/widgets/Onboarding/toggle_option.dart';
import 'package:flutter/cupertino.dart';
import 'choose_plan.dart';

class NewWorkSpace extends StatelessWidget {
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
        SizedBox(height: 100),
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
                                Text('How do you prefer to study?',
                                    style: AppTextStyles.header2),
                                AppSpaces.verticalSpace10,
                                Text('Choose one and start studying',
                                    style: GoogleFonts.lato(
                                        fontSize: 14,
                                        color: HexColor.fromHex("666A7A"))),
                                AppSpaces.verticalSpace20,
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      PlanCardHabit(
                                        notifierValue: _planContainerTrigger,
                                        selectedIndex: 0,
                                        header: "By Myself",
                                        subHeader: "Study by yourself",
                                      ),
                                      AppSpaces.horizontalSpace20,
                                      PlanCardHabit(
                                          notifierValue: _planContainerTrigger,
                                          selectedIndex: 1,
                                          header: "StudyBud",
                                          subHeader: "Collab with people")
                                    ]),
                                AppSpaces.verticalSpace20,
                                AppSpaces.verticalSpace20,
                              ],
                            ))),
                  ),
                )))
      ]),
      Positioned(
          bottom: 50,
          child: Container(
            padding: EdgeInsets.only(left: 40, right: 20),
            width: Utils.screenWidth,
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              PrimaryProgressButton(
                  width: 120,
                  label: "Done",
                  callback: () {
                    Get.to(() => ChoosePlan());
                  })
            ]),
          ))
    ]));
  }
}
