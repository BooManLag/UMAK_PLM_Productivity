import 'package:flutter/material.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/Buttons/primary_buttons.dart';
import 'package:productivity_app/widgets/Buttons/text_button.dart';
import 'package:productivity_app/widgets/Onboarding/toggle_option.dart';

import 'bottom_sheet_holder.dart';

class DashboardSettingsBottomSheet extends StatelessWidget {
  final ValueNotifier<bool> totalTaskNotifier;
  final ValueNotifier<bool> totalDueNotifier;
  final ValueNotifier<bool> totalCompletedNotifier;
  final ValueNotifier<bool> workingOnNotifier;
  const DashboardSettingsBottomSheet(
      {Key? key,
      required this.totalTaskNotifier,
      required this.totalDueNotifier,
      required this.totalCompletedNotifier,
      required this.workingOnNotifier})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppSpaces.verticalSpace10,
      BottomSheetHolder(),
      ToggleLabelOption(label: '    Total Task', notifierValue: totalTaskNotifier, icon: Icons.check_circle_outline),
      ToggleLabelOption(label: '    Task Due Soon', notifierValue: totalDueNotifier, icon: Icons.batch_prediction),
      ToggleLabelOption(label: '    Completed', notifierValue: totalCompletedNotifier, icon: Icons.check_circle),
      ToggleLabelOption(label: '    Working On', notifierValue: workingOnNotifier, icon: Icons.flag),
      Spacer(),
      Padding(
        padding: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 15),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          AppPrimaryButton(
            buttonHeight: 50,
            buttonWidth: 160,
            buttonText: "Save Changes",
          )
        ]),
      )
    ]);
  }
}
