import 'package:flutter/material.dart';
import 'package:productivity_app/BottomSheets/bottom_sheets.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/BottomSheets/bottom_sheet_holder.dart';
import 'package:productivity_app/widgets/Dashboard/sheet_goto_calendar.dart';
import 'package:productivity_app/widgets/Forms/form_input_unlabelled.dart';

import '../add_sub_icon.dart';

import 'filled_selectable_container.dart';
import 'in_bottomsheet_subtitle.dart';

class DashboardDoneTask extends StatelessWidget {
  TextEditingController _meetingNameController = new TextEditingController();

  DashboardDoneTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        AppSpaces.verticalSpace10,
        BottomSheetHolder(),
        AppSpaces.verticalSpace10,
        Padding(
            padding: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topLeft,
                                  end: FractionalOffset.bottomRight,
                                  colors: [
                                    HexColor.fromHex("8DCB73"),
                                    HexColor.fromHex("8DCB73"),
                                  ]))),
                      AppSpaces.horizontalSpace20,
                      Expanded(
                        child: Center(
                          child: Text(
                            "Task Added Successfully",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]))
      ]),
    );
  }
}
