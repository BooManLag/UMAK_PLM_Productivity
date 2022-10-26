import 'package:flutter/material.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/Dashboard/daily_goal_card.dart';
import 'package:productivity_app/widgets/Dashboard/productivity_chart.dart';

class DashboardProductivity extends StatelessWidget {
  const DashboardProductivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DailyGoalCard(),
        AppSpaces.verticalSpace20,
        ProductivityChart()
      ],
    );
  }
}
