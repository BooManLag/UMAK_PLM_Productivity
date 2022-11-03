import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/Onboarding/labelled_option.dart';

import 'bottom_sheet_holder.dart';

class ProjectDetailBottomSheet extends StatelessWidget {
  const ProjectDetailBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpaces.verticalSpace10,
        BottomSheetHolder(),
        AppSpaces.verticalSpace10,
        ListTile(
          title: Text("TASK SETTINGS", style: GoogleFonts.lato(fontSize: 12, color: Colors.white30)),
        ),
        Expanded(
          child: ListView(
            children: [
              LabelledOption(label: 'Share Task', icon: Icons.share),
              LabelledOption(label: 'Mark all completed', icon: Icons.check_circle),
              LabelledOption(label: 'Copy', icon: Icons.tag, link: "taskez.io/6734aw"),
              LabelledOption(
                label: 'Set Color',
                icon: Icons.color_lens,
                boxColor: "FFDE72",
              ),
              LabelledOption(label: 'Delete Task', icon: FeatherIcons.trash, color: HexColor.fromHex("FC958E")),
            ],
          ),
        ),
      ],
    );
  }
}
